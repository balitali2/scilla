(*
  This file is part of scilla.

  Copyright (c) 2018 - present Zilliqa Research Pvt. Ltd.
  
  scilla is free software: you can redistribute it and/or modify it under the
  terms of the GNU General Public License as published by the Free Software
  Foundation, either version 3 of the License, or (at your option) any later
  version.
 
  scilla is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
  A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 
  You should have received a copy of the GNU General Public License along with
  scilla.  If not, see <http://www.gnu.org/licenses/>.
*)

open Core
open Printf
open Syntax
open ParserUtil
open TypeUtil
open Recursion
open RunnerUtil
open DebugMessage
open MonadUtil
open Result.Let_syntax
open PatternChecker

(* Check that the expression parses *)
let check_parsing filename = 
    let parse_module =
      FrontEndParser.parse_file ScillaParser.exps filename in
    match parse_module with
    | None -> fail (sprintf "%s\n" "Failed to parse input file.")
    | Some e ->
        plog @@ sprintf
          "\n[Parsing]:\nExpression in [%s] is successfully parsed.\n" filename;
        pure e

(* Type check the expression with external libraries *)
let check_typing e elibs =
  let open TypeChecker.ScillaTypechecker in
  let open TypeChecker.ScillaTypechecker.TypeEnv in
  let%bind _ = type_recursion_principles in
  let recs = List.map recursion_principles
      ~f:(fun ({lname = a; _}, c) -> (a, c)) in
  let tenv0 = TEnv.addTs TEnv.mk recs in
  (* Step 1: Type check external libraries *)
  (* TODO: Cache this information unless its version changed! *)
  let%bind (_, tenv1) = MonadUtil.foldM elibs ~init:([], tenv0)
      ~f:(fun (lib_acc, env_acc) elib ->
          let%bind (lib, new_env) = type_library env_acc elib in
        pure @@ (lib_acc @ [lib], new_env)) in
  let%bind typed_e = type_expr tenv1 e in
  pure @@ typed_e

module PM_SR = TypeChecker.ScillaTypechecker.STR
module PM_ER = TypeChecker.ScillaTypechecker.ETR
module PM_Checker = ScillaPatternchecker (PM_SR) (PM_ER)

let check_patterns e = PM_Checker.pm_check_expr e
    
let () =
  if (Array.length Sys.argv) < 2
  then
    (perr (sprintf "Usage: %s foo.scilla\n" Sys.argv.(0))
    )
  else (
    let open GlobalConfig in
    set_debug_level Debug_None;
    let filename = Sys.argv.(1) in
    match FrontEndParser.parse_file ScillaParser.exps filename with
    | Some [e] ->
        (* This is an auxiliary executable, it's second argument must
         * have a list of stdlib dirs, so note that down. *)
        add_cmd_stdlib();
        (* Get list of stdlib dirs. *)
        let lib_dirs = StdlibTracker.get_stdlib_dirs() in
        if lib_dirs = [] then stdlib_not_found_err ();
        (* Import whatever libs we want. *)
        let std_lib = import_libs [] in
        (match check_typing e std_lib with
         | Ok ((_, (e_typ, _)) as typed_erep) ->
             (match check_patterns typed_erep with
              | Ok _ -> printf "%s\n" (pp_typ e_typ.tp)
              | Error s -> printf "Type checking failed:\n%s\n" s
             )
         | Error s -> printf "Type checking failed:\n%s\n" s)
    | Some _ | None ->
        printf "%s\n" "Failed to parse input file.")
