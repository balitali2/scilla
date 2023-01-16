  $ scilla-fmt --json --deannot --human-readable polymorphic_address.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "AddressListTraversalLib" ], null ],
      "lentries": [
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "f" ], null ],
          [
            "PolyFun",
            "'A",
            [ "FunType", [ "Address", "Address" ], [ "Address", "Address" ] ]
          ],
          [
            [
              "TFun",
              [ "Ident", [ "SimpleLocal", "'A" ], null ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "x" ], null ],
                  [ "Address", "Address" ],
                  [
                    [ "Var", [ "Ident", [ "SimpleLocal", "x" ], null ] ], null
                  ]
                ],
                null
              ]
            ],
            null
          ]
        ]
      ]
    },
    "elibs": [ [ [ "Ident", [ "SimpleLocal", "ListUtils" ], null ], null ] ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "AddressListTraversal" ], null ],
      "cparams": [],
      "cconstraint": [
        [
          "Literal",
          { "name": [ "SimpleLocal", "True" ], "types": [], "lits": [] }
        ],
        null
      ],
      "cfields": [
        [
          [ "Ident", [ "SimpleLocal", "res_1" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
          [ [ "Literal", "0" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "res_2" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
          [ [ "Literal", "0" ], null ]
        ]
      ],
      "ccomps": [
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test1" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "f_spec" ], null ],
                [
                  [
                    "TApp",
                    [ "Ident", [ "SimpleLocal", "f" ], null ],
                    [ [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "p1" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "f_spec" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "param1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "RemoteLoad",
                [ "Ident", [ "SimpleLocal", "res" ], null ],
                [ "Ident", [ "SimpleLocal", "p1" ], null ],
                [ "Ident", [ "SimpleLocal", "f" ], null ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "res_1" ], null ],
                [ "Ident", [ "SimpleLocal", "res" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test2" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "f_spec" ], null ],
                [
                  [
                    "TApp",
                    [ "Ident", [ "SimpleLocal", "f" ], null ],
                    [ [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "p1" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "f_spec" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "param1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "RemoteLoad",
                [ "Ident", [ "SimpleLocal", "res" ], null ],
                [ "Ident", [ "SimpleLocal", "p1" ], null ],
                [ "Ident", [ "SimpleLocal", "f" ], null ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "res_2" ], null ],
                [ "Ident", [ "SimpleLocal", "res" ], null ]
              ],
              null
            ]
          ]
        }
      ]
    }
  }
