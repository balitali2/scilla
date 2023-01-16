  $ scilla-fmt --json --deannot --human-readable earmarked-coin.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "EarmarkedCoin" ], null ],
      "lentries": [
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "EarmarkedCoin" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "EarmarkedCoin" ], null ],
              "c_arg_types": [
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                [ "PrimType", [ "Bystrx_typ", 20 ] ]
              ]
            }
          ]
        ],
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
          [ "Ident", [ "SimpleLocal", "success_code" ], null ],
          null,
          [ [ "Literal", "1" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "already_earmarked_code" ], null ],
          null,
          [ [ "Literal", "2" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "not_authorized_code" ], null ],
          null,
          [ [ "Literal", "3" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "did_not_earmark_code" ], null ],
          null,
          [ [ "Literal", "4" ], null ]
        ]
      ]
    },
    "elibs": [ [ [ "Ident", [ "SimpleLocal", "BoolUtils" ], null ], null ] ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "EarmarkedCoin" ], null ],
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
          [ "Ident", [ "SimpleLocal", "earmarked_coins" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Bystrx_typ", 20 ] ],
            [
              "ADT",
              [
                "Ident",
                [ "SimpleLocal", "EarmarkedCoin" ],
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
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [
                    "ADT",
                    [
                      "Ident",
                      [ "SimpleLocal", "EarmarkedCoin" ],
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
        ]
      ],
      "ccomps": [
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "TransferFunds" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "msg" ], null ],
                [
                  [
                    "Message",
                    [
                      [ "_tag", [ "MLit", "" ] ],
                      [
                        "_recipient",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "recipient" ], null ]
                        ]
                      ],
                      [
                        "_amount",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "amount" ], null ]
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
                [ "Ident", [ "SimpleLocal", "msgs" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "msg" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [ "SendMsgs", [ "Ident", [ "SimpleLocal", "msgs" ], null ] ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "SuccessfulTransferOfFunds" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "from" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "to" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
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
                      [ "_eventname", [ "MLit", "SuccessfulTransferOfFunds" ] ],
                      [
                        "from",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "from" ], null ]
                        ]
                      ],
                      [
                        "to",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "to" ], null ] ]
                      ],
                      [
                        "code",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "success_code" ], null ]
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
              [ "CreateEvnt", [ "Ident", [ "SimpleLocal", "e" ], null ] ], null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "FailedToTransferFunds" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "from" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "to" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "error_code" ], null ],
              [ "PrimType", [ "Int_typ", [ "Bits32" ] ] ]
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
                      [ "_eventname", [ "MLit", "FailedToTransferFunds" ] ],
                      [
                        "from",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "from" ], null ]
                        ]
                      ],
                      [
                        "to",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "to" ], null ] ]
                      ],
                      [
                        "code",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "error_code" ], null ]
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
              [ "CreateEvnt", [ "Ident", [ "SimpleLocal", "e" ], null ] ], null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Earmark" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "recip" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "c" ], null ],
                [ "Ident", [ "SimpleLocal", "earmarked_coins" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "c" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    [
                      [ [ "AcceptPayment" ], null ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e_coin" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "EarmarkedCoin" ],
                                null
                              ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "_amount" ], null ],
                                [ "Ident", [ "SimpleLocal", "recip" ], null ]
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
                            "Ident", [ "SimpleLocal", "earmarked_coins" ], null
                          ],
                          [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                          [ "Ident", [ "SimpleLocal", "e_coin" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [
                            "Ident",
                            [ "SimpleLocal", "SuccessfulTransferOfFunds" ],
                            null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                            [
                              "Ident", [ "SimpleLocal", "_this_address" ], null
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
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [
                            "Ident",
                            [ "SimpleLocal", "FailedToTransferFunds" ],
                            null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                            [
                              "Ident", [ "SimpleLocal", "_this_address" ], null
                            ],
                            [
                              "Ident",
                              [ "SimpleLocal", "already_earmarked_code" ],
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
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "ClaimForRecipient" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "earmarked_coin_address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "e_coin_opt" ], null ],
                [ "Ident", [ "SimpleLocal", "earmarked_coins" ], null ],
                [
                  [
                    "Ident", [ "SimpleLocal", "earmarked_coin_address" ], null
                  ]
                ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "e_coin_opt" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "EarmarkedCoin" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "amount" ], null ]
                            ],
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "recipient" ], null ]
                            ]
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
                            [ "SimpleLocal", "authorized_to_claim" ],
                            null
                          ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "recipient" ], null
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
                          [
                            "Ident",
                            [ "SimpleLocal", "authorized_to_claim" ],
                            null
                          ],
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
                                      [ "SimpleLocal", "TransferFunds" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "amount" ],
                                        null
                                      ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "recipient" ],
                                        null
                                      ]
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "MapUpdate",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "earmarked_coins" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [
                                          "SimpleLocal",
                                          "earmarked_coin_address"
                                        ],
                                        null
                                      ]
                                    ],
                                    null
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
                                        "SuccessfulTransferOfFunds"
                                      ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "_this_address" ],
                                        null
                                      ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "_sender" ],
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
                              [
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal", "FailedToTransferFunds"
                                      ],
                                      null
                                    ],
                                    [
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
                                        [
                                          "SimpleLocal", "not_authorized_code"
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
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [
                            "Ident",
                            [ "SimpleLocal", "FailedToTransferFunds" ],
                            null
                          ],
                          [
                            [
                              "Ident", [ "SimpleLocal", "_this_address" ], null
                            ],
                            [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                            [
                              "Ident",
                              [ "SimpleLocal", "did_not_earmark_code" ],
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
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "ClaimForCreator" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "e_coin_opt" ], null ],
                [ "Ident", [ "SimpleLocal", "earmarked_coins" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "e_coin_opt" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "EarmarkedCoin" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "amount" ], null ]
                            ],
                            [ "Wildcard" ]
                          ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "TransferFunds" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "amount" ], null ],
                            [ "Ident", [ "SimpleLocal", "_sender" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "MapUpdate",
                          [
                            "Ident", [ "SimpleLocal", "earmarked_coins" ], null
                          ],
                          [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                          null
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [
                            "Ident",
                            [ "SimpleLocal", "SuccessfulTransferOfFunds" ],
                            null
                          ],
                          [
                            [
                              "Ident", [ "SimpleLocal", "_this_address" ], null
                            ],
                            [ "Ident", [ "SimpleLocal", "_sender" ], null ]
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
                            [ "SimpleLocal", "FailedToTransferFunds" ],
                            null
                          ],
                          [
                            [
                              "Ident", [ "SimpleLocal", "_this_address" ], null
                            ],
                            [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                            [
                              "Ident",
                              [ "SimpleLocal", "did_not_earmark_code" ],
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
        }
      ]
    }
  }
