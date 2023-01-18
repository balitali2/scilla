  $ scilla-fmt --json --deannot zil-game.scilla
  {"smver":0,"libs":{"lname":["Ident",["SimpleLocal","ZilGame"],null],"lentries":[["LibVar",["Ident",["SimpleLocal","one_msg"],null],null,[["Fun",["Ident",["SimpleLocal","msg"],null],["PrimType",["Msg_typ"]],[["Let",["Ident",["SimpleLocal","nil_msg"],null],null,[["Constr",["Ident",["SimpleLocal","Nil"],null],[["PrimType",["Msg_typ"]]],[]],null],[["Constr",["Ident",["SimpleLocal","Cons"],null],[["PrimType",["Msg_typ"]]],[["Ident",["SimpleLocal","msg"],null],["Ident",["SimpleLocal","nil_msg"],null]]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","no_msg"],null],null,[["Constr",["Ident",["SimpleLocal","Nil"],null],[["PrimType",["Msg_typ"]]],[]],null]],["LibVar",["Ident",["SimpleLocal","hash_dist"],null],null,[["Fun",["Ident",["SimpleLocal","h0"],null],["PrimType",["Bystrx_typ",32]],[["Fun",["Ident",["SimpleLocal","h1"],null],["PrimType",["Bystrx_typ",32]],[["Let",["Ident",["SimpleLocal","h00"],null],null,[["Builtin",[["Builtin_to_uint256"],null],[],[["Ident",["SimpleLocal","h0"],null]]],null],[["Let",["Ident",["SimpleLocal","h11"],null],null,[["Builtin",[["Builtin_to_uint256"],null],[],[["Ident",["SimpleLocal","h1"],null]]],null],[["Let",["Ident",["SimpleLocal","lt"],null],null,[["Builtin",[["Builtin_lt"],null],[],[["Ident",["SimpleLocal","h00"],null],["Ident",["SimpleLocal","h11"],null]]],null],[["MatchExpr",["Ident",["SimpleLocal","lt"],null],[[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[["Builtin",[["Builtin_sub"],null],[],[["Ident",["SimpleLocal","h00"],null],["Ident",["SimpleLocal","h11"],null]]],null]],[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[["Builtin",[["Builtin_sub"],null],[],[["Ident",["SimpleLocal","h11"],null],["Ident",["SimpleLocal","h00"],null]]],null]]]],null]],null]],null]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","update_hash"],null],null,[["Fun",["Ident",["SimpleLocal","oh"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],[["Fun",["Ident",["SimpleLocal","h"],null],["PrimType",["Bystrx_typ",32]],[["MatchExpr",["Ident",["SimpleLocal","oh"],null],[[["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","x"],null]]]],[["Constr",["Ident",["SimpleLocal","Some"],null],[["PrimType",["Bystrx_typ",32]]],[["Ident",["SimpleLocal","x"],null]]],null]],[["Constructor",["Ident",["SimpleLocal","None"],null],[]],[["Constr",["Ident",["SimpleLocal","Some"],null],[["PrimType",["Bystrx_typ",32]]],[["Ident",["SimpleLocal","h"],null]]],null]]]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","update_timer"],null],null,[["Fun",["Ident",["SimpleLocal","tm"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bnum_typ"]]]],[["Fun",["Ident",["SimpleLocal","b"],null],["PrimType",["Bnum_typ"]],[["MatchExpr",["Ident",["SimpleLocal","tm"],null],[[["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","x"],null]]]],[["Constr",["Ident",["SimpleLocal","Some"],null],[["PrimType",["Bnum_typ"]]],[["Ident",["SimpleLocal","x"],null]]],null]],[["Constructor",["Ident",["SimpleLocal","None"],null],[]],[["Let",["Ident",["SimpleLocal","window"],null],null,[["Literal","11"],null],[["Let",["Ident",["SimpleLocal","b1"],null],null,[["Builtin",[["Builtin_badd"],null],[],[["Ident",["SimpleLocal","b"],null],["Ident",["SimpleLocal","window"],null]]],null],[["Constr",["Ident",["SimpleLocal","Some"],null],[["PrimType",["Bnum_typ"]]],[["Ident",["SimpleLocal","b1"],null]]],null]],null]],null]]]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","can_play"],null],null,[["Fun",["Ident",["SimpleLocal","tm"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bnum_typ"]]]],[["Fun",["Ident",["SimpleLocal","b"],null],["PrimType",["Bnum_typ"]],[["MatchExpr",["Ident",["SimpleLocal","tm"],null],[[["Constructor",["Ident",["SimpleLocal","None"],null],[]],[["Constr",["Ident",["SimpleLocal","True"],null],[],[]],null]],[["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","b1"],null]]]],[["Builtin",[["Builtin_blt"],null],[],[["Ident",["SimpleLocal","b"],null],["Ident",["SimpleLocal","b1"],null]]],null]]]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","time_to_claim"],null],null,[["Fun",["Ident",["SimpleLocal","tm"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bnum_typ"]]]],[["Fun",["Ident",["SimpleLocal","b"],null],["PrimType",["Bnum_typ"]],[["MatchExpr",["Ident",["SimpleLocal","tm"],null],[[["Constructor",["Ident",["SimpleLocal","None"],null],[]],[["Constr",["Ident",["SimpleLocal","False"],null],[],[]],null]],[["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","b1"],null]]]],[["Let",["Ident",["SimpleLocal","c1"],null],null,[["Builtin",[["Builtin_blt"],null],[],[["Ident",["SimpleLocal","b"],null],["Ident",["SimpleLocal","b1"],null]]],null],[["App",["Ident",["SimpleLocal","negb"],null],[["Ident",["SimpleLocal","c1"],null]]],null]],null]]]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","check_validity"],null],null,[["Fun",["Ident",["SimpleLocal","a"],null],["PrimType",["Bystrx_typ",20]],[["Fun",["Ident",["SimpleLocal","solution"],null],["PrimType",["Int_typ",["Bits128"]]],[["Fun",["Ident",["SimpleLocal","pa"],null],["PrimType",["Bystrx_typ",20]],[["Fun",["Ident",["SimpleLocal","pb"],null],["PrimType",["Bystrx_typ",20]],[["Fun",["Ident",["SimpleLocal","guess_a"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],[["Fun",["Ident",["SimpleLocal","guess_b"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],[["Let",["Ident",["SimpleLocal","ca"],null],null,[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","pa"],null],["Ident",["SimpleLocal","a"],null]]],null],[["Let",["Ident",["SimpleLocal","cb"],null],null,[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","pb"],null],["Ident",["SimpleLocal","a"],null]]],null],[["Let",["Ident",["SimpleLocal","xa"],null],null,[["Constr",["Ident",["SimpleLocal","Pair"],null],[["ADT",["Ident",["SimpleLocal","Bool"],{"fname":"","lnum":0,"cnum":0}],[]],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]]],[["Ident",["SimpleLocal","ca"],null],["Ident",["SimpleLocal","guess_a"],null]]],null],[["Let",["Ident",["SimpleLocal","xb"],null],null,[["Constr",["Ident",["SimpleLocal","Pair"],null],[["ADT",["Ident",["SimpleLocal","Bool"],{"fname":"","lnum":0,"cnum":0}],[]],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]]],[["Ident",["SimpleLocal","cb"],null],["Ident",["SimpleLocal","guess_b"],null]]],null],[["MatchExpr",["Ident",["SimpleLocal","xa"],null],[[["Constructor",["Ident",["SimpleLocal","Pair"],null],[["Constructor",["Ident",["SimpleLocal","True"],null],[]],["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","g"],null]]]]]],[["Let",["Ident",["SimpleLocal","h"],null],null,[["Builtin",[["Builtin_sha256hash"],null],[],[["Ident",["SimpleLocal","solution"],null]]],null],[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","h"],null],["Ident",["SimpleLocal","g"],null]]],null]],null]],[["Wildcard"],[["MatchExpr",["Ident",["SimpleLocal","xb"],null],[[["Constructor",["Ident",["SimpleLocal","Pair"],null],[["Constructor",["Ident",["SimpleLocal","True"],null],[]],["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","g"],null]]]]]],[["Let",["Ident",["SimpleLocal","h"],null],null,[["Builtin",[["Builtin_sha256hash"],null],[],[["Ident",["SimpleLocal","solution"],null]]],null],[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","h"],null],["Ident",["SimpleLocal","g"],null]]],null]],null]],[["Wildcard"],[["Constr",["Ident",["SimpleLocal","False"],null],[],[]],null]]]],null]]]],null]],null]],null]],null]],null]],null]],null]],null]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","can_withdraw"],null],null,[["Fun",["Ident",["SimpleLocal","tm"],null],["PrimType",["Bnum_typ"]],[["Fun",["Ident",["SimpleLocal","b"],null],["PrimType",["Bnum_typ"]],[["Let",["Ident",["SimpleLocal","window"],null],null,[["Literal","30"],null],[["Let",["Ident",["SimpleLocal","deadline"],null],null,[["Builtin",[["Builtin_badd"],null],[],[["Ident",["SimpleLocal","tm"],null],["Ident",["SimpleLocal","window"],null]]],null],[["Builtin",[["Builtin_blt"],null],[],[["Ident",["SimpleLocal","deadline"],null],["Ident",["SimpleLocal","b"],null]]],null]],null]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","determine_winner"],null],null,[["Fun",["Ident",["SimpleLocal","puzzle"],null],["PrimType",["Bystrx_typ",32]],[["Fun",["Ident",["SimpleLocal","guess_a"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],[["Fun",["Ident",["SimpleLocal","guess_b"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],[["Fun",["Ident",["SimpleLocal","pa"],null],["PrimType",["Bystrx_typ",20]],[["Fun",["Ident",["SimpleLocal","pb"],null],["PrimType",["Bystrx_typ",20]],[["Fun",["Ident",["SimpleLocal","oa"],null],["PrimType",["Bystrx_typ",20]],[["Let",["Ident",["SimpleLocal","gab"],null],null,[["Constr",["Ident",["SimpleLocal","Pair"],null],[["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]]],[["Ident",["SimpleLocal","guess_a"],null],["Ident",["SimpleLocal","guess_b"],null]]],null],[["MatchExpr",["Ident",["SimpleLocal","gab"],null],[[["Constructor",["Ident",["SimpleLocal","Pair"],null],[["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","ga"],null]]]],["Constructor",["Ident",["SimpleLocal","Some"],null],[["Binder",["Ident",["SimpleLocal","gb"],null]]]]]],[["Let",["Ident",["SimpleLocal","d1"],null],null,[["App",["Ident",["SimpleLocal","hash_dist"],null],[["Ident",["SimpleLocal","puzzle"],null],["Ident",["SimpleLocal","ga"],null]]],null],[["Let",["Ident",["SimpleLocal","d2"],null],null,[["App",["Ident",["SimpleLocal","hash_dist"],null],[["Ident",["SimpleLocal","puzzle"],null],["Ident",["SimpleLocal","gb"],null]]],null],[["Let",["Ident",["SimpleLocal","c1"],null],null,[["Builtin",[["Builtin_lt"],null],[],[["Ident",["SimpleLocal","d1"],null],["Ident",["SimpleLocal","d2"],null]]],null],[["MatchExpr",["Ident",["SimpleLocal","c1"],null],[[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[["Var",["Ident",["SimpleLocal","pa"],null]],null]],[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[["Let",["Ident",["SimpleLocal","c2"],null],null,[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","d1"],null],["Ident",["SimpleLocal","d2"],null]]],null],[["MatchExpr",["Ident",["SimpleLocal","c2"],null],[[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[["Var",["Ident",["SimpleLocal","pb"],null]],null]],[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[["Var",["Ident",["SimpleLocal","oa"],null]],null]]]],null]],null]]]],null]],null]],null]],null]],[["Constructor",["Ident",["SimpleLocal","Pair"],null],[["Constructor",["Ident",["SimpleLocal","Some"],null],[["Wildcard"]]],["Constructor",["Ident",["SimpleLocal","None"],null],[]]]],[["Var",["Ident",["SimpleLocal","pa"],null]],null]],[["Constructor",["Ident",["SimpleLocal","Pair"],null],[["Constructor",["Ident",["SimpleLocal","None"],null],[]],["Constructor",["Ident",["SimpleLocal","Some"],null],[["Wildcard"]]]]],[["Var",["Ident",["SimpleLocal","pb"],null]],null]],[["Constructor",["Ident",["SimpleLocal","Pair"],null],[["Constructor",["Ident",["SimpleLocal","None"],null],[]],["Constructor",["Ident",["SimpleLocal","None"],null],[]]]],[["Var",["Ident",["SimpleLocal","oa"],null]],null]]]],null]],null]],null]],null]],null]],null]],null]],null]],["LibVar",["Ident",["SimpleLocal","solution_submitted"],null],null,[["Literal","1"],null]],["LibVar",["Ident",["SimpleLocal","time_window_missed"],null],null,[["Literal","2"],null]],["LibVar",["Ident",["SimpleLocal","not_a_player"],null],null,[["Literal","3"],null]],["LibVar",["Ident",["SimpleLocal","too_early_to_claim"],null],null,[["Literal","4"],null]],["LibVar",["Ident",["SimpleLocal","wrong__sender_or_solution"],null],null,[["Literal","5"],null]],["LibVar",["Ident",["SimpleLocal","here_is_the_reward"],null],null,[["Literal","6"],null]],["LibVar",["Ident",["SimpleLocal","cannot_withdraw"],null],null,[["Literal","7"],null]]]},"elibs":[[["Ident",["SimpleLocal","BoolUtils"],null],null]],"contr":{"cname":["Ident",["SimpleLocal","ZilGame"],null],"cparams":[[["Ident",["SimpleLocal","owner"],null],["PrimType",["Bystrx_typ",20]]],[["Ident",["SimpleLocal","player_a"],null],["PrimType",["Bystrx_typ",20]]],[["Ident",["SimpleLocal","player_b"],null],["PrimType",["Bystrx_typ",20]]],[["Ident",["SimpleLocal","puzzle"],null],["PrimType",["Bystrx_typ",32]]]],"cconstraint":[["Literal",{"name":["SimpleLocal","True"],"types":[],"lits":[]}],null],"cfields":[[["Ident",["SimpleLocal","player_a_hash"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],[["Constr",["Ident",["SimpleLocal","None"],null],[["PrimType",["Bystrx_typ",32]]],[]],null]],[["Ident",["SimpleLocal","player_b_hash"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bystrx_typ",32]]]],[["Constr",["Ident",["SimpleLocal","None"],null],[["PrimType",["Bystrx_typ",32]]],[]],null]],[["Ident",["SimpleLocal","timer"],null],["ADT",["Ident",["SimpleLocal","Option"],{"fname":"","lnum":0,"cnum":0}],[["PrimType",["Bnum_typ"]]]],[["Constr",["Ident",["SimpleLocal","None"],null],[["PrimType",["Bnum_typ"]]],[]],null]]],"ccomps":[{"comp_type":["CompTrans"],"comp_name":["Ident",["SimpleLocal","Play"],null],"comp_params":[[["Ident",["SimpleLocal","guess"],null],["PrimType",["Bystrx_typ",32]]]],"comp_body":[[["Load",["Ident",["SimpleLocal","tm_opt"],null],["Ident",["SimpleLocal","timer"],null]],null],[["ReadFromBC",["Ident",["SimpleLocal","b"],null],["CurBlockNum"]],null],[["Bind",["Ident",["SimpleLocal","c"],null],[["App",["Ident",["SimpleLocal","can_play"],null],[["Ident",["SimpleLocal","tm_opt"],null],["Ident",["SimpleLocal","b"],null]]],null]],null],[["MatchStmt",["Ident",["SimpleLocal","c"],null],[[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","_sender"],null]]],["_amount",["MLit","0"]],["code",["MVar",["Ident",["SimpleLocal","time_window_missed"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]],[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[[["Bind",["Ident",["SimpleLocal","isa"],null],[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","_sender"],null],["Ident",["SimpleLocal","player_a"],null]]],null]],null],[["Bind",["Ident",["SimpleLocal","isb"],null],[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","_sender"],null],["Ident",["SimpleLocal","player_b"],null]]],null]],null],[["Bind",["Ident",["SimpleLocal","tt"],null],[["Constr",["Ident",["SimpleLocal","True"],null],[],[]],null]],null],[["MatchStmt",["Ident",["SimpleLocal","isa"],null],[[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[[["Load",["Ident",["SimpleLocal","ah"],null],["Ident",["SimpleLocal","player_a_hash"],null]],null],[["Bind",["Ident",["SimpleLocal","hopt"],null],[["App",["Ident",["SimpleLocal","update_hash"],null],[["Ident",["SimpleLocal","ah"],null],["Ident",["SimpleLocal","guess"],null]]],null]],null],[["Store",["Ident",["SimpleLocal","player_a_hash"],null],["Ident",["SimpleLocal","hopt"],null]],null],[["Bind",["Ident",["SimpleLocal","tm1"],null],[["App",["Ident",["SimpleLocal","update_timer"],null],[["Ident",["SimpleLocal","tm_opt"],null],["Ident",["SimpleLocal","b"],null]]],null]],null],[["Store",["Ident",["SimpleLocal","timer"],null],["Ident",["SimpleLocal","tm1"],null]],null],[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","_sender"],null]]],["_amount",["MLit","0"]],["code",["MVar",["Ident",["SimpleLocal","solution_submitted"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]],[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[[["MatchStmt",["Ident",["SimpleLocal","isb"],null],[[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[[["Load",["Ident",["SimpleLocal","bh"],null],["Ident",["SimpleLocal","player_b_hash"],null]],null],[["Bind",["Ident",["SimpleLocal","hopt"],null],[["App",["Ident",["SimpleLocal","update_hash"],null],[["Ident",["SimpleLocal","bh"],null],["Ident",["SimpleLocal","guess"],null]]],null]],null],[["Store",["Ident",["SimpleLocal","player_b_hash"],null],["Ident",["SimpleLocal","hopt"],null]],null],[["Bind",["Ident",["SimpleLocal","tm1"],null],[["App",["Ident",["SimpleLocal","update_timer"],null],[["Ident",["SimpleLocal","tm_opt"],null],["Ident",["SimpleLocal","b"],null]]],null]],null],[["Store",["Ident",["SimpleLocal","timer"],null],["Ident",["SimpleLocal","tm1"],null]],null],[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","_sender"],null]]],["_amount",["MLit","0"]],["code",["MVar",["Ident",["SimpleLocal","solution_submitted"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]],[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","_sender"],null]]],["_amount",["MLit","0"]],["code",["MVar",["Ident",["SimpleLocal","not_a_player"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]]]],null]]]]],null]]]]],null]],"comp_return":null},{"comp_type":["CompTrans"],"comp_name":["Ident",["SimpleLocal","ClaimReward"],null],"comp_params":[[["Ident",["SimpleLocal","solution"],null],["PrimType",["Int_typ",["Bits128"]]]]],"comp_body":[[["Load",["Ident",["SimpleLocal","tm_opt"],null],["Ident",["SimpleLocal","timer"],null]],null],[["ReadFromBC",["Ident",["SimpleLocal","b"],null],["CurBlockNum"]],null],[["Bind",["Ident",["SimpleLocal","ttc"],null],[["App",["Ident",["SimpleLocal","time_to_claim"],null],[["Ident",["SimpleLocal","tm_opt"],null],["Ident",["SimpleLocal","b"],null]]],null]],null],[["MatchStmt",["Ident",["SimpleLocal","ttc"],null],[[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","_sender"],null]]],["_amount",["MLit","0"]],["code",["MVar",["Ident",["SimpleLocal","too_early_to_claim"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]],[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[[["Load",["Ident",["SimpleLocal","pa"],null],["Ident",["SimpleLocal","player_a_hash"],null]],null],[["Load",["Ident",["SimpleLocal","pb"],null],["Ident",["SimpleLocal","player_b_hash"],null]],null],[["Bind",["Ident",["SimpleLocal","is_valid"],null],[["App",["Ident",["SimpleLocal","check_validity"],null],[["Ident",["SimpleLocal","_sender"],null],["Ident",["SimpleLocal","solution"],null],["Ident",["SimpleLocal","player_a"],null],["Ident",["SimpleLocal","player_b"],null],["Ident",["SimpleLocal","pa"],null],["Ident",["SimpleLocal","pb"],null]]],null]],null],[["MatchStmt",["Ident",["SimpleLocal","is_valid"],null],[[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","_sender"],null]]],["_amount",["MLit","0"]],["code",["MVar",["Ident",["SimpleLocal","wrong__sender_or_solution"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]],[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[[["Bind",["Ident",["SimpleLocal","winner"],null],[["App",["Ident",["SimpleLocal","determine_winner"],null],[["Ident",["SimpleLocal","puzzle"],null],["Ident",["SimpleLocal","pa"],null],["Ident",["SimpleLocal","pb"],null],["Ident",["SimpleLocal","player_a"],null],["Ident",["SimpleLocal","player_b"],null],["Ident",["SimpleLocal","owner"],null]]],null]],null],[["Load",["Ident",["SimpleLocal","bal"],null],["Ident",["SimpleLocal","_balance"],null]],null],[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","winner"],null]]],["_amount",["MVar",["Ident",["SimpleLocal","bal"],null]]],["code",["MVar",["Ident",["SimpleLocal","here_is_the_reward"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","ff"],null],[["Constr",["Ident",["SimpleLocal","False"],null],[],[]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]]]],null]]]]],null]],"comp_return":null},{"comp_type":["CompTrans"],"comp_name":["Ident",["SimpleLocal","Withdraw"],null],"comp_params":[],"comp_body":[[["Bind",["Ident",["SimpleLocal","tm"],null],[["Var",["Ident",["SimpleLocal","_creation_block"],null]],null]],null],[["ReadFromBC",["Ident",["SimpleLocal","b"],null],["CurBlockNum"]],null],[["Bind",["Ident",["SimpleLocal","cw"],null],[["App",["Ident",["SimpleLocal","can_withdraw"],null],[["Ident",["SimpleLocal","tm"],null],["Ident",["SimpleLocal","b"],null]]],null]],null],[["Bind",["Ident",["SimpleLocal","is_owner"],null],[["Builtin",[["Builtin_eq"],null],[],[["Ident",["SimpleLocal","owner"],null],["Ident",["SimpleLocal","_sender"],null]]],null]],null],[["Load",["Ident",["SimpleLocal","bal"],null],["Ident",["SimpleLocal","_balance"],null]],null],[["Bind",["Ident",["SimpleLocal","good_to_go"],null],[["App",["Ident",["SimpleLocal","andb"],null],[["Ident",["SimpleLocal","cw"],null],["Ident",["SimpleLocal","is_owner"],null]]],null]],null],[["MatchStmt",["Ident",["SimpleLocal","good_to_go"],null],[[["Constructor",["Ident",["SimpleLocal","True"],null],[]],[[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","owner"],null]]],["_amount",["MVar",["Ident",["SimpleLocal","bal"],null]]],["code",["MVar",["Ident",["SimpleLocal","here_is_the_reward"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["Bind",["Ident",["SimpleLocal","e"],null],[["Message",[["_eventname",["MLit","GameOver"]]]],null]],null],[["CreateEvnt",["Ident",["SimpleLocal","e"],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]],[["Constructor",["Ident",["SimpleLocal","False"],null],[]],[[["Bind",["Ident",["SimpleLocal","msg"],null],[["Message",[["_tag",["MLit",""]],["_recipient",["MVar",["Ident",["SimpleLocal","_sender"],null]]],["_amount",["MLit","0"]],["code",["MVar",["Ident",["SimpleLocal","cannot_withdraw"],null]]]]],null]],null],[["Bind",["Ident",["SimpleLocal","msgs"],null],[["App",["Ident",["SimpleLocal","one_msg"],null],[["Ident",["SimpleLocal","msg"],null]]],null]],null],[["SendMsgs",["Ident",["SimpleLocal","msgs"],null]],null]]]]],null]],"comp_return":null}]}}
