  $ scilla-fmt --json --deannot --human-readable address_list_traversal.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "AddressListTraversalLib" ], null ],
      "lentries": [
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "f" ], null ],
          [
            "FunType",
            [ "Address", "Address" ],
            [
              "FunType",
              [ "Address", "Address" ],
              [
                "FunType",
                [ "Address", "Address" ],
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
            ]
          ],
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "x" ], null ],
              [ "Address", "Address" ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "y" ], null ],
                  [ "Address", "Address" ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "z" ], null ],
                      [ "Address", "Address" ],
                      [
                        [
                          "Let",
                          [ "Ident", [ "SimpleLocal", "n" ], null ],
                          null,
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "Nil" ], null ],
                              [ [ "Address", "Address" ] ],
                              []
                            ],
                            null
                          ],
                          [
                            [
                              "Let",
                              [ "Ident", [ "SimpleLocal", "c1" ], null ],
                              null,
                              [
                                [
                                  "Constr",
                                  [ "Ident", [ "SimpleLocal", "Cons" ], null ],
                                  [ [ "Address", "Address" ] ],
                                  [
                                    [ "Ident", [ "SimpleLocal", "x" ], null ],
                                    [ "Ident", [ "SimpleLocal", "n" ], null ]
                                  ]
                                ],
                                null
                              ],
                              [
                                [
                                  "Let",
                                  [ "Ident", [ "SimpleLocal", "c2" ], null ],
                                  null,
                                  [
                                    [
                                      "Constr",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "Cons" ],
                                        null
                                      ],
                                      [ [ "Address", "Address" ] ],
                                      [
                                        [
                                          "Ident", [ "SimpleLocal", "y" ], null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "c1" ],
                                          null
                                        ]
                                      ]
                                    ],
                                    null
                                  ],
                                  [
                                    [
                                      "Constr",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "Cons" ],
                                        null
                                      ],
                                      [ [ "Address", "Address" ] ],
                                      [
                                        [
                                          "Ident", [ "SimpleLocal", "z" ], null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "c2" ],
                                          null
                                        ]
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
                        null
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
      "cname": [ "Ident", [ "SimpleLocal", "AddressListTraversal" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "cparam" ], null ],
          [ "Address", "Address" ]
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
          [ "Ident", [ "SimpleLocal", "res_list" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "List" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "Address", "Address" ] ]
          ],
          [
            [
              "Constr",
              [ "Ident", [ "SimpleLocal", "Nil" ], null ],
              [ [ "Address", "Address" ] ],
              []
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "res_mem" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "Bool" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            []
          ],
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "False" ], null ], [], [] ],
            null
          ]
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
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param3" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "l" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "f" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ],
                      [ "Ident", [ "SimpleLocal", "param3" ], null ]
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
                [ "Ident", [ "SimpleLocal", "fold" ], null ],
                [
                  [
                    "TApp",
                    [ "Ident", [ "SimpleLocal", "list_foldl" ], null ],
                    [
                      [ "Address", "Address" ],
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
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "iter_f" ], null ],
                [
                  [
                    "Fun",
                    [ "Ident", [ "SimpleLocal", "acc" ], null ],
                    [
                      "ADT",
                      [
                        "Ident",
                        [ "SimpleLocal", "List" ],
                        { "fname": "", "lnum": 0, "cnum": 0 }
                      ],
                      [ [ "Address", "Address" ] ]
                    ],
                    [
                      [
                        "Fun",
                        [ "Ident", [ "SimpleLocal", "x" ], null ],
                        [ "Address", "Address" ],
                        [
                          [
                            "Constr",
                            [ "Ident", [ "SimpleLocal", "Cons" ], null ],
                            [ [ "Address", "Address" ] ],
                            [
                              [ "Ident", [ "SimpleLocal", "x" ], null ],
                              [ "Ident", [ "SimpleLocal", "acc" ], null ]
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
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "init" ], null ],
                [
                  [
                    "Constr",
                    [ "Ident", [ "SimpleLocal", "Nil" ], null ],
                    [ [ "Address", "Address" ] ],
                    []
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "res" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "fold" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "iter_f" ], null ],
                      [ "Ident", [ "SimpleLocal", "init" ], null ],
                      [ "Ident", [ "SimpleLocal", "l" ], null ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "res_list" ], null ],
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
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param3" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "l" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "f" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ],
                      [ "Ident", [ "SimpleLocal", "param3" ], null ]
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
                [ "Ident", [ "SimpleLocal", "mem" ], null ],
                [
                  [
                    "TApp",
                    [ "Ident", [ "SimpleLocal", "list_mem" ], null ],
                    [ [ "Address", "Address" ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "eq_x" ], null ],
                [
                  [
                    "Fun",
                    [ "Ident", [ "SimpleLocal", "x" ], null ],
                    [ "Address", "Address" ],
                    [
                      [
                        "Fun",
                        [ "Ident", [ "SimpleLocal", "y" ], null ],
                        [ "Address", "Address" ],
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_eq" ], null ],
                            [],
                            [
                              [ "Ident", [ "SimpleLocal", "x" ], null ],
                              [ "Ident", [ "SimpleLocal", "y" ], null ]
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
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "res" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "mem" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "eq_x" ], null ],
                      [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                      [ "Ident", [ "SimpleLocal", "l" ], null ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "res_mem" ], null ],
                [ "Ident", [ "SimpleLocal", "res" ], null ]
              ],
              null
            ]
          ]
        }
      ]
    }
  }
