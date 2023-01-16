  $ scilla-fmt --json --deannot --human-readable multiple-msgs.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "HelloWorld" ], null ],
      "lentries": [
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "msg" ], null ],
              [ "PrimType", [ "Msg_typ" ] ],
              [
                [
                  "Let",
                  [ "Ident", [ "SimpleLocal", "nil_msg" ], null ],
                  null,
                  [
                    [
                      "Constr",
                      [ "Ident", [ "SimpleLocal", "Nil" ], null ],
                      [ [ "PrimType", [ "Msg_typ" ] ] ],
                      []
                    ],
                    null
                  ],
                  [
                    [
                      "Constr",
                      [ "Ident", [ "SimpleLocal", "Cons" ], null ],
                      [ [ "PrimType", [ "Msg_typ" ] ] ],
                      [
                        [ "Ident", [ "SimpleLocal", "msg" ], null ],
                        [ "Ident", [ "SimpleLocal", "nil_msg" ], null ]
                      ]
                    ],
                    null
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
      "cname": [ "Ident", [ "SimpleLocal", "HelloWorld" ], null ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "multipleMsgs" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "msg1" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_tag", [ "MLit", "" ] ],
                      [
                        "_recipient",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_sender" ], null ]
                        ]
                      ],
                      [ "_amount", [ "MLit", "0" ] ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "msg2" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_tag", [ "MLit", "" ] ],
                      [
                        "_recipient",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_sender" ], null ]
                        ]
                      ],
                      [ "_amount", [ "MLit", "0" ] ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "msgs1" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "msg1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "msgs2" ], null ],
                [
                  [
                    "Constr",
                    [ "Ident", [ "SimpleLocal", "Cons" ], null ],
                    [ [ "PrimType", [ "Msg_typ" ] ] ],
                    [
                      [ "Ident", [ "SimpleLocal", "msg2" ], null ],
                      [ "Ident", [ "SimpleLocal", "msgs1" ], null ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "SendMsgs", [ "Ident", [ "SimpleLocal", "msgs2" ], null ] ],
              null
            ]
          ]
        }
      ]
    }
  }
