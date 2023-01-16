  $ scilla-fmt --json --deannot --human-readable ud-proxy.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "HoldingLib" ], null ],
      "lentries": [
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "true" ], null ],
          null,
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "True" ], null ], [], [] ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "nilMessage" ], null ],
          null,
          [
            [
              "Constr",
              [ "Ident", [ "SimpleLocal", "Nil" ], null ],
              [ [ "PrimType", [ "Msg_typ" ] ] ],
              []
            ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "oneMsg" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "msg" ], null ],
              [ "PrimType", [ "Msg_typ" ] ],
              [
                [
                  "Constr",
                  [ "Ident", [ "SimpleLocal", "Cons" ], null ],
                  [ [ "PrimType", [ "Msg_typ" ] ] ],
                  [
                    [ "Ident", [ "SimpleLocal", "msg" ], null ],
                    [ "Ident", [ "SimpleLocal", "nilMessage" ], null ]
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
          [ "Ident", [ "SimpleLocal", "eAdminSet" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "isApproved" ], null ],
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
                    [
                      "Message",
                      [
                        [ "_eventname", [ "MLit", "AdminSet" ] ],
                        [
                          "address",
                          [
                            "MVar",
                            [ "Ident", [ "SimpleLocal", "address" ], null ]
                          ]
                        ],
                        [
                          "isApproved",
                          [
                            "MVar",
                            [ "Ident", [ "SimpleLocal", "isApproved" ], null ]
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
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "eError" ], null ],
          null,
          [ [ "Message", [ [ "_eventname", [ "MLit", "Error" ] ] ] ], null ]
        ]
      ]
    },
    "elibs": [
      [ [ "Ident", [ "SimpleLocal", "BoolUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "ListUtils" ], null ], null ]
    ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "Admin" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "initialAdmin" ], null ],
          [ "PrimType", [ "Bystrx_typ", 20 ] ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "registry" ], null ],
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
          [ "Ident", [ "SimpleLocal", "admins" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Bystrx_typ", 20 ] ],
            [
              "ADT",
              [
                "Ident",
                [ "SimpleLocal", "Bool" ],
                { "fname": "", "lnum": 0, "cnum": 0 }
              ],
              []
            ]
          ],
          [
            [
              "Let",
              [ "Ident", [ "SimpleLocal", "empty" ], null ],
              null,
              [
                [
                  "Literal",
                  {
                    "mtype": [
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [
                        "ADT",
                        [
                          "Ident",
                          [ "SimpleLocal", "Bool" ],
                          { "fname": "", "lnum": 0, "cnum": 0 }
                        ],
                        []
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
                    [ "Ident", [ "SimpleLocal", "empty" ], null ],
                    [ "Ident", [ "SimpleLocal", "initialAdmin" ], null ],
                    [ "Ident", [ "SimpleLocal", "true" ], null ]
                  ]
                ],
                null
              ]
            ],
            null
          ]
        ]
      ],
      "ccomps": [
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "setAdmin" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "isApproved" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Bool" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "maybeAdmin" ], null ],
                [ "Ident", [ "SimpleLocal", "admins" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "isSenderAdmin" ], null ],
                [
                  [
                    "MatchExpr",
                    [ "Ident", [ "SimpleLocal", "maybeAdmin" ], null ],
                    [
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Some" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "approval" ], null ]
                            ]
                          ]
                        ],
                        [
                          [
                            "Var",
                            [ "Ident", [ "SimpleLocal", "approval" ], null ]
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
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "isSenderAdmin" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "admins" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "address" ], null ] ],
                          [ "Ident", [ "SimpleLocal", "isApproved" ], null ]
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
                              [ "Ident", [ "SimpleLocal", "eAdminSet" ], null ],
                              [
                                [ "Ident", [ "SimpleLocal", "address" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "isApproved" ],
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
                          "CreateEvnt",
                          [ "Ident", [ "SimpleLocal", "eError" ], null ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "bestow" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "label" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "owner" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "resolver" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "maybeAdmin" ], null ],
                [ "Ident", [ "SimpleLocal", "admins" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "isSenderAdmin" ], null ],
                [
                  [
                    "MatchExpr",
                    [ "Ident", [ "SimpleLocal", "maybeAdmin" ], null ],
                    [
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Some" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "isAdmin" ], null ]
                            ]
                          ]
                        ],
                        [
                          [
                            "Var",
                            [ "Ident", [ "SimpleLocal", "isAdmin" ], null ]
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
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "isSenderAdmin" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ],
                          [
                            [
                              "Let",
                              [ "Ident", [ "SimpleLocal", "m" ], null ],
                              null,
                              [
                                [
                                  "Message",
                                  [
                                    [ "_tag", [ "MLit", "bestow" ] ],
                                    [
                                      "_recipient",
                                      [
                                        "MVar",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "registry" ],
                                          null
                                        ]
                                      ]
                                    ],
                                    [ "_amount", [ "MLit", "0" ] ],
                                    [
                                      "label",
                                      [
                                        "MVar",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "label" ],
                                          null
                                        ]
                                      ]
                                    ],
                                    [
                                      "owner",
                                      [
                                        "MVar",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "owner" ],
                                          null
                                        ]
                                      ]
                                    ],
                                    [
                                      "resolver",
                                      [
                                        "MVar",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "resolver" ],
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
                                  "App",
                                  [
                                    "Ident", [ "SimpleLocal", "oneMsg" ], null
                                  ],
                                  [ [ "Ident", [ "SimpleLocal", "m" ], null ] ]
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
                          "SendMsgs",
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ]
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
                          "CreateEvnt",
                          [ "Ident", [ "SimpleLocal", "eError" ], null ]
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
        }
      ]
    }
  }
