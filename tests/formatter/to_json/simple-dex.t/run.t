  $ scilla-fmt --json --deannot --human-readable simple-dex.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "SimpleDex" ], null ],
      "lentries": [
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "getAddressFromPair" ], null ],
          null,
          [
            [
              "TApp",
              [ "Ident", [ "SimpleLocal", "fst" ], null ],
              [
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
              ]
            ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "getValueFromPair" ], null ],
          null,
          [
            [
              "TApp",
              [ "Ident", [ "SimpleLocal", "snd" ], null ],
              [
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
              ]
            ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "make_error_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "location" ], null ],
              [ "PrimType", [ "String_typ" ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "msg" ], null ],
                  [ "PrimType", [ "String_typ" ] ],
                  [
                    [
                      "Message",
                      [
                        [ "_eventname", [ "MLit", "Error" ] ],
                        [
                          "raisedAt",
                          [
                            "MVar",
                            [ "Ident", [ "SimpleLocal", "location" ], null ]
                          ]
                        ],
                        [
                          "message",
                          [
                            "MVar", [ "Ident", [ "SimpleLocal", "msg" ], null ]
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
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Order" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Order" ], null ],
              "c_arg_types": [
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
              ]
            }
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "createOrderId" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "order" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Order" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ],
              [
                [
                  "Builtin",
                  [ [ "Builtin_sha256hash" ], null ],
                  [],
                  [ [ "Ident", [ "SimpleLocal", "order" ], null ] ]
                ],
                null
              ]
            ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "transaction_msg" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "tag" ], null ],
                  [ "PrimType", [ "String_typ" ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "transferFromAddr" ], null ],
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [
                        [
                          "Fun",
                          [
                            "Ident", [ "SimpleLocal", "transferToAddr" ], null
                          ],
                          [ "PrimType", [ "Bystrx_typ", 20 ] ],
                          [
                            [
                              "Fun",
                              [
                                "Ident", [ "SimpleLocal", "transferAmt" ], null
                              ],
                              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                              [
                                [
                                  "Message",
                                  [
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
                                    [
                                      "_recipient",
                                      [
                                        "MVar",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "recipient" ],
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
                                          [ "SimpleLocal", "transferFromAddr" ],
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
                                          [ "SimpleLocal", "transferToAddr" ],
                                          null
                                        ]
                                      ]
                                    ],
                                    [
                                      "tokens",
                                      [
                                        "MVar",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "transferAmt" ],
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "transaction_msg_as_list" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "tag" ], null ],
                  [ "PrimType", [ "String_typ" ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "transferFromAddr" ], null ],
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [
                        [
                          "Fun",
                          [
                            "Ident", [ "SimpleLocal", "transferToAddr" ], null
                          ],
                          [ "PrimType", [ "Bystrx_typ", 20 ] ],
                          [
                            [
                              "Fun",
                              [
                                "Ident", [ "SimpleLocal", "transferAmt" ], null
                              ],
                              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                              [
                                [
                                  "Let",
                                  [
                                    "Ident", [ "SimpleLocal", "one_msg" ], null
                                  ],
                                  null,
                                  [
                                    [
                                      "Fun",
                                      [
                                        "Ident", [ "SimpleLocal", "msg" ], null
                                      ],
                                      [ "PrimType", [ "Msg_typ" ] ],
                                      [
                                        [
                                          "Let",
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "nil_msg" ],
                                            null
                                          ],
                                          null,
                                          [
                                            [
                                              "Constr",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "Nil" ],
                                                null
                                              ],
                                              [ [ "PrimType", [ "Msg_typ" ] ] ],
                                              []
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
                                              [ [ "PrimType", [ "Msg_typ" ] ] ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "msg" ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "nil_msg" ],
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
                                  ],
                                  [
                                    [
                                      "Let",
                                      [
                                        "Ident", [ "SimpleLocal", "msg" ], null
                                      ],
                                      null,
                                      [
                                        [
                                          "App",
                                          [
                                            "Ident",
                                            [
                                              "SimpleLocal", "transaction_msg"
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "recipient" ],
                                              null
                                            ],
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "tag" ],
                                              null
                                            ],
                                            [
                                              "Ident",
                                              [
                                                "SimpleLocal",
                                                "transferFromAddr"
                                              ],
                                              null
                                            ],
                                            [
                                              "Ident",
                                              [
                                                "SimpleLocal", "transferToAddr"
                                              ],
                                              null
                                            ],
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "transferAmt" ],
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
                                            [ "SimpleLocal", "one_msg" ],
                                            null
                                          ],
                                          [
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "msg" ],
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "computePendingReturnsVal" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "prevVal" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Option" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                [ [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ] ]
              ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "incomingTokensAmt" ], null ],
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [
                    [
                      "MatchExpr",
                      [ "Ident", [ "SimpleLocal", "prevVal" ], null ],
                      [
                        [
                          [
                            "Constructor",
                            [ "Ident", [ "SimpleLocal", "Some" ], null ],
                            [
                              [
                                "Binder",
                                [ "Ident", [ "SimpleLocal", "v" ], null ]
                              ]
                            ]
                          ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_add" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "v" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "incomingTokensAmt" ],
                                  null
                                ]
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
                              "Var",
                              [
                                "Ident",
                                [ "SimpleLocal", "incomingTokensAmt" ],
                                null
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
          ]
        ]
      ]
    },
    "elibs": [ [ [ "Ident", [ "SimpleLocal", "PairUtils" ], null ], null ] ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "SimpleDex" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "contractOwner" ], null ],
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
          [ "Ident", [ "SimpleLocal", "orderbook" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Bystrx_typ", 32 ] ],
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
                  [ "PrimType", [ "Bystrx_typ", 32 ] ],
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
          [ "Ident", [ "SimpleLocal", "orderInfo" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Bystrx_typ", 32 ] ],
            [
              "ADT",
              [
                "Ident",
                [ "SimpleLocal", "Pair" ],
                { "fname": "", "lnum": 0, "cnum": 0 }
              ],
              [
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "PrimType", [ "Bnum_typ" ] ]
              ]
            ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Bystrx_typ", 32 ] ],
                  [
                    "ADT",
                    [
                      "Ident",
                      [ "SimpleLocal", "Pair" ],
                      { "fname": "", "lnum": 0, "cnum": 0 }
                    ],
                    [
                      [ "PrimType", [ "Bystrx_typ", 20 ] ],
                      [ "PrimType", [ "Bnum_typ" ] ]
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
          [ "Ident", [ "SimpleLocal", "pendingReturns" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Bystrx_typ", 20 ] ],
            [
              "MapType",
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [
                    "MapType",
                    [ "PrimType", [ "Bystrx_typ", 20 ] ],
                    [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
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
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "makeOrder" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "tokenA" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "valueA" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "tokenB" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "valueB" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "expirationBlock" ], null ],
              [ "PrimType", [ "Bnum_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "ReadFromBC",
                [ "Ident", [ "SimpleLocal", "currentBlock" ], null ],
                [ "CurBlockNum" ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "validExpirationBlock" ], null ],
                [
                  [
                    "Let",
                    [
                      "Ident", [ "SimpleLocal", "minBlocksFromCreation" ], null
                    ],
                    null,
                    [ [ "Literal", "50" ], null ],
                    [
                      [
                        "Let",
                        [ "Ident", [ "SimpleLocal", "minExpiration" ], null ],
                        null,
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_badd" ], null ],
                            [],
                            [
                              [
                                "Ident",
                                [ "SimpleLocal", "currentBlock" ],
                                null
                              ],
                              [
                                "Ident",
                                [ "SimpleLocal", "minBlocksFromCreation" ],
                                null
                              ]
                            ]
                          ],
                          null
                        ],
                        [
                          [
                            "Builtin",
                            [ [ "Builtin_blt" ], null ],
                            [],
                            [
                              [
                                "Ident",
                                [ "SimpleLocal", "minExpiration" ],
                                null
                              ],
                              [
                                "Ident",
                                [ "SimpleLocal", "expirationBlock" ],
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
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "validExpirationBlock" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "newOrder" ], null ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "Order" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "tokenA" ], null ],
                                [ "Ident", [ "SimpleLocal", "valueA" ], null ],
                                [ "Ident", [ "SimpleLocal", "tokenB" ], null ],
                                [ "Ident", [ "SimpleLocal", "valueB" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "orderId" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "createOrderId" ],
                                null
                              ],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "newOrder" ], null
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
                          "MapUpdate",
                          [ "Ident", [ "SimpleLocal", "orderbook" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "orderId" ], null ] ],
                          [ "Ident", [ "SimpleLocal", "newOrder" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "p" ], null ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "Pair" ], null ],
                              [
                                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                                [ "PrimType", [ "Bnum_typ" ] ]
                              ],
                              [
                                [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "expirationBlock" ],
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
                          "MapUpdate",
                          [ "Ident", [ "SimpleLocal", "orderInfo" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "orderId" ], null ] ],
                          [ "Ident", [ "SimpleLocal", "p" ], null ]
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
                                [ "_eventname", [ "MLit", "Order Created" ] ],
                                [
                                  "hash",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "orderId" ],
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
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ],
                          [
                            [
                              "Let",
                              [ "Ident", [ "SimpleLocal", "tag" ], null ],
                              null,
                              [ [ "Literal", "TransferFrom" ], null ],
                              [
                                [
                                  "Let",
                                  [ "Ident", [ "SimpleLocal", "zero" ], null ],
                                  null,
                                  [ [ "Literal", "0" ], null ],
                                  [
                                    [
                                      "App",
                                      [
                                        "Ident",
                                        [
                                          "SimpleLocal",
                                          "transaction_msg_as_list"
                                        ],
                                        null
                                      ],
                                      [
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "tokenA" ],
                                          null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "tag" ],
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
                                          [ "SimpleLocal", "valueA" ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "Let",
                              [ "Ident", [ "SimpleLocal", "func" ], null ],
                              null,
                              [ [ "Literal", "makeOrder" ], null ],
                              [
                                [
                                  "Let",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "error_msg" ],
                                    null
                                  ],
                                  null,
                                  [
                                    [
                                      "Literal",
                                      "Expiration block must be at least 50 blocks more than current block"
                                    ],
                                    null
                                  ],
                                  [
                                    [
                                      "App",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "make_error_event" ],
                                        null
                                      ],
                                      [
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "func" ],
                                          null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "error_msg" ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "fillOrder" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "orderId" ], null ],
              [ "PrimType", [ "Bystrx_typ", 32 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "getOrder" ], null ],
                [ "Ident", [ "SimpleLocal", "orderbook" ], null ],
                [ [ "Ident", [ "SimpleLocal", "orderId" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "getOrder" ], null ],
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
                              [ "Ident", [ "SimpleLocal", "tokenA" ], null ]
                            ],
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "valueA" ], null ]
                            ],
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "tokenB" ], null ]
                            ],
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "valueB" ], null ]
                            ]
                          ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "MapGet",
                          [
                            "Ident", [ "SimpleLocal", "optionOrderInfo" ], null
                          ],
                          [ "Ident", [ "SimpleLocal", "orderInfo" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "orderId" ], null ] ],
                          true
                        ],
                        null
                      ],
                      [
                        [
                          "MatchStmt",
                          [
                            "Ident", [ "SimpleLocal", "optionOrderInfo" ], null
                          ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Binder",
                                    [
                                      "Ident", [ "SimpleLocal", "info" ], null
                                    ]
                                  ]
                                ]
                              ],
                              [
                                [
                                  [
                                    "ReadFromBC",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "currentBlock" ],
                                      null
                                    ],
                                    [ "CurBlockNum" ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "Bind",
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal", "blockBeforeExpiration"
                                      ],
                                      null
                                    ],
                                    [
                                      [
                                        "Let",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "getBNum" ],
                                          null
                                        ],
                                        null,
                                        [
                                          [
                                            "TApp",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "snd" ],
                                              null
                                            ],
                                            [
                                              [
                                                "PrimType",
                                                [ "Bystrx_typ", 20 ]
                                              ],
                                              [ "PrimType", [ "Bnum_typ" ] ]
                                            ]
                                          ],
                                          null
                                        ],
                                        [
                                          [
                                            "Let",
                                            [
                                              "Ident",
                                              [
                                                "SimpleLocal",
                                                "expirationBlock"
                                              ],
                                              null
                                            ],
                                            null,
                                            [
                                              [
                                                "App",
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "getBNum" ],
                                                  null
                                                ],
                                                [
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "info" ],
                                                    null
                                                  ]
                                                ]
                                              ],
                                              null
                                            ],
                                            [
                                              [
                                                "Builtin",
                                                [ [ "Builtin_blt" ], null ],
                                                [],
                                                [
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "currentBlock"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "expirationBlock"
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
                                ],
                                [
                                  [
                                    "MatchStmt",
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal", "blockBeforeExpiration"
                                      ],
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
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "makerAddr" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Let",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "getMakerAddr"
                                                    ],
                                                    null
                                                  ],
                                                  null,
                                                  [
                                                    [
                                                      "TApp",
                                                      [
                                                        "Ident",
                                                        [
                                                          "SimpleLocal", "fst"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        [
                                                          "PrimType",
                                                          [ "Bystrx_typ", 20 ]
                                                        ],
                                                        [
                                                          "PrimType",
                                                          [ "Bnum_typ" ]
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
                                                          "SimpleLocal",
                                                          "getMakerAddr"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "info"
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
                                          ],
                                          [
                                            [
                                              "MapGet",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "prevVal" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "pendingReturns"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "_sender" ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "tokenA" ],
                                                  null
                                                ]
                                              ],
                                              true
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "takerAmt" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "App",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "computePendingReturnsVal"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "prevVal"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal", "valueA"
                                                      ],
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
                                              "MapUpdate",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "pendingReturns"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "_sender" ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "tokenA" ],
                                                  null
                                                ]
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "takerAmt" ],
                                                null
                                              ]
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "MapGet",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "prevVal_1" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "pendingReturns"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal", "makerAddr"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "tokenB" ],
                                                  null
                                                ]
                                              ],
                                              true
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "makerAmt" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "App",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "computePendingReturnsVal"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "prevVal_1"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal", "valueB"
                                                      ],
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
                                              "MapUpdate",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "pendingReturns"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal", "makerAddr"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "tokenB" ],
                                                  null
                                                ]
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "makerAmt" ],
                                                null
                                              ]
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "MapUpdate",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "orderInfo" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "orderId" ],
                                                  null
                                                ]
                                              ],
                                              null
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "MapUpdate",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "orderbook" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "orderId" ],
                                                  null
                                                ]
                                              ],
                                              null
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "e" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Message",
                                                  [
                                                    [
                                                      "_eventname",
                                                      [
                                                        "MLit", "Order Filled"
                                                      ]
                                                    ],
                                                    [
                                                      "hash",
                                                      [
                                                        "MVar",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "orderId"
                                                          ],
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
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "e" ],
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
                                                [ "SimpleLocal", "msgs" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Let",
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "tag" ],
                                                    null
                                                  ],
                                                  null,
                                                  [
                                                    [
                                                      "Literal", "TransferFrom"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "App",
                                                      [
                                                        "Ident",
                                                        [
                                                          "SimpleLocal",
                                                          "transaction_msg_as_list"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "tokenB"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "tag"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "_sender"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "_this_address"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "valueB"
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
                                          ],
                                          [
                                            [
                                              "SendMsgs",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "msgs" ],
                                                null
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
                                            [ "SimpleLocal", "False" ],
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
                                                [ "SimpleLocal", "e" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Let",
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "func" ],
                                                    null
                                                  ],
                                                  null,
                                                  [
                                                    [ "Literal", "fillOrder" ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Let",
                                                      [
                                                        "Ident",
                                                        [
                                                          "SimpleLocal",
                                                          "error_msg"
                                                        ],
                                                        null
                                                      ],
                                                      null,
                                                      [
                                                        [
                                                          "Literal",
                                                          "Current block number exceeds the expiration block set"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        [
                                                          "App",
                                                          [
                                                            "Ident",
                                                            [
                                                              "SimpleLocal",
                                                              "make_error_event"
                                                            ],
                                                            null
                                                          ],
                                                          [
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "func"
                                                              ],
                                                              null
                                                            ],
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "error_msg"
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
                                          ],
                                          [
                                            [
                                              "CreateEvnt",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "e" ],
                                                null
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
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "Let",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "func" ],
                                          null
                                        ],
                                        null,
                                        [ [ "Literal", "fillOrder" ], null ],
                                        [
                                          [
                                            "Let",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "error_msg" ],
                                              null
                                            ],
                                            null,
                                            [
                                              [
                                                "Literal", "OrderId not found"
                                              ],
                                              null
                                            ],
                                            [
                                              [
                                                "App",
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "make_error_event"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "func" ],
                                                    null
                                                  ],
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "error_msg"
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
                              "Let",
                              [ "Ident", [ "SimpleLocal", "func" ], null ],
                              null,
                              [ [ "Literal", "fillOrder" ], null ],
                              [
                                [
                                  "Let",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "error_msg" ],
                                    null
                                  ],
                                  null,
                                  [ [ "Literal", "OrderId not found" ], null ],
                                  [
                                    [
                                      "App",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "make_error_event" ],
                                        null
                                      ],
                                      [
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "func" ],
                                          null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "error_msg" ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "ClaimBack" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "getAmtOutstanding" ], null ],
                [ "Ident", [ "SimpleLocal", "pendingReturns" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                  [ "Ident", [ "SimpleLocal", "token" ], null ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "getAmtOutstanding" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder",
                          [
                            "Ident", [ "SimpleLocal", "amtOutstanding" ], null
                          ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "MapUpdate",
                          [
                            "Ident", [ "SimpleLocal", "pendingReturns" ], null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                            [ "Ident", [ "SimpleLocal", "token" ], null ]
                          ],
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
                              "Message",
                              [
                                [
                                  "_eventname",
                                  [ "MLit", "Claimback Successful" ]
                                ],
                                [
                                  "caller",
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
                                  "tokenAddr",
                                  [
                                    "MVar",
                                    [
                                      "Ident", [ "SimpleLocal", "token" ], null
                                    ]
                                  ]
                                ],
                                [
                                  "amt",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "amtOutstanding" ],
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
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ],
                          [
                            [
                              "Let",
                              [ "Ident", [ "SimpleLocal", "tag" ], null ],
                              null,
                              [ [ "Literal", "TransferFrom" ], null ],
                              [
                                [
                                  "App",
                                  [
                                    "Ident",
                                    [
                                      "SimpleLocal", "transaction_msg_as_list"
                                    ],
                                    null
                                  ],
                                  [
                                    [
                                      "Ident", [ "SimpleLocal", "token" ], null
                                    ],
                                    [ "Ident", [ "SimpleLocal", "tag" ], null ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_this_address" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_sender" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "amtOutstanding" ],
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
                              "Let",
                              [ "Ident", [ "SimpleLocal", "func" ], null ],
                              null,
                              [ [ "Literal", "claimBack" ], null ],
                              [
                                [
                                  "Let",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "error_msg" ],
                                    null
                                  ],
                                  null,
                                  [
                                    [
                                      "Literal",
                                      "No Pending Returns for Sender and Contract Address found"
                                    ],
                                    null
                                  ],
                                  [
                                    [
                                      "App",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "make_error_event" ],
                                        null
                                      ],
                                      [
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "func" ],
                                          null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "error_msg" ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "cancelOrder" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "orderId" ], null ],
              [ "PrimType", [ "Bystrx_typ", 32 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "getOrderInfo" ], null ],
                [ "Ident", [ "SimpleLocal", "orderInfo" ], null ],
                [ [ "Ident", [ "SimpleLocal", "orderId" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "getOrderInfo" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder",
                          [
                            "Ident", [ "SimpleLocal", "orderInfoForId" ], null
                          ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "makerAddr" ], null ],
                          [
                            [
                              "Let",
                              [
                                "Ident",
                                [ "SimpleLocal", "getMakerAddr" ],
                                null
                              ],
                              null,
                              [
                                [
                                  "TApp",
                                  [ "Ident", [ "SimpleLocal", "fst" ], null ],
                                  [
                                    [ "PrimType", [ "Bystrx_typ", 20 ] ],
                                    [ "PrimType", [ "Bnum_typ" ] ]
                                  ]
                                ],
                                null
                              ],
                              [
                                [
                                  "App",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "getMakerAddr" ],
                                    null
                                  ],
                                  [
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "orderInfoForId" ],
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
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "checkSender" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "makerAddr" ], null
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
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "checkSender" ], null ],
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
                                    "MapGet",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fetchOrder" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "orderbook" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "orderId" ],
                                        null
                                      ]
                                    ],
                                    true
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "MatchStmt",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fetchOrder" ],
                                      null
                                    ],
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
                                              "Constructor",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "Order" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Binder",
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "tokenA" ],
                                                    null
                                                  ]
                                                ],
                                                [
                                                  "Binder",
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "valueA" ],
                                                    null
                                                  ]
                                                ],
                                                [ "Wildcard" ],
                                                [ "Wildcard" ]
                                              ]
                                            ]
                                          ]
                                        ],
                                        [
                                          [
                                            [
                                              "MapGet",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "prevVal" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "pendingReturns"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "_sender" ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "tokenA" ],
                                                  null
                                                ]
                                              ],
                                              true
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "takerAmt" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "App",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "computePendingReturnsVal"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "prevVal"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal", "valueA"
                                                      ],
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
                                              "MapUpdate",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "pendingReturns"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "_sender" ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "tokenA" ],
                                                  null
                                                ]
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "takerAmt" ],
                                                null
                                              ]
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "MapUpdate",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "orderInfo" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "orderId" ],
                                                  null
                                                ]
                                              ],
                                              null
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "MapUpdate",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "orderbook" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "orderId" ],
                                                  null
                                                ]
                                              ],
                                              null
                                            ],
                                            null
                                          ],
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "e" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Message",
                                                  [
                                                    [
                                                      "_eventname",
                                                      [
                                                        "MLit",
                                                        "Cancel order successful"
                                                      ]
                                                    ],
                                                    [
                                                      "hash",
                                                      [
                                                        "MVar",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "orderId"
                                                          ],
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
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "e" ],
                                                null
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
                                                [ "SimpleLocal", "e" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Let",
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "func" ],
                                                    null
                                                  ],
                                                  null,
                                                  [
                                                    [
                                                      "Literal", "cancelOrder"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Let",
                                                      [
                                                        "Ident",
                                                        [
                                                          "SimpleLocal",
                                                          "error_msg"
                                                        ],
                                                        null
                                                      ],
                                                      null,
                                                      [
                                                        [
                                                          "Literal",
                                                          "OrderID not found"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        [
                                                          "App",
                                                          [
                                                            "Ident",
                                                            [
                                                              "SimpleLocal",
                                                              "make_error_event"
                                                            ],
                                                            null
                                                          ],
                                                          [
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "func"
                                                              ],
                                                              null
                                                            ],
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "error_msg"
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
                                          ],
                                          [
                                            [
                                              "CreateEvnt",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "e" ],
                                                null
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
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "Let",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "func" ],
                                          null
                                        ],
                                        null,
                                        [ [ "Literal", "cancelOrder" ], null ],
                                        [
                                          [
                                            "Let",
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "error_msg" ],
                                              null
                                            ],
                                            null,
                                            [
                                              [
                                                "Literal",
                                                "Sender is not maker of the order"
                                              ],
                                              null
                                            ],
                                            [
                                              [
                                                "App",
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "make_error_event"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "func" ],
                                                    null
                                                  ],
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "error_msg"
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
                              "Let",
                              [ "Ident", [ "SimpleLocal", "func" ], null ],
                              null,
                              [ [ "Literal", "cancelOrder" ], null ],
                              [
                                [
                                  "Let",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "error_msg" ],
                                    null
                                  ],
                                  null,
                                  [ [ "Literal", "OrderID not found" ], null ],
                                  [
                                    [
                                      "App",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "make_error_event" ],
                                        null
                                      ],
                                      [
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "func" ],
                                          null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "error_msg" ],
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
        }
      ]
    }
  }
