  $ scilla-fmt --json --deannot --human-readable empty.scilla
  {
    "smver": 0,
    "libs": null,
    "elibs": [
      [ [ "Ident", [ "SimpleLocal", "BoolUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "IntUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "ListUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "NatUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "PairUtils" ], null ], null ]
    ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "Empty" ], null ],
      "cparams": [],
      "cconstraint": [
        [
          "Literal",
          { "name": [ "SimpleLocal", "True" ], "types": [], "lits": [] }
        ],
        null
      ],
      "cfields": [],
      "ccomps": [
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "dummy" ], null ],
          "comp_params": [],
          "comp_body": []
        }
      ]
    }
  }
