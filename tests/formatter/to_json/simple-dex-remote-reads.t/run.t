  $ scilla-fmt --json --deannot --human-readable simple-dex-remote-reads.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "SimpleExchangeLib" ], null ],
      "lentries": [
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Order" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Order" ], null ],
              "c_arg_types": [
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "Address", "Address" ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                [ "Address", "Address" ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
              ]
            }
          ]
        ],
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
          [ "Ident", [ "SimpleLocal", "false" ], null ],
          null,
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "False" ], null ], [], [] ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "zero" ], null ],
          null,
          [ [ "Literal", "0" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "one" ], null ],
          null,
          [ [ "Literal", "1" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
          [
            "FunType",
            [ "PrimType", [ "Msg_typ" ] ],
            [
              "ADT",
              [
                "Ident",
                [ "SimpleLocal", "List" ],
                { "fname": "", "lnum": 0, "cnum": 0 }
              ],
              [ [ "PrimType", [ "Msg_typ" ] ] ]
            ]
          ],
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "msg" ], null ],
              [ "PrimType", [ "Msg_typ" ] ],
              [
                [
                  "Let",
                  [ "Ident", [ "SimpleLocal", "mty" ], null ],
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
                        [ "Ident", [ "SimpleLocal", "mty" ], null ]
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
          [ "Ident", [ "SimpleLocal", "two_msgs" ], null ],
          [
            "FunType",
            [ "PrimType", [ "Msg_typ" ] ],
            [
              "FunType",
              [ "PrimType", [ "Msg_typ" ] ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "List" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                [ [ "PrimType", [ "Msg_typ" ] ] ]
              ]
            ]
          ],
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "msg1" ], null ],
              [ "PrimType", [ "Msg_typ" ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "msg2" ], null ],
                  [ "PrimType", [ "Msg_typ" ] ],
                  [
                    [
                      "Let",
                      [ "Ident", [ "SimpleLocal", "first" ], null ],
                      null,
                      [
                        [
                          "App",
                          [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "msg1" ], null ] ]
                        ],
                        null
                      ],
                      [
                        [
                          "Constr",
                          [ "Ident", [ "SimpleLocal", "Cons" ], null ],
                          [ [ "PrimType", [ "Msg_typ" ] ] ],
                          [
                            [ "Ident", [ "SimpleLocal", "msg2" ], null ],
                            [ "Ident", [ "SimpleLocal", "first" ], null ]
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_transfer_msg" ], null ],
          [
            "FunType",
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
              "FunType",
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                "FunType",
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [
                  "FunType",
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [
                    "FunType",
                    [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                    [ "PrimType", [ "Msg_typ" ] ]
                  ]
                ]
              ]
            ]
          ],
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "transfer_from" ], null ],
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
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "token_address" ], null ],
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "from" ], null ],
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [
                        [
                          "Fun",
                          [ "Ident", [ "SimpleLocal", "to" ], null ],
                          [ "PrimType", [ "Bystrx_typ", 20 ] ],
                          [
                            [
                              "Fun",
                              [ "Ident", [ "SimpleLocal", "amount" ], null ],
                              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                              [
                                [
                                  "Let",
                                  [ "Ident", [ "SimpleLocal", "tag" ], null ],
                                  null,
                                  [
                                    [
                                      "MatchExpr",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "transfer_from" ],
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
                                          [
                                            [ "Literal", "TransferFrom" ], null
                                          ]
                                        ],
                                        [
                                          [
                                            "Constructor",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "False" ],
                                              null
                                            ],
                                            []
                                          ],
                                          [ [ "Literal", "Transfer" ], null ]
                                        ]
                                      ]
                                    ],
                                    null
                                  ],
                                  [
                                    [
                                      "Message",
                                      [
                                        [
                                          "_recipient",
                                          [
                                            "MVar",
                                            [
                                              "Ident",
                                              [
                                                "SimpleLocal", "token_address"
                                              ],
                                              null
                                            ]
                                          ]
                                        ],
                                        [
                                          "_tag",
                                          [
                                            "MVar",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "tag" ],
                                              null
                                            ]
                                          ]
                                        ],
                                        [ "_amount", [ "MLit", "0" ] ],
                                        [
                                          "from",
                                          [
                                            "MVar",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "from" ],
                                              null
                                            ]
                                          ]
                                        ],
                                        [
                                          "to",
                                          [
                                            "MVar",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "to" ],
                                              null
                                            ]
                                          ]
                                        ],
                                        [
                                          "amount",
                                          [
                                            "MVar",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "amount" ],
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_place_order_msg" ], null ],
          [
            "FunType",
            [ "PrimType", [ "Bystrx_typ", 20 ] ],
            [
              "FunType",
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                "FunType",
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [
                  "FunType",
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [
                    "ADT",
                    [
                      "Ident",
                      [ "SimpleLocal", "List" ],
                      { "fname": "", "lnum": 0, "cnum": 0 }
                    ],
                    [ [ "PrimType", [ "Msg_typ" ] ] ]
                  ]
                ]
              ]
            ]
          ],
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "token_address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "from" ], null ],
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "to" ], null ],
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [
                        [
                          "Fun",
                          [ "Ident", [ "SimpleLocal", "amount" ], null ],
                          [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                          [
                            [
                              "Let",
                              [ "Ident", [ "SimpleLocal", "msg" ], null ],
                              null,
                              [
                                [
                                  "App",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "mk_transfer_msg" ],
                                    null
                                  ],
                                  [
                                    [
                                      "Ident", [ "SimpleLocal", "true" ], null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "token_address" ],
                                      null
                                    ],
                                    [
                                      "Ident", [ "SimpleLocal", "from" ], null
                                    ],
                                    [ "Ident", [ "SimpleLocal", "to" ], null ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "amount" ],
                                      null
                                    ]
                                  ]
                                ],
                                null
                              ],
                              [
                                [
                                  "App",
                                  [
                                    "Ident", [ "SimpleLocal", "one_msg" ], null
                                  ],
                                  [
                                    [ "Ident", [ "SimpleLocal", "msg" ], null ]
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_make_order_msgs" ], null ],
          [
            "FunType",
            [ "PrimType", [ "Bystrx_typ", 20 ] ],
            [
              "FunType",
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
              [
                "FunType",
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [
                  "FunType",
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [
                    "FunType",
                    [ "PrimType", [ "Bystrx_typ", 20 ] ],
                    [
                      "FunType",
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [
                        "FunType",
                        [ "PrimType", [ "Bystrx_typ", 20 ] ],
                        [
                          "ADT",
                          [
                            "Ident",
                            [ "SimpleLocal", "List" ],
                            { "fname": "", "lnum": 0, "cnum": 0 }
                          ],
                          [ [ "PrimType", [ "Msg_typ" ] ] ]
                        ]
                      ]
                    ]
                  ]
                ]
              ]
            ]
          ],
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "token_sell_address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "sell_amount" ], null ],
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "token_buy_address" ], null ],
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [
                        [
                          "Fun",
                          [ "Ident", [ "SimpleLocal", "buy_amount" ], null ],
                          [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                          [
                            [
                              "Fun",
                              [
                                "Ident",
                                [ "SimpleLocal", "this_address" ],
                                null
                              ],
                              [ "PrimType", [ "Bystrx_typ", 20 ] ],
                              [
                                [
                                  "Fun",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "order_placer" ],
                                    null
                                  ],
                                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                                  [
                                    [
                                      "Fun",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "order_maker" ],
                                        null
                                      ],
                                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                                      [
                                        [
                                          "Let",
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sell_msg" ],
                                            null
                                          ],
                                          null,
                                          [
                                            [
                                              "App",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "mk_transfer_msg"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "false" ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "token_sell_address"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "this_address"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "order_maker"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "sell_amount"
                                                  ],
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
                                                [ "SimpleLocal", "buy_msg" ],
                                                null
                                              ],
                                              null,
                                              [
                                                [
                                                  "App",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "mk_transfer_msg"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "true" ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "token_buy_address"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "order_maker"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "order_placer"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "buy_amount"
                                                      ],
                                                      null
                                                    ]
                                                  ]
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "App",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal", "two_msgs"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "sell_msg"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "buy_msg"
                                                      ],
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
    "elibs": [ [ [ "Ident", [ "SimpleLocal", "IntUtils" ], null ], null ] ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "SimpleExchange" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "initial_admin" ], null ],
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
          [ "Ident", [ "SimpleLocal", "admin" ], null ],
          [ "Address", "Address" ],
          [
            [ "Var", [ "Ident", [ "SimpleLocal", "initial_admin" ], null ] ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "listed_tokens" ], null ],
          [
            "MapType",
            [ "PrimType", [ "String_typ" ] ],
            [ "Address", "Address" ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "String_typ" ] ], [ "Address", "Address" ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "active_orders" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
            [
              "ADT",
              [
                "Ident",
                [ "SimpleLocal", "Order" ],
                { "fname": "", "lnum": 0, "cnum": 0 }
              ],
              []
            ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [
                    "ADT",
                    [
                      "Ident",
                      [ "SimpleLocal", "Order" ],
                      { "fname": "", "lnum": 0, "cnum": 0 }
                    ],
                    []
                  ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "next_order_no" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
          [ [ "Var", [ "Ident", [ "SimpleLocal", "zero" ], null ] ], null ]
        ]
      ],
      "ccomps": [
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "ThrowListingStatusException" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token_code" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "expected_status" ], null ],
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
              [ "Ident", [ "SimpleLocal", "actual_status" ], null ],
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_exception", [ "MLit", "UnexpectedListingStatus" ] ],
                      [
                        "token_code",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "token_code" ], null ]
                        ]
                      ],
                      [
                        "expected",
                        [
                          "MVar",
                          [
                            "Ident", [ "SimpleLocal", "expected_status" ], null
                          ]
                        ]
                      ],
                      [
                        "actual",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "actual_status" ], null ]
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
            "Ident",
            [ "SimpleLocal", "ThrowInsufficientAllowanceException" ],
            null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "expected" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "actual" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
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
                      [ "_exception", [ "MLit", "InsufficientAllowance" ] ],
                      [
                        "token",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "token" ], null ]
                        ]
                      ],
                      [
                        "expected",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "expected" ], null ]
                        ]
                      ],
                      [
                        "actual",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "actual" ], null ]
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
            "Ident", [ "SimpleLocal", "CheckSenderIsAdmin" ], null
          ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "current_admin" ], null ],
                [ "Ident", [ "SimpleLocal", "admin" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_admin" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                      [ "Ident", [ "SimpleLocal", "current_admin" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_admin" ], null ],
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
                                  "_exception", [ "MLit", "SenderIsNotAdmin" ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "SetAdmin" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "new_admin" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "CheckSenderIsAdmin" ], null ],
                []
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "admin" ], null ],
                [ "Ident", [ "SimpleLocal", "new_admin" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "CheckIsTokenUnlisted" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token_code" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "token_code_is_listed" ], null ],
                [ "Ident", [ "SimpleLocal", "listed_tokens" ], null ],
                [ [ "Ident", [ "SimpleLocal", "token_code" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "token_code_is_listed" ], null ],
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
                          [
                            "Ident",
                            [ "SimpleLocal", "ThrowListingStatusException" ],
                            null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "token_code" ], null ],
                            [ "Ident", [ "SimpleLocal", "false" ], null ],
                            [
                              "Ident",
                              [ "SimpleLocal", "token_code_is_listed" ],
                              null
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
          "comp_name": [ "Ident", [ "SimpleLocal", "ListToken" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token_code" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "new_token" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "CheckSenderIsAdmin" ], null ],
                []
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "CheckIsTokenUnlisted" ], null ],
                [ [ "Ident", [ "SimpleLocal", "token_code" ], null ] ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "listed_tokens" ], null ],
                [ [ "Ident", [ "SimpleLocal", "token_code" ], null ] ],
                [ "Ident", [ "SimpleLocal", "new_token" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "CheckAllowance" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "expected" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "RemoteMapGet",
                [ "Ident", [ "SimpleLocal", "actual_opt" ], null ],
                [ "Ident", [ "SimpleLocal", "token" ], null ],
                [ "Ident", [ "SimpleLocal", "allowances" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                  [ "Ident", [ "SimpleLocal", "_this_address" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "actual" ], null ],
                [
                  [
                    "MatchExpr",
                    [ "Ident", [ "SimpleLocal", "actual_opt" ], null ],
                    [
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Some" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "x" ], null ]
                            ]
                          ]
                        ],
                        [
                          [ "Var", [ "Ident", [ "SimpleLocal", "x" ], null ] ],
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
                            "Var", [ "Ident", [ "SimpleLocal", "zero" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_sufficient" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "uint128_le" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "expected" ], null ],
                      [ "Ident", [ "SimpleLocal", "actual" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_sufficient" ], null ],
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
                            "Ident",
                            [
                              "SimpleLocal",
                              "ThrowInsufficientAllowanceException"
                            ],
                            null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "token" ], null ],
                            [ "Ident", [ "SimpleLocal", "expected" ], null ],
                            [ "Ident", [ "SimpleLocal", "actual" ], null ]
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
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "AddOrder" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "order" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Order" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "order_no" ], null ],
                [ "Ident", [ "SimpleLocal", "next_order_no" ], null ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "active_orders" ], null ],
                [ [ "Ident", [ "SimpleLocal", "order_no" ], null ] ],
                [ "Ident", [ "SimpleLocal", "order" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "new_order_no" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_add" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "order_no" ], null ],
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
                "Store",
                [ "Ident", [ "SimpleLocal", "next_order_no" ], null ],
                [ "Ident", [ "SimpleLocal", "new_order_no" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "PlaceOrder" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token_code_sell" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "sell_amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "token_code_buy" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "buy_amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "token_sell_opt" ], null ],
                [ "Ident", [ "SimpleLocal", "listed_tokens" ], null ],
                [ [ "Ident", [ "SimpleLocal", "token_code_sell" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "token_buy_opt" ], null ],
                [ "Ident", [ "SimpleLocal", "listed_tokens" ], null ],
                [ [ "Ident", [ "SimpleLocal", "token_code_buy" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "token_sell_opt" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "token_sell" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "token_buy_opt" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Binder",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "token_buy" ],
                                      null
                                    ]
                                  ]
                                ]
                              ],
                              [
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "CheckAllowance" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "token_sell" ],
                                        null
                                      ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "sell_amount" ],
                                        null
                                      ]
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "msg" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [
                                            "SimpleLocal", "mk_place_order_msg"
                                          ],
                                          null
                                        ],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "token_sell" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "_sender" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "_this_address" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sell_amount" ],
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
                                    "SendMsgs",
                                    [ "Ident", [ "SimpleLocal", "msg" ], null ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "Bind",
                                    [
                                      "Ident", [ "SimpleLocal", "order" ], null
                                    ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "Order" ],
                                          null
                                        ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "_sender" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "token_sell" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sell_amount" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "token_buy" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "buy_amount" ],
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
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "AddOrder" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "order" ],
                                        null
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
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal",
                                        "ThrowListingStatusException"
                                      ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "token_code_buy" ],
                                        null
                                      ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "true" ],
                                        null
                                      ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "false" ],
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
                          [
                            "Ident",
                            [ "SimpleLocal", "ThrowListingStatusException" ],
                            null
                          ],
                          [
                            [
                              "Ident",
                              [ "SimpleLocal", "token_code_sell" ],
                              null
                            ],
                            [ "Ident", [ "SimpleLocal", "true" ], null ],
                            [ "Ident", [ "SimpleLocal", "false" ], null ]
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
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "MatchOrder" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "order_id" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "order" ], null ],
                [ "Ident", [ "SimpleLocal", "active_orders" ], null ],
                [ [ "Ident", [ "SimpleLocal", "order_id" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "order" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Order" ], null ],
                          [
                            [
                              "Binder",
                              [
                                "Ident",
                                [ "SimpleLocal", "order_placer" ],
                                null
                              ]
                            ],
                            [
                              "Binder",
                              [
                                "Ident", [ "SimpleLocal", "sell_token" ], null
                              ]
                            ],
                            [
                              "Binder",
                              [
                                "Ident", [ "SimpleLocal", "sell_amount" ], null
                              ]
                            ],
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "buy_token" ], null ]
                            ],
                            [
                              "Binder",
                              [
                                "Ident", [ "SimpleLocal", "buy_amount" ], null
                              ]
                            ]
                          ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [
                            "Ident", [ "SimpleLocal", "CheckAllowance" ], null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "buy_token" ], null ],
                            [ "Ident", [ "SimpleLocal", "buy_amount" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_make_order_msgs" ],
                                null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "sell_token" ],
                                  null
                                ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "sell_amount" ],
                                  null
                                ],
                                [
                                  "Ident", [ "SimpleLocal", "buy_token" ], null
                                ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "buy_amount" ],
                                  null
                                ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "_this_address" ],
                                  null
                                ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "order_placer" ],
                                  null
                                ],
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
                          "SendMsgs",
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "MapUpdate",
                          [ "Ident", [ "SimpleLocal", "active_orders" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "order_id" ], null ] ],
                          null
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
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "Message",
                              [
                                [ "_exception", [ "MLit", "UnknownOrder" ] ],
                                [
                                  "order_id",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "order_id" ],
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
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "CheckInitiator" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "initiator" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "initiator_is_this" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "initiator" ], null ],
                      [ "Ident", [ "SimpleLocal", "_this_address" ], null ]
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
                [ "Ident", [ "SimpleLocal", "initiator_is_this" ], null ],
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
                                  "_exception", [ "MLit", "UnexpecedTransfer" ]
                                ],
                                [
                                  "token_address",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_sender" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "initiator",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "initiator" ],
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
          "comp_name": [
            "Ident", [ "SimpleLocal", "RecipientAcceptTransferFrom" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "initiator" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "sender" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "CheckInitiator" ], null ],
                [ [ "Ident", [ "SimpleLocal", "initiator" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "TransferFromSuccessCallBack" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "initiator" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "sender" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "CheckInitiator" ], null ],
                [ [ "Ident", [ "SimpleLocal", "initiator" ], null ] ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "TransferSuccessCallBack" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "initiator" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "sender" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "CheckInitiator" ], null ],
                [ [ "Ident", [ "SimpleLocal", "initiator" ], null ] ]
              ],
              null
            ]
          ]
        }
      ]
    }
  }
