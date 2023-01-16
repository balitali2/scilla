  $ scilla-fmt --json --deannot --human-readable map_corners_test.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "MapCornersTest" ], null ],
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
    "elibs": [ [ [ "Ident", [ "SimpleLocal", "BoolUtils" ], null ], null ] ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "MapCornersTest" ], null ],
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
          [ "Ident", [ "SimpleLocal", "f_s1" ], null ],
          [ "PrimType", [ "String_typ" ] ],
          [ [ "Literal", "420" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
          [
            "MapType",
            [ "PrimType", [ "String_typ" ] ],
            [ "PrimType", [ "String_typ" ] ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "String_typ" ] ],
                  [ "PrimType", [ "String_typ" ] ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
          [
            "MapType",
            [ "PrimType", [ "String_typ" ] ],
            [
              "MapType",
              [ "PrimType", [ "String_typ" ] ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "String_typ" ] ],
                  [
                    "MapType",
                    [ "PrimType", [ "String_typ" ] ],
                    [ "PrimType", [ "String_typ" ] ]
                  ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "f_m3" ], null ],
          [
            "MapType",
            [ "PrimType", [ "String_typ" ] ],
            [
              "MapType",
              [ "PrimType", [ "String_typ" ] ],
              [
                "MapType",
                [ "PrimType", [ "String_typ" ] ],
                [ "PrimType", [ "String_typ" ] ]
              ]
            ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "String_typ" ] ],
                  [
                    "MapType",
                    [ "PrimType", [ "String_typ" ] ],
                    [
                      "MapType",
                      [ "PrimType", [ "String_typ" ] ],
                      [ "PrimType", [ "String_typ" ] ]
                    ]
                  ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "f_m" ], null ],
          [
            "MapType",
            [ "PrimType", [ "String_typ" ] ],
            [
              "MapType",
              [ "PrimType", [ "String_typ" ] ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "String_typ" ] ],
                  [
                    "MapType",
                    [ "PrimType", [ "String_typ" ] ],
                    [ "PrimType", [ "String_typ" ] ]
                  ]
                ],
                "data": []
              }
            ],
            null
          ]
        ]
      ],
      "ccomps": [
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "fail" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_exception", [ "MLit", "Test Failed" ] ],
                      [
                        "test_name",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "tname" ], null ]
                        ]
                      ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [ [ "Throw", [ "Ident", [ "SimpleLocal", "e" ], null ] ], null ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "msg" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_exception", [ "MLit", "Test Failed" ] ],
                      [
                        "test_name",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "tname" ], null ]
                        ]
                      ],
                      [
                        "message",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "msg" ], null ] ]
                      ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [ [ "Throw", [ "Ident", [ "SimpleLocal", "e" ], null ] ], null ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "expected_fail" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_exception", [ "MLit", "Test failed as expected" ] ],
                      [
                        "test_name",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "tname" ], null ]
                        ]
                      ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [ [ "Throw", [ "Ident", [ "SimpleLocal", "e" ], null ] ], null ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "expected_fail_msg" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "msg" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_exception", [ "MLit", "Test failed as expected" ] ],
                      [
                        "test_name",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "tname" ], null ]
                        ]
                      ],
                      [
                        "message",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "msg" ], null ] ]
                      ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [ [ "Throw", [ "Ident", [ "SimpleLocal", "e" ], null ] ], null ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t1" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t1" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "f" ], null ],
                [ "Ident", [ "SimpleLocal", "f_s1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "t" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "f" ], null ],
                      [ "Ident", [ "SimpleLocal", "s" ], null ]
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
                [ "Ident", [ "SimpleLocal", "t" ], null ],
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
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
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
                    []
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s2" ], null ],
                [ [ "Literal", "421" ], null ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "f_s1" ], null ],
                [ "Ident", [ "SimpleLocal", "s2" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t2" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t2" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "f" ], null ],
                [ "Ident", [ "SimpleLocal", "f_s1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "421" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "t" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "f" ], null ],
                      [ "Ident", [ "SimpleLocal", "s" ], null ]
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
                [ "Ident", [ "SimpleLocal", "t" ], null ],
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
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
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
                    []
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1" ], null ],
                [ [ "Literal", "key1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "val1" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1" ], null ] ],
                [ "Ident", [ "SimpleLocal", "val1" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t3" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t3" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1" ], null ],
                [ [ "Literal", "key1" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "val1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "val1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder", [ "Ident", [ "SimpleLocal", "val" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "t" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "val" ], null ],
                                [ "Ident", [ "SimpleLocal", "s" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "t" ], null ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [ "Literal", "Incorrect value for key" ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                              []
                            ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2" ], null ],
                [ [ "Literal", "key2" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "val2" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key2" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "val2" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [ [ "Wildcard" ] ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "Rogue value found for key" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    []
                  ]
                ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1" ], null ] ],
                null
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t4" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t4" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1" ], null ],
                [ [ "Literal", "key1" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "key1_found" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "key1_found" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    []
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2a" ], null ]
                ],
                [ "Ident", [ "SimpleLocal", "s" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t5" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t5" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "val" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2a" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "val" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "v" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "t" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "v" ], null ],
                                [ "Ident", [ "SimpleLocal", "s" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "t" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [ "Literal", "Incorrect value fetched" ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "l_m2" ], null ],
                [
                  [
                    "Let",
                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                    null,
                    [
                      [
                        "Literal",
                        {
                          "mtype": [
                            [ "PrimType", [ "String_typ" ] ],
                            [ "PrimType", [ "String_typ" ] ]
                          ],
                          "data": []
                        }
                      ],
                      null
                    ],
                    [
                      [
                        "Let",
                        [ "Ident", [ "SimpleLocal", "key2b" ], null ],
                        null,
                        [ [ "Literal", "key2b" ], null ],
                        [
                          [
                            "Let",
                            [ "Ident", [ "SimpleLocal", "s1" ], null ],
                            null,
                            [ [ "Literal", "840" ], null ],
                            [
                              [
                                "Let",
                                [ "Ident", [ "SimpleLocal", "m1" ], null ],
                                null,
                                [
                                  [
                                    "Builtin",
                                    [ [ "Builtin_put" ], null ],
                                    [],
                                    [
                                      [ "Ident", [ "SimpleLocal", "e" ], null ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "key2b" ],
                                        null
                                      ],
                                      [
                                        "Ident", [ "SimpleLocal", "s1" ], null
                                      ]
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "Let",
                                    [
                                      "Ident", [ "SimpleLocal", "key2c" ], null
                                    ],
                                    null,
                                    [ [ "Literal", "key2c" ], null ],
                                    [
                                      [
                                        "Let",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "s2" ],
                                          null
                                        ],
                                        null,
                                        [ [ "Literal", "841" ], null ],
                                        [
                                          [
                                            "Builtin",
                                            [ [ "Builtin_put" ], null ],
                                            [],
                                            [
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "m1" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "key2c" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "s2" ],
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
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1b" ], null ] ],
                [ "Ident", [ "SimpleLocal", "l_m2" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t6" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t6" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2a" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "c" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "v" ], null ],
                          [ [ "Literal", "420" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "c" ], null ],
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Incorrect value for key1a,key2a"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "key1a,key2a not found" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2b" ], null ],
                [ [ "Literal", "key2b" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2b" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "c" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "v" ], null ],
                          [ [ "Literal", "840" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "c" ], null ],
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Incorrect value for key1b,key2b"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "key1b,key2b not found" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2c" ], null ],
                [ [ "Literal", "key2c" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2c" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "c" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "v" ], null ],
                          [ [ "Literal", "841" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "c" ], null ],
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Incorrect value for key1b,key2c"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "key1b,key2c not found" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1b" ], null ] ],
                null
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t7" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t7" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2a" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "c" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "v" ], null ],
                          [ [ "Literal", "420" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "c" ], null ],
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Incorrect value for key1a,key2a"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "key1a,key2a not found" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1b" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [ [ "Wildcard" ] ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [
                            [
                              "Literal", "Fail: deleted value for key1b found!"
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    []
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2b" ], null ],
                [ [ "Literal", "key2b" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2b" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [ [ "Wildcard" ] ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [
                            [
                              "Literal",
                              "Fail: deleted value for key1b,key2b found!"
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    []
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2d" ], null ],
                [ [ "Literal", "key2d" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2d" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [ [ "Wildcard" ] ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [
                            [
                              "Literal",
                              "Fail: deleted value for key1b,key2d found!"
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    []
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2c" ], null ],
                [ [ "Literal", "key2c" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "121" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2c" ], null ]
                ],
                [ "Ident", [ "SimpleLocal", "s" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t8" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t8" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2a" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "c" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "v" ], null ],
                          [ [ "Literal", "420" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "c" ], null ],
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Incorrect value for key1a,key2a"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "key1a,key2a not found" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2c" ], null ],
                [ [ "Literal", "key2c" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2c" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "c" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "v" ], null ],
                          [ [ "Literal", "121" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "c" ], null ],
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Incorrect value for key1b,key2c"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "key1b,key2c not found" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "em" ], null ],
                [
                  [
                    "Literal",
                    {
                      "mtype": [
                        [ "PrimType", [ "String_typ" ] ],
                        [ "PrimType", [ "String_typ" ] ]
                      ],
                      "data": []
                    }
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ "Ident", [ "SimpleLocal", "em" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t9" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t9" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "m1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m1_size" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_size" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "m1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "zero" ], null ],
                [ [ "Literal", "0" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m1_size" ], null ],
                      [ "Ident", [ "SimpleLocal", "zero" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    []
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "val" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m1" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_put" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m1" ], null ],
                      [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                      [ "Ident", [ "SimpleLocal", "val" ], null ]
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
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ "Ident", [ "SimpleLocal", "m1" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t10" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t10" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "m1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m1" ], null ],
                      [ "Ident", [ "SimpleLocal", "key1a" ], null ]
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
                [ "Ident", [ "SimpleLocal", "c1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "c" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "v" ], null ],
                          [ [ "Literal", "420" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "c" ], null ],
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "m" ], null ],
                                    [
                                      [
                                        "Literal", "Incorrect value for key1a"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [ "Ident", [ "SimpleLocal", "m" ], null ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m" ], null ],
                          [ [ "Literal", "key1a not found" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "m" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1a" ], null ] ],
                null
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t11" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t11" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "m1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m1_size" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_size" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "m1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "zero" ], null ],
                [ [ "Literal", "0" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m1_size" ], null ],
                      [ "Ident", [ "SimpleLocal", "zero" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    []
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e2" ], null ],
                [
                  [
                    "Literal",
                    {
                      "mtype": [
                        [ "PrimType", [ "String_typ" ] ],
                        [
                          "MapType",
                          [ "PrimType", [ "String_typ" ] ],
                          [ "PrimType", [ "String_typ" ] ]
                        ]
                      ],
                      "data": []
                    }
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [ "Ident", [ "SimpleLocal", "e2" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t12" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t12" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "m2" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m2_size" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_size" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "m2" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "zero" ], null ],
                [ [ "Literal", "0" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m2_size" ], null ],
                      [ "Ident", [ "SimpleLocal", "zero" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    []
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e1" ], null ],
                [
                  [
                    "Literal",
                    {
                      "mtype": [
                        [ "PrimType", [ "String_typ" ] ],
                        [ "PrimType", [ "String_typ" ] ]
                      ],
                      "data": []
                    }
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1a" ], null ] ],
                [ "Ident", [ "SimpleLocal", "e1" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t13" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t13" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "mo" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key1a" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "mo" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "m" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m_size" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_size" ], null ],
                              [],
                              [ [ "Ident", [ "SimpleLocal", "m" ], null ] ]
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "zero" ], null ],
                          [ [ "Literal", "0" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "m_size" ], null ],
                                [ "Ident", [ "SimpleLocal", "zero" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "msg" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Submap should have been empty"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [
                                        "Ident", [ "SimpleLocal", "msg" ], null
                                      ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m3" ], null ],
                [
                  [
                    "Literal",
                    {
                      "mtype": [
                        [ "PrimType", [ "String_typ" ] ],
                        [ "PrimType", [ "String_typ" ] ]
                      ],
                      "data": []
                    }
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m2" ], null ],
                [
                  [
                    "Let",
                    [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                    null,
                    [ [ "Literal", "key2a" ], null ],
                    [
                      [
                        "Let",
                        [ "Ident", [ "SimpleLocal", "e" ], null ],
                        null,
                        [
                          [
                            "Literal",
                            {
                              "mtype": [
                                [ "PrimType", [ "String_typ" ] ],
                                [
                                  "MapType",
                                  [ "PrimType", [ "String_typ" ] ],
                                  [ "PrimType", [ "String_typ" ] ]
                                ]
                              ],
                              "data": []
                            }
                          ],
                          null
                        ],
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_put" ], null ],
                            [],
                            [
                              [ "Ident", [ "SimpleLocal", "e" ], null ],
                              [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                              [ "Ident", [ "SimpleLocal", "m3" ], null ]
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
                [ "Ident", [ "SimpleLocal", "m3" ], null ],
                [
                  [
                    "Let",
                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                    null,
                    [
                      [
                        "Literal",
                        {
                          "mtype": [
                            [ "PrimType", [ "String_typ" ] ],
                            [
                              "MapType",
                              [ "PrimType", [ "String_typ" ] ],
                              [
                                "MapType",
                                [ "PrimType", [ "String_typ" ] ],
                                [ "PrimType", [ "String_typ" ] ]
                              ]
                            ]
                          ],
                          "data": []
                        }
                      ],
                      null
                    ],
                    [
                      [
                        "Builtin",
                        [ [ "Builtin_put" ], null ],
                        [],
                        [
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                          [ "Ident", [ "SimpleLocal", "m2" ], null ]
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
                "Store",
                [ "Ident", [ "SimpleLocal", "f_m3" ], null ],
                [ "Ident", [ "SimpleLocal", "m3" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t14" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t14" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "m3" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m3" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m3_size" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_size" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "m3" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "one" ], null ],
                [ [ "Literal", "1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m3_size" ], null ],
                      [ "Ident", [ "SimpleLocal", "one" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_empty" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    []
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [
                  [
                    "Literal",
                    {
                      "mtype": [
                        [ "PrimType", [ "String_typ" ] ],
                        [
                          "MapType",
                          [ "PrimType", [ "String_typ" ] ],
                          [ "PrimType", [ "String_typ" ] ]
                        ]
                      ],
                      "data": []
                    }
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "f_m" ], null ],
                [ "Ident", [ "SimpleLocal", "e" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t15" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t15" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "m3" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m3" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m3_size" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_size" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "m3" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "one" ], null ],
                [ [ "Literal", "1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_one" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m3_size" ], null ],
                      [ "Ident", [ "SimpleLocal", "one" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_one" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    []
                  ],
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
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [ [ "Literal", "Incorrect size of f_m3" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "err" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m2o" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "m3" ], null ],
                      [ "Ident", [ "SimpleLocal", "key1a" ], null ]
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
                [ "Ident", [ "SimpleLocal", "m2o" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder", [ "Ident", [ "SimpleLocal", "m2" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "m2_size" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_size" ], null ],
                              [],
                              [ [ "Ident", [ "SimpleLocal", "m2" ], null ] ]
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "is_one_1" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "m2_size" ], null ],
                                [ "Ident", [ "SimpleLocal", "one" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "is_one_1" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "m1o" ], null ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_get" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "m2" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "key2a" ],
                                            null
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
                                    "MatchStmt",
                                    [ "Ident", [ "SimpleLocal", "m1o" ], null ],
                                    [
                                      [
                                        [
                                          "Constructor",
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "Some" ],
                                            null
                                          ],
                                          [
                                            [
                                              "Binder",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "m1" ],
                                                null
                                              ]
                                            ]
                                          ]
                                        ],
                                        [
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "m1_size" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_size" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "m1" ],
                                                      null
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
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "zero" ],
                                                null
                                              ],
                                              [ [ "Literal", "0" ], null ]
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "is_empty" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_eq" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "m1_size"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "zero" ],
                                                      null
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
                                              "MatchStmt",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "is_empty" ],
                                                null
                                              ],
                                              [
                                                [
                                                  [
                                                    "Constructor",
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "True" ],
                                                      null
                                                    ],
                                                    []
                                                  ],
                                                  []
                                                ],
                                                [
                                                  [
                                                    "Constructor",
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal", "False"
                                                      ],
                                                      null
                                                    ],
                                                    []
                                                  ],
                                                  [
                                                    [
                                                      [
                                                        "Bind",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "err"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Literal",
                                                            "Incorrect size of f_m3[key1a][key2a]"
                                                          ],
                                                          null
                                                        ]
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      [
                                                        "CallProc",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "fail_msg"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Ident",
                                                            [
                                                              "SimpleLocal",
                                                              "tname"
                                                            ],
                                                            null
                                                          ],
                                                          [
                                                            "Ident",
                                                            [
                                                              "SimpleLocal",
                                                              "err"
                                                            ],
                                                            null
                                                          ]
                                                        ]
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
                                      ],
                                      [
                                        [
                                          "Constructor",
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "None" ],
                                            null
                                          ],
                                          []
                                        ],
                                        [
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "err" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Literal",
                                                  "Unexpected empty m1"
                                                ],
                                                null
                                              ]
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "CallProc",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "fail_msg" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "tname" ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "err" ],
                                                  null
                                                ]
                                              ]
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
                            ],
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
                                    [ "Ident", [ "SimpleLocal", "err" ], null ],
                                    [
                                      [
                                        "Literal",
                                        "Incorrect size of f_m3[key1]"
                                      ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fail_msg" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ],
                                      [
                                        "Ident", [ "SimpleLocal", "err" ], null
                                      ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [ [ "Literal", "Unexpected empty m2" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "err" ], null ]
                          ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2b" ], null ],
                [ [ "Literal", "key2b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1c" ], null ],
                [ [ "Literal", "key1c" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2c" ], null ],
                [ [ "Literal", "key2c" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1d" ], null ],
                [ [ "Literal", "key1d" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2d" ], null ],
                [ [ "Literal", "key2d" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v1" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v2" ], null ],
                [ [ "Literal", "421" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v3" ], null ],
                [ [ "Literal", "422" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v4" ], null ],
                [ [ "Literal", "423" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m2" ], null ],
                [
                  [
                    "Literal",
                    {
                      "mtype": [
                        [ "PrimType", [ "String_typ" ] ],
                        [
                          "MapType",
                          [ "PrimType", [ "String_typ" ] ],
                          [ "PrimType", [ "String_typ" ] ]
                        ]
                      ],
                      "data": []
                    }
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m1" ], null ],
                [
                  [
                    "Literal",
                    {
                      "mtype": [
                        [ "PrimType", [ "String_typ" ] ],
                        [ "PrimType", [ "String_typ" ] ]
                      ],
                      "data": []
                    }
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m2_full" ], null ],
                [
                  [
                    "Let",
                    [ "Ident", [ "SimpleLocal", "m21" ], null ],
                    null,
                    [
                      [
                        "Builtin",
                        [ [ "Builtin_put" ], null ],
                        [],
                        [
                          [ "Ident", [ "SimpleLocal", "m1" ], null ],
                          [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                          [ "Ident", [ "SimpleLocal", "v1" ], null ]
                        ]
                      ],
                      null
                    ],
                    [
                      [
                        "Let",
                        [ "Ident", [ "SimpleLocal", "m22" ], null ],
                        null,
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_put" ], null ],
                            [],
                            [
                              [ "Ident", [ "SimpleLocal", "m1" ], null ],
                              [ "Ident", [ "SimpleLocal", "key2b" ], null ],
                              [ "Ident", [ "SimpleLocal", "v2" ], null ]
                            ]
                          ],
                          null
                        ],
                        [
                          [
                            "Let",
                            [ "Ident", [ "SimpleLocal", "m23" ], null ],
                            null,
                            [
                              [
                                "Builtin",
                                [ [ "Builtin_put" ], null ],
                                [],
                                [
                                  [ "Ident", [ "SimpleLocal", "m1" ], null ],
                                  [ "Ident", [ "SimpleLocal", "key2c" ], null ],
                                  [ "Ident", [ "SimpleLocal", "v3" ], null ]
                                ]
                              ],
                              null
                            ],
                            [
                              [
                                "Let",
                                [ "Ident", [ "SimpleLocal", "m24" ], null ],
                                null,
                                [
                                  [
                                    "Builtin",
                                    [ [ "Builtin_put" ], null ],
                                    [],
                                    [
                                      [
                                        "Ident", [ "SimpleLocal", "m1" ], null
                                      ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "key2d" ],
                                        null
                                      ],
                                      [
                                        "Ident", [ "SimpleLocal", "v4" ], null
                                      ]
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "Let",
                                    [ "Ident", [ "SimpleLocal", "m11" ], null ],
                                    null,
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_put" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "m2" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "key1a" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "m21" ],
                                            null
                                          ]
                                        ]
                                      ],
                                      null
                                    ],
                                    [
                                      [
                                        "Let",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "m12" ],
                                          null
                                        ],
                                        null,
                                        [
                                          [
                                            "Builtin",
                                            [ [ "Builtin_put" ], null ],
                                            [],
                                            [
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "m11" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "key1b" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "m22" ],
                                                null
                                              ]
                                            ]
                                          ],
                                          null
                                        ],
                                        [
                                          [
                                            "Let",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "m13" ],
                                              null
                                            ],
                                            null,
                                            [
                                              [
                                                "Builtin",
                                                [ [ "Builtin_put" ], null ],
                                                [],
                                                [
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "m12" ],
                                                    null
                                                  ],
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "key1c" ],
                                                    null
                                                  ],
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "m23" ],
                                                    null
                                                  ]
                                                ]
                                              ],
                                              null
                                            ],
                                            [
                                              [
                                                "Let",
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "m14" ],
                                                  null
                                                ],
                                                null,
                                                [
                                                  [
                                                    "Builtin",
                                                    [ [ "Builtin_put" ], null ],
                                                    [],
                                                    [
                                                      [
                                                        "Ident",
                                                        [
                                                          "SimpleLocal", "m13"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        "Ident",
                                                        [
                                                          "SimpleLocal",
                                                          "key1d"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        "Ident",
                                                        [
                                                          "SimpleLocal", "m24"
                                                        ],
                                                        null
                                                      ]
                                                    ]
                                                  ],
                                                  null
                                                ],
                                                [
                                                  [
                                                    "Var",
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "m14" ],
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
                "Store",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [ "Ident", [ "SimpleLocal", "m2_full" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t16" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t16" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2a" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                [ [ "Literal", "key1b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2b" ], null ],
                [ [ "Literal", "key2b" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1c" ], null ],
                [ [ "Literal", "key1c" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2c" ], null ],
                [ [ "Literal", "key2c" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1d" ], null ],
                [ [ "Literal", "key1d" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2d" ], null ],
                [ [ "Literal", "key2d" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "t1" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1a" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2a" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "t2" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1b" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2b" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "t3" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1c" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2c" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "t4" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1d" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2d" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v1" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v2" ], null ],
                [ [ "Literal", "421" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v3" ], null ],
                [ [ "Literal", "422" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "v4" ], null ],
                [ [ "Literal", "423" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "b1" ], null ],
                [
                  [
                    "MatchExpr",
                    [ "Ident", [ "SimpleLocal", "t1" ], null ],
                    [
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Some" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "t1v" ], null ]
                            ]
                          ]
                        ],
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_eq" ], null ],
                            [],
                            [
                              [ "Ident", [ "SimpleLocal", "t1v" ], null ],
                              [ "Ident", [ "SimpleLocal", "v1" ], null ]
                            ]
                          ],
                          null
                        ]
                      ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "None" ], null ],
                          []
                        ],
                        [
                          [
                            "Constr",
                            [ "Ident", [ "SimpleLocal", "False" ], null ],
                            [],
                            []
                          ],
                          null
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "b2" ], null ],
                [
                  [
                    "MatchExpr",
                    [ "Ident", [ "SimpleLocal", "t2" ], null ],
                    [
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Some" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "t2v" ], null ]
                            ]
                          ]
                        ],
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_eq" ], null ],
                            [],
                            [
                              [ "Ident", [ "SimpleLocal", "t2v" ], null ],
                              [ "Ident", [ "SimpleLocal", "v2" ], null ]
                            ]
                          ],
                          null
                        ]
                      ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "None" ], null ],
                          []
                        ],
                        [
                          [
                            "Constr",
                            [ "Ident", [ "SimpleLocal", "False" ], null ],
                            [],
                            []
                          ],
                          null
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "b3" ], null ],
                [
                  [
                    "MatchExpr",
                    [ "Ident", [ "SimpleLocal", "t3" ], null ],
                    [
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Some" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "t3v" ], null ]
                            ]
                          ]
                        ],
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_eq" ], null ],
                            [],
                            [
                              [ "Ident", [ "SimpleLocal", "t3v" ], null ],
                              [ "Ident", [ "SimpleLocal", "v3" ], null ]
                            ]
                          ],
                          null
                        ]
                      ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "None" ], null ],
                          []
                        ],
                        [
                          [
                            "Constr",
                            [ "Ident", [ "SimpleLocal", "False" ], null ],
                            [],
                            []
                          ],
                          null
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "b4" ], null ],
                [
                  [
                    "MatchExpr",
                    [ "Ident", [ "SimpleLocal", "t4" ], null ],
                    [
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Some" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "t4v" ], null ]
                            ]
                          ]
                        ],
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_eq" ], null ],
                            [],
                            [
                              [ "Ident", [ "SimpleLocal", "t4v" ], null ],
                              [ "Ident", [ "SimpleLocal", "v4" ], null ]
                            ]
                          ],
                          null
                        ]
                      ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "None" ], null ],
                          []
                        ],
                        [
                          [
                            "Constr",
                            [ "Ident", [ "SimpleLocal", "False" ], null ],
                            [],
                            []
                          ],
                          null
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "b" ], null ],
                [
                  [
                    "Let",
                    [ "Ident", [ "SimpleLocal", "a1" ], null ],
                    null,
                    [
                      [
                        "App",
                        [ "Ident", [ "SimpleLocal", "andb" ], null ],
                        [
                          [ "Ident", [ "SimpleLocal", "b1" ], null ],
                          [ "Ident", [ "SimpleLocal", "b2" ], null ]
                        ]
                      ],
                      null
                    ],
                    [
                      [
                        "Let",
                        [ "Ident", [ "SimpleLocal", "a2" ], null ],
                        null,
                        [
                          [
                            "App",
                            [ "Ident", [ "SimpleLocal", "andb" ], null ],
                            [
                              [ "Ident", [ "SimpleLocal", "b3" ], null ],
                              [ "Ident", [ "SimpleLocal", "b4" ], null ]
                            ]
                          ],
                          null
                        ],
                        [
                          [
                            "App",
                            [ "Ident", [ "SimpleLocal", "andb" ], null ],
                            [
                              [ "Ident", [ "SimpleLocal", "a1" ], null ],
                              [ "Ident", [ "SimpleLocal", "a2" ], null ]
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
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "b" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    []
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m1" ], null ],
                [
                  [
                    "Let",
                    [ "Ident", [ "SimpleLocal", "k" ], null ],
                    null,
                    [ [ "Literal", "" ], null ],
                    [
                      [
                        "Let",
                        [ "Ident", [ "SimpleLocal", "v" ], null ],
                        null,
                        [ [ "Literal", "420" ], null ],
                        [
                          [
                            "Let",
                            [ "Ident", [ "SimpleLocal", "e" ], null ],
                            null,
                            [
                              [
                                "Literal",
                                {
                                  "mtype": [
                                    [ "PrimType", [ "String_typ" ] ],
                                    [ "PrimType", [ "String_typ" ] ]
                                  ],
                                  "data": []
                                }
                              ],
                              null
                            ],
                            [
                              [
                                "Builtin",
                                [ [ "Builtin_put" ], null ],
                                [],
                                [
                                  [ "Ident", [ "SimpleLocal", "e" ], null ],
                                  [ "Ident", [ "SimpleLocal", "k" ], null ],
                                  [ "Ident", [ "SimpleLocal", "v" ], null ]
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
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ "Ident", [ "SimpleLocal", "m1" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t17" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t17" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key" ], null ],
                [ [ "Literal", "" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "found" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "found" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    []
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ]
                ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key" ], null ] ],
                null
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t18" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t18" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key" ], null ],
                [ [ "Literal", "" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "found" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "found" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    []
                  ]
                ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "f1" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "f1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "422" ], null ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "f_s1" ], null ],
                [ "Ident", [ "SimpleLocal", "s" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "expected_fail" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "p1" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ "Ident", [ "SimpleLocal", "f_s1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "f_s1_original" ], null ],
                [ [ "Literal", "421" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "not_changed" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "f_s1_original" ], null ],
                      [ "Ident", [ "SimpleLocal", "s" ], null ]
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
                [ "Ident", [ "SimpleLocal", "not_changed" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "msg" ], null ],
                          [
                            [
                              "Literal",
                              "f_s1 changed in a failing transition f1"
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail_msg" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "tname" ], null ],
                            [ "Ident", [ "SimpleLocal", "msg" ], null ]
                          ]
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
                    []
                  ]
                ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t19" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t19" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "p1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "callback_expected_fail" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "expected_fail" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "f2" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "f2" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "s" ], null ],
                [ [ "Literal", "422" ], null ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "f_s1" ], null ],
                [ "Ident", [ "SimpleLocal", "s" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_tag", [ "MLit", "callback_expected_fail" ] ],
                      [
                        "_recipient",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_this_address" ], null ]
                        ]
                      ],
                      [ "_amount", [ "MLit", "0" ] ],
                      [
                        "tname",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "tname" ], null ]
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "ms" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "m" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "SendMsgs", [ "Ident", [ "SimpleLocal", "ms" ], null ] ], null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t20" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t20" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "p1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "f3" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "f3" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key" ], null ],
                [ [ "Literal", "foo1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "val" ], null ],
                [ [ "Literal", "bar1" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key" ], null ] ],
                [ "Ident", [ "SimpleLocal", "val" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "expected_fail" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "p2" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key" ], null ],
                [ [ "Literal", "foo1" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "found" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "found" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    []
                  ]
                ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t21" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t21" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "p2" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "f4" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "f4" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key" ], null ],
                [ [ "Literal", "foo1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "val" ], null ],
                [ [ "Literal", "bar1" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m1" ], null ],
                [ [ "Ident", [ "SimpleLocal", "key" ], null ] ],
                [ "Ident", [ "SimpleLocal", "val" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_tag", [ "MLit", "callback_expected_fail" ] ],
                      [
                        "_recipient",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_this_address" ], null ]
                        ]
                      ],
                      [ "_amount", [ "MLit", "0" ] ],
                      [
                        "tname",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "tname" ], null ]
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "ms" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "m" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "SendMsgs", [ "Ident", [ "SimpleLocal", "ms" ], null ] ], null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t22" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t22" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "p2" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "f5" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "f5" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2" ], null ]
                ],
                null
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "expected_fail" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "p3" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tname" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "valexp" ], null ],
                [ [ "Literal", "420" ], null ]
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "val" ], null ],
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "val" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder", [ "Ident", [ "SimpleLocal", "val" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "val" ], null ],
                                [ "Ident", [ "SimpleLocal", "valexp" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "eq" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "True" ], null ],
                                []
                              ],
                              []
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "False" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident", [ "SimpleLocal", "fail" ], null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "tname" ],
                                        null
                                      ]
                                    ]
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
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "fail" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "t23" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t23" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "p3" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "f6" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "f6" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key1" ], null ],
                [ [ "Literal", "key1a" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "key2" ], null ],
                [ [ "Literal", "key2a" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "f_m2" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "key1" ], null ],
                  [ "Ident", [ "SimpleLocal", "key2" ], null ]
                ],
                null
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "m" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_tag", [ "MLit", "callback_expected_fail" ] ],
                      [
                        "_recipient",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_this_address" ], null ]
                        ]
                      ],
                      [ "_amount", [ "MLit", "0" ] ],
                      [
                        "tname",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "tname" ], null ]
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "ms" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "m" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "SendMsgs", [ "Ident", [ "SimpleLocal", "ms" ], null ] ], null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "t24" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "tname" ], null ],
                [ [ "Literal", "t24" ], null ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "p3" ], null ],
                [ [ "Ident", [ "SimpleLocal", "tname" ], null ] ]
              ],
              null
            ]
          ]
        }
      ]
    }
  }
