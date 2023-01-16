  $ scilla-fmt --json --deannot --human-readable salarybot.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "SalaryBotLib" ], null ],
      "lentries": [
        [
          "LibVar",
          [
            "Ident",
            [ "SimpleLocal", "mk_employee_already_exists_event" ],
            null
          ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "emp_addr" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Employee already exists" ] ],
                    [
                      "employee_address",
                      [
                        "MVar",
                        [ "Ident", [ "SimpleLocal", "emp_addr" ], null ]
                      ]
                    ]
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
          [ "Ident", [ "SimpleLocal", "mk_employee_added_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "emp_addr" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Employee added" ] ],
                    [
                      "employee_address",
                      [
                        "MVar",
                        [ "Ident", [ "SimpleLocal", "emp_addr" ], null ]
                      ]
                    ]
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
          [
            "Ident", [ "SimpleLocal", "mk_employee_non_existent_event" ], null
          ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "emp_addr" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Employee does not exist" ] ],
                    [
                      "employee_address",
                      [
                        "MVar",
                        [ "Ident", [ "SimpleLocal", "emp_addr" ], null ]
                      ]
                    ]
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
          [ "Ident", [ "SimpleLocal", "mk_employee_removed_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "emp_addr" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Employee removed" ] ],
                    [
                      "employee_address",
                      [
                        "MVar",
                        [ "Ident", [ "SimpleLocal", "emp_addr" ], null ]
                      ]
                    ]
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
      "cname": [ "Ident", [ "SimpleLocal", "SalaryBot" ], null ],
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
          [ "Ident", [ "SimpleLocal", "employees" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Bystrx_typ", 20 ] ],
            [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "validate_owner" ], null ],
          "comp_params": [],
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
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "Message",
                              [
                                [
                                  "_exception",
                                  [ "MLit", "Not owner exeption" ]
                                ]
                              ]
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [ "Throw", [ "Ident", [ "SimpleLocal", "e" ], null ] ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "add_funds" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "validate_owner" ], null ],
                []
              ],
              null
            ],
            [ [ "AcceptPayment" ], null ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "add_employee" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "emp_addr" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "salary" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "validate_owner" ], null ],
                []
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "emp_exists" ], null ],
                [ "Ident", [ "SimpleLocal", "employees" ], null ],
                [ [ "Ident", [ "SimpleLocal", "emp_addr" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "emp_exists" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [
                                  "SimpleLocal",
                                  "mk_employee_already_exists_event"
                                ],
                                null
                              ],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "emp_addr" ], null
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
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "MapUpdate",
                          [ "Ident", [ "SimpleLocal", "employees" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "emp_addr" ], null ] ],
                          [ "Ident", [ "SimpleLocal", "salary" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_employee_added_event" ],
                                null
                              ],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "emp_addr" ], null
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
          "comp_name": [ "Ident", [ "SimpleLocal", "remove_employee" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "emp_addr" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "validate_owner" ], null ],
                []
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "emp_exists" ], null ],
                [ "Ident", [ "SimpleLocal", "employees" ], null ],
                [ [ "Ident", [ "SimpleLocal", "emp_addr" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "emp_exists" ], null ],
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
                          "MapUpdate",
                          [ "Ident", [ "SimpleLocal", "employees" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "emp_addr" ], null ] ],
                          null
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_employee_removed_event" ],
                                null
                              ],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "emp_addr" ], null
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
                              "App",
                              [
                                "Ident",
                                [
                                  "SimpleLocal",
                                  "mk_employee_non_existent_event"
                                ],
                                null
                              ],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "emp_addr" ], null
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
          "comp_name": [ "Ident", [ "SimpleLocal", "pay_all_salaries" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "validate_owner" ], null ],
                []
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "employees_local" ], null ],
                [ "Ident", [ "SimpleLocal", "employees" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "emp_sal_pairs" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_list" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "employees_local" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mapper" ], null ],
                [
                  [
                    "TApp",
                    [ "Ident", [ "SimpleLocal", "list_map" ], null ],
                    [
                      [
                        "ADT",
                        [
                          "Ident",
                          [ "SimpleLocal", "Pair" ],
                          { "fname": "", "lnum": 0, "cnum": 0 }
                        ],
                        [
                          [ "PrimType", [ "Bystrx_typ", 20 ] ],
                          [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
                        ]
                      ],
                      [ "PrimType", [ "Msg_typ" ] ]
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
                [ "Ident", [ "SimpleLocal", "mapf" ], null ],
                [
                  [
                    "Fun",
                    [ "Ident", [ "SimpleLocal", "empsal" ], null ],
                    [
                      "ADT",
                      [
                        "Ident",
                        [ "SimpleLocal", "Pair" ],
                        { "fname": "", "lnum": 0, "cnum": 0 }
                      ],
                      [
                        [ "PrimType", [ "Bystrx_typ", 20 ] ],
                        [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
                      ]
                    ],
                    [
                      [
                        "MatchExpr",
                        [ "Ident", [ "SimpleLocal", "empsal" ], null ],
                        [
                          [
                            [
                              "Constructor",
                              [ "Ident", [ "SimpleLocal", "Pair" ], null ],
                              [
                                [
                                  "Binder",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "emp_addr" ],
                                    null
                                  ]
                                ],
                                [
                                  "Binder",
                                  [ "Ident", [ "SimpleLocal", "sal" ], null ]
                                ]
                              ]
                            ],
                            [
                              [
                                "Message",
                                [
                                  [ "_tag", [ "MLit", "" ] ],
                                  [
                                    "_recipient",
                                    [
                                      "MVar",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "emp_addr" ],
                                        null
                                      ]
                                    ]
                                  ],
                                  [
                                    "_amount",
                                    [
                                      "MVar",
                                      [
                                        "Ident", [ "SimpleLocal", "sal" ], null
                                      ]
                                    ]
                                  ]
                                ]
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
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "messages" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "mapper" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "mapf" ], null ],
                      [ "Ident", [ "SimpleLocal", "emp_sal_pairs" ], null ]
                    ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "SendMsgs", [ "Ident", [ "SimpleLocal", "messages" ], null ] ],
              null
            ]
          ]
        }
      ]
    }
  }
