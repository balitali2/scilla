  $ scilla-fmt --json --deannot --human-readable address_list_as_cparam.scilla
  {
    "smver": 0,
    "libs": null,
    "elibs": [],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "T" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "x" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "List" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "Address", "Address" ] ]
          ]
        ]
      ],
      "cconstraint": [
        [
          "Literal",
          { "name": [ "SimpleLocal", "True" ], "types": [], "lits": [] }
        ],
        null
      ],
      "cfields": [
        [
          [ "Ident", [ "SimpleLocal", "f" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "List" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "Address", "Address" ] ]
          ],
          [ [ "Var", [ "Ident", [ "SimpleLocal", "x" ], null ] ], null ]
        ]
      ],
      "ccomps": []
    }
  }
