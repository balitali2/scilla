  $ scilla-fmt --json --deannot --human-readable helloWorld.scilla
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
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "not_owner_code" ], null ],
          null,
          [ [ "Literal", "1" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "set_hello_code" ], null ],
          null,
          [ [ "Literal", "2" ], null ]
        ]
      ]
    },
    "elibs": [ [ [ "Ident", [ "SimpleLocal", "ListUtils" ], null ], null ] ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "HelloWorld" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "owner" ], null ],
          [ "PrimType", [ "Bystrx_typ", 20 ] ]
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
          [ "Ident", [ "SimpleLocal", "welcome_msg" ], null ],
          [ "PrimType", [ "String_typ" ] ],
          [ [ "Literal", "" ], null ]
        ]
      ],
      "ccomps": [
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "setHello" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "msg" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_owner" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "owner" ], null ],
                      [ "Ident", [ "SimpleLocal", "_sender" ], null ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "is_owner" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "Message",
                              [
                                [ "_eventname", [ "MLit", "setHello()" ] ],
                                [
                                  "code",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "not_owner_code" ],
                                      null
                                    ]
                                  ]
                                ]
                              ]
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CreateEvnt",
                          [ "Ident", [ "SimpleLocal", "e" ], null ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Store",
                          [ "Ident", [ "SimpleLocal", "welcome_msg" ], null ],
                          [ "Ident", [ "SimpleLocal", "msg" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "Message",
                              [
                                [ "_eventname", [ "MLit", "setHello()" ] ],
                                [
                                  "code",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "set_hello_code" ],
                                      null
                                    ]
                                  ]
                                ]
                              ]
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CreateEvnt",
                          [ "Ident", [ "SimpleLocal", "e" ], null ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "getHello" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "r" ], null ],
                [ "Ident", [ "SimpleLocal", "welcome_msg" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_eventname", [ "MLit", "getHello()" ] ],
                      [
                        "msg",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "r" ], null ] ]
                      ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "CreateEvnt", [ "Ident", [ "SimpleLocal", "e" ], null ] ], null
            ]
          ]
        },
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
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "contrAddr" ], null ],
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
                      [ "_eventname", [ "MLit", "ContractAddress" ] ],
                      [
                        "addr",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_this_address" ], null ]
                        ]
                      ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "CreateEvnt", [ "Ident", [ "SimpleLocal", "msg1" ], null ] ],
              null
            ]
          ]
        }
      ]
    }
  }
