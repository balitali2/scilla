  $ scilla-fmt --json --deannot --human-readable ark.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "ARK" ], null ],
      "lentries": [
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Denom" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Zil" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "Token" ], null ],
              "c_arg_types": [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ]
            }
          ]
        ],
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Coins" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Coins" ], null ],
              "c_arg_types": [
                [
                  "ADT",
                  [
                    "Ident",
                    [ "SimpleLocal", "Denom" ],
                    { "fname": "", "lnum": 0, "cnum": 0 }
                  ],
                  []
                ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
              ]
            }
          ]
        ],
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "NFT" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "NFT" ], null ],
              "c_arg_types": [
                [ "Address", "Address" ],
                [ "PrimType", [ "Uint_typ", [ "Bits256" ] ] ]
              ]
            }
          ]
        ],
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Side" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Buy" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "Sell" ], null ],
              "c_arg_types": []
            }
          ]
        ],
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Cheque" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Cheque" ], null ],
              "c_arg_types": [
                [
                  "ADT",
                  [
                    "Ident",
                    [ "SimpleLocal", "Side" ],
                    { "fname": "", "lnum": 0, "cnum": 0 }
                  ],
                  []
                ],
                [ "PrimType", [ "Bnum_typ" ] ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                [ "PrimType", [ "Bystrx_typ", 33 ] ],
                [ "PrimType", [ "Bystrx_typ", 64 ] ]
              ]
            }
          ]
        ],
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Action" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Execute" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "Void" ], null ],
              "c_arg_types": []
            }
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
          [ "Ident", [ "SimpleLocal", "none" ], null ],
          null,
          [
            [
              "Constr",
              [ "Ident", [ "SimpleLocal", "None" ], null ],
              [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ],
              []
            ],
            null
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
          [ "Ident", [ "SimpleLocal", "buy" ], null ],
          null,
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "Buy" ], null ], [], [] ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "sell" ], null ],
          null,
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "Sell" ], null ], [], [] ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "zil" ], null ],
          null,
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "Zil" ], null ], [], [] ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "signed_message_prefix" ], null ],
          null,
          [ [ "Literal", "Zilliqa Signed Message (" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "signed_message_suffix" ], null ],
          null,
          [ [ "Literal", "):\n" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "execute_prefix" ], null ],
          null,
          [ [ "Literal", "Execute ARK Cheque " ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "void_prefix" ], null ],
          null,
          [ [ "Literal", "Void ARK Cheque " ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "execute" ], null ],
          null,
          [
            [
              "Constr", [ "Ident", [ "SimpleLocal", "Execute" ], null ], [], []
            ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "void" ], null ],
          null,
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "Void" ], null ], [], [] ],
            null
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
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Error" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "CodeNotOwner" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CodeNotPendingOwner" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CodePendingOwnerNotEmpty" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CodeTokenProxyNotSet" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CodeTokenProxyAlreadySet" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CodeSignatureInvalid" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CodeChequeAlreadyVoided" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CodeChequeExpired" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "CodeInvalidPrice" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "CodeInvalidFee" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "CodeInvalidSide" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "CodeInvalidOwner" ], null ],
              "c_arg_types": []
            }
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "make_error" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "result" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Error" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ],
              [
                [
                  "Let",
                  [ "Ident", [ "SimpleLocal", "result_code" ], null ],
                  null,
                  [
                    [
                      "MatchExpr",
                      [ "Ident", [ "SimpleLocal", "result" ], null ],
                      [
                        [
                          [
                            "Constructor",
                            [
                              "Ident", [ "SimpleLocal", "CodeNotOwner" ], null
                            ],
                            []
                          ],
                          [ [ "Literal", "-1" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeNotPendingOwner" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-2" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodePendingOwnerNotEmpty" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-3" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeTokenProxyNotSet" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-4" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeTokenProxyAlreadySet" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-5" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeSignatureInvalid" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-6" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeChequeAlreadyVoided" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-7" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeChequeExpired" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-8" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeInvalidPrice" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-9" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeInvalidFee" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-10" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeInvalidSide" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-11" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CodeInvalidOwner" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-12" ], null ]
                        ]
                      ]
                    ],
                    null
                  ],
                  [
                    [
                      "Message",
                      [
                        [ "_exception", [ "MLit", "Error" ] ],
                        [
                          "code",
                          [
                            "MVar",
                            [ "Ident", [ "SimpleLocal", "result_code" ], null ]
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
          [ "Ident", [ "SimpleLocal", "get_action_prefix" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "action" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Action" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ],
              [
                [
                  "MatchExpr",
                  [ "Ident", [ "SimpleLocal", "action" ], null ],
                  [
                    [
                      [
                        "Constructor",
                        [ "Ident", [ "SimpleLocal", "Execute" ], null ],
                        []
                      ],
                      [
                        [
                          "Var",
                          [
                            "Ident", [ "SimpleLocal", "execute_prefix" ], null
                          ]
                        ],
                        null
                      ]
                    ],
                    [
                      [
                        "Constructor",
                        [ "Ident", [ "SimpleLocal", "Void" ], null ],
                        []
                      ],
                      [
                        [
                          "Var",
                          [ "Ident", [ "SimpleLocal", "void_prefix" ], null ]
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "get_account" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "cheque" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Cheque" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ],
              [
                [
                  "MatchExpr",
                  [ "Ident", [ "SimpleLocal", "cheque" ], null ],
                  [
                    [
                      [
                        "Constructor",
                        [ "Ident", [ "SimpleLocal", "Cheque" ], null ],
                        [
                          [
                            "Binder",
                            [ "Ident", [ "SimpleLocal", "direction" ], null ]
                          ],
                          [
                            "Binder",
                            [ "Ident", [ "SimpleLocal", "expiry" ], null ]
                          ],
                          [
                            "Binder",
                            [ "Ident", [ "SimpleLocal", "nonce" ], null ]
                          ],
                          [
                            "Binder",
                            [ "Ident", [ "SimpleLocal", "pubkey" ], null ]
                          ],
                          [
                            "Binder",
                            [ "Ident", [ "SimpleLocal", "signature" ], null ]
                          ]
                        ]
                      ],
                      [
                        [
                          "Builtin",
                          [ [ "Builtin_schnorr_get_address" ], null ],
                          [],
                          [ [ "Ident", [ "SimpleLocal", "pubkey" ], null ] ]
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "get_amount" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "price" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Coins" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ],
              [
                [
                  "MatchExpr",
                  [ "Ident", [ "SimpleLocal", "price" ], null ],
                  [
                    [
                      [
                        "Constructor",
                        [ "Ident", [ "SimpleLocal", "Coins" ], null ],
                        [
                          [
                            "Binder",
                            [ "Ident", [ "SimpleLocal", "denom" ], null ]
                          ],
                          [
                            "Binder",
                            [ "Ident", [ "SimpleLocal", "amount" ], null ]
                          ]
                        ]
                      ],
                      [
                        [
                          "Var", [ "Ident", [ "SimpleLocal", "amount" ], null ]
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "get_cheque_hash" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "contract_address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "direction" ], null ],
                  [
                    "ADT",
                    [
                      "Ident",
                      [ "SimpleLocal", "Side" ],
                      { "fname": "", "lnum": 0, "cnum": 0 }
                    ],
                    []
                  ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "token" ], null ],
                      [
                        "ADT",
                        [
                          "Ident",
                          [ "SimpleLocal", "NFT" ],
                          { "fname": "", "lnum": 0, "cnum": 0 }
                        ],
                        []
                      ],
                      [
                        [
                          "Fun",
                          [ "Ident", [ "SimpleLocal", "price" ], null ],
                          [
                            "ADT",
                            [
                              "Ident",
                              [ "SimpleLocal", "Coins" ],
                              { "fname": "", "lnum": 0, "cnum": 0 }
                            ],
                            []
                          ],
                          [
                            [
                              "Fun",
                              [
                                "Ident", [ "SimpleLocal", "fee_amount" ], null
                              ],
                              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                              [
                                [
                                  "Fun",
                                  [
                                    "Ident", [ "SimpleLocal", "expiry" ], null
                                  ],
                                  [ "PrimType", [ "Bnum_typ" ] ],
                                  [
                                    [
                                      "Fun",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "nonce" ],
                                        null
                                      ],
                                      [
                                        "PrimType",
                                        [ "Uint_typ", [ "Bits128" ] ]
                                      ],
                                      [
                                        [
                                          "Let",
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "dir_hash" ],
                                            null
                                          ],
                                          null,
                                          [
                                            [
                                              "Builtin",
                                              [
                                                [ "Builtin_sha256hash" ], null
                                              ],
                                              [],
                                              [
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal", "direction"
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
                                                [ "SimpleLocal", "token_hash" ],
                                                null
                                              ],
                                              null,
                                              [
                                                [
                                                  "Builtin",
                                                  [
                                                    [ "Builtin_sha256hash" ],
                                                    null
                                                  ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal", "token"
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
                                                    [
                                                      "SimpleLocal",
                                                      "price_hash"
                                                    ],
                                                    null
                                                  ],
                                                  null,
                                                  [
                                                    [
                                                      "Builtin",
                                                      [
                                                        [
                                                          "Builtin_sha256hash"
                                                        ],
                                                        null
                                                      ],
                                                      [],
                                                      [
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "price"
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
                                                        [
                                                          "SimpleLocal",
                                                          "fee_hash"
                                                        ],
                                                        null
                                                      ],
                                                      null,
                                                      [
                                                        [
                                                          "Builtin",
                                                          [
                                                            [
                                                              "Builtin_sha256hash"
                                                            ],
                                                            null
                                                          ],
                                                          [],
                                                          [
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "fee_amount"
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
                                                            [
                                                              "SimpleLocal",
                                                              "expiry_hash"
                                                            ],
                                                            null
                                                          ],
                                                          null,
                                                          [
                                                            [
                                                              "Builtin",
                                                              [
                                                                [
                                                                  "Builtin_sha256hash"
                                                                ],
                                                                null
                                                              ],
                                                              [],
                                                              [
                                                                [
                                                                  "Ident",
                                                                  [
                                                                    "SimpleLocal",
                                                                    "expiry"
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
                                                                [
                                                                  "SimpleLocal",
                                                                  "nonce_hash"
                                                                ],
                                                                null
                                                              ],
                                                              null,
                                                              [
                                                                [
                                                                  "Builtin",
                                                                  [
                                                                    [
                                                                      "Builtin_sha256hash"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [],
                                                                  [
                                                                    [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "nonce"
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
                                                                    [
                                                                      "SimpleLocal",
                                                                      "p0"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  null,
                                                                  [
                                                                    [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_concat"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "contract_address"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "dir_hash"
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
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p1"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      null,
                                                                      [
                                                                      [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_concat"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p0"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "token_hash"
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
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p2"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      null,
                                                                      [
                                                                      [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_concat"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p1"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "price_hash"
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
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p3"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      null,
                                                                      [
                                                                      [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_concat"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p2"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "fee_hash"
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
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p4"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      null,
                                                                      [
                                                                      [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_concat"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p3"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "expiry_hash"
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
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p5"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      null,
                                                                      [
                                                                      [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_concat"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p4"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "nonce_hash"
                                                                      ],
                                                                      null
                                                                      ]
                                                                      ]
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_sha256hash"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "p5"
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
    "elibs": [
      [ [ "Ident", [ "SimpleLocal", "IntUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "ListUtils" ], null ], null ]
    ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "ARK" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "contract_owner" ], null ],
          [ "PrimType", [ "Bystrx_typ", 20 ] ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "initial_fee_address" ], null ],
          [ "PrimType", [ "Bystrx_typ", 20 ] ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "chain_id" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
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
          [ "Ident", [ "SimpleLocal", "current_owner" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "Option" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ]
          ],
          [
            [
              "Constr",
              [ "Ident", [ "SimpleLocal", "Some" ], null ],
              [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ],
              [ [ "Ident", [ "SimpleLocal", "contract_owner" ], null ] ]
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "pending_owner" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "Option" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ]
          ],
          [ [ "Var", [ "Ident", [ "SimpleLocal", "none" ], null ] ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "token_proxy" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "Option" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ]
          ],
          [ [ "Var", [ "Ident", [ "SimpleLocal", "none" ], null ] ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "fee_address" ], null ],
          [ "PrimType", [ "Bystrx_typ", 20 ] ],
          [
            [
              "Var",
              [ "Ident", [ "SimpleLocal", "initial_fee_address" ], null ]
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "voided_cheques" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Bystrx_typ", 33 ] ],
            [
              "MapType",
              [ "PrimType", [ "Bystrx_typ", 32 ] ],
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
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Bystrx_typ", 33 ] ],
                  [
                    "MapType",
                    [ "PrimType", [ "Bystrx_typ", 32 ] ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "err" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Error" ],
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
                    "App",
                    [ "Ident", [ "SimpleLocal", "make_error" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "IsOwner" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "maybe_current_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "current_owner" ], null ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "maybe_current_owner" ], null ],
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
                            [ "SimpleLocal", "current_contract_owner" ],
                            null
                          ]
                        ]
                      ]
                    ],
                    [
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
                                [
                                  "Ident",
                                  [ "SimpleLocal", "current_contract_owner" ],
                                  null
                                ],
                                [ "Ident", [ "SimpleLocal", "address" ], null ]
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
                                    [ "Ident", [ "SimpleLocal", "err" ], null ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "CodeNotOwner" ],
                                          null
                                        ],
                                        [],
                                        []
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
                                      [ "SimpleLocal", "ThrowError" ],
                                      null
                                    ],
                                    [
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
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodeNotOwner" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "IsPendingOwner" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "maybe_pending_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "pending_owner" ], null ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "maybe_pending_owner" ], null ],
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
                            [ "SimpleLocal", "current_pending_owner" ],
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
                            [ "SimpleLocal", "is_pending_owner" ],
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
                                  [ "SimpleLocal", "current_pending_owner" ],
                                  null
                                ],
                                [ "Ident", [ "SimpleLocal", "address" ], null ]
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
                            [ "SimpleLocal", "is_pending_owner" ],
                            null
                          ],
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
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [
                                            "SimpleLocal",
                                            "CodeNotPendingOwner"
                                          ],
                                          null
                                        ],
                                        [],
                                        []
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
                                      [ "SimpleLocal", "ThrowError" ],
                                      null
                                    ],
                                    [
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
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodeNotPendingOwner" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "NoPendingOwner" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "maybe_pending_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "pending_owner" ], null ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "maybe_pending_owner" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "None" ], null ],
                      []
                    ],
                    []
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "p" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodePendingOwnerNotEmpty" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "IsNotExpired" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "expiry" ], null ],
              [ "PrimType", [ "Bnum_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "ReadFromBC",
                [ "Ident", [ "SimpleLocal", "current_block" ], null ],
                [ "CurBlockNum" ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_not_expired" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_blt" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "current_block" ], null ],
                      [ "Ident", [ "SimpleLocal", "expiry" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_not_expired" ], null ],
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
                                  [ "MLit", "TransactionExpired" ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "IsValidPrice" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "price" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Coins" ],
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
                [ "Ident", [ "SimpleLocal", "amount" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "get_amount" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "price" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_zero" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "zero" ], null ],
                      [ "Ident", [ "SimpleLocal", "amount" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_zero" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    []
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodeInvalidPrice" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "IsValidFee" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "price" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Coins" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "fee" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "amount" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "get_amount" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "price" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "is_valid" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_lt" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "fee" ], null ],
                      [ "Ident", [ "SimpleLocal", "amount" ], null ]
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
                [ "Ident", [ "SimpleLocal", "is_valid" ], null ],
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
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodeInvalidFee" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "IsValidSide" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "s1" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Side" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "s2" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Side" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ]
          ],
          "comp_body": [
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "s1" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Buy" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "s2" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Buy" ], null ],
                                []
                              ],
                              []
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Sell" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "err" ], null ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "CodeInvalidSide" ],
                                          null
                                        ],
                                        [],
                                        []
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
                                      [ "SimpleLocal", "ThrowError" ],
                                      null
                                    ],
                                    [
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
                      [ "Ident", [ "SimpleLocal", "Sell" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "s2" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Sell" ], null ],
                                []
                              ],
                              []
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Buy" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "err" ], null ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "CodeInvalidSide" ],
                                          null
                                        ],
                                        [],
                                        []
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
                                      [ "SimpleLocal", "ThrowError" ],
                                      null
                                    ],
                                    [
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
                  ]
                ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "IsNotVoided" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
              [ "PrimType", [ "Bystrx_typ", 32 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
              [ "PrimType", [ "Bystrx_typ", 33 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "cheque_voided" ], null ],
                [ "Ident", [ "SimpleLocal", "voided_cheques" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
                  [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ]
                ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "cheque_voided" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "False" ], null ],
                      []
                    ],
                    []
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodeChequeAlreadyVoided" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "IsValidSignature" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "action" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Action" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
              [ "PrimType", [ "Bystrx_typ", 32 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
              [ "PrimType", [ "Bystrx_typ", 33 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "signature" ], null ],
              [ "PrimType", [ "Bystrx_typ", 64 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "hex_hash" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_string" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "action_prefix" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "get_action_prefix" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "action" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "action_string" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_concat" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "action_prefix" ], null ],
                      [ "Ident", [ "SimpleLocal", "hex_hash" ], null ]
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
                [ "Ident", [ "SimpleLocal", "chain_id_string" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_string" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "chain_id" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "message_header" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_concat" ], null ],
                    [],
                    [
                      [
                        "Ident",
                        [ "SimpleLocal", "signed_message_prefix" ],
                        null
                      ],
                      [ "Ident", [ "SimpleLocal", "chain_id_string" ], null ]
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
                [ "Ident", [ "SimpleLocal", "message_header" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_concat" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "message_header" ], null ],
                      [
                        "Ident",
                        [ "SimpleLocal", "signed_message_suffix" ],
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
                [ "Ident", [ "SimpleLocal", "message_string" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_concat" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "message_header" ], null ],
                      [ "Ident", [ "SimpleLocal", "action_string" ], null ]
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
                [ "Ident", [ "SimpleLocal", "signed_hash" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_sha256hash" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "message_string" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "signed_data" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_bystr" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "signed_hash" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "valid_sig" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_schnorr_verify" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
                      [ "Ident", [ "SimpleLocal", "signed_data" ], null ],
                      [ "Ident", [ "SimpleLocal", "signature" ], null ]
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
                [ "Ident", [ "SimpleLocal", "valid_sig" ], null ],
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
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodeSignatureInvalid" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [
            "Ident", [ "SimpleLocal", "ValidateAndConsumeCheque" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "NFT" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "price" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Coins" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "fee_amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "valid_direction" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Side" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "cheque" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Cheque" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ]
          ],
          "comp_body": [
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "cheque" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Cheque" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "direction" ], null ]
                        ],
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "expiry" ], null ]
                        ],
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "nonce" ], null ]
                        ],
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "pubkey" ], null ]
                        ],
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "signature" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "IsValidPrice" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "price" ], null ] ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "IsValidSide" ], null ],
                          [
                            [
                              "Ident",
                              [ "SimpleLocal", "valid_direction" ],
                              null
                            ],
                            [ "Ident", [ "SimpleLocal", "direction" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "IsNotExpired" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "expiry" ], null ] ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "get_cheque_hash" ],
                                null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "_this_address" ],
                                  null
                                ],
                                [
                                  "Ident", [ "SimpleLocal", "direction" ], null
                                ],
                                [ "Ident", [ "SimpleLocal", "token" ], null ],
                                [ "Ident", [ "SimpleLocal", "price" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "fee_amount" ],
                                  null
                                ],
                                [ "Ident", [ "SimpleLocal", "expiry" ], null ],
                                [ "Ident", [ "SimpleLocal", "nonce" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "IsNotVoided" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
                            [ "Ident", [ "SimpleLocal", "pubkey" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [
                            "Ident",
                            [ "SimpleLocal", "IsValidSignature" ],
                            null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "execute" ], null ],
                            [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
                            [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
                            [ "Ident", [ "SimpleLocal", "signature" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "MapUpdate",
                          [
                            "Ident", [ "SimpleLocal", "voided_cheques" ], null
                          ],
                          [
                            [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
                            [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ]
                          ],
                          [ "Ident", [ "SimpleLocal", "true" ], null ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "TransferCoins" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "coins" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Coins" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
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
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "coins" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Coins" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "denom" ], null ]
                        ],
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "amount" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "denom" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Zil" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "msg" ], null ],
                                    [
                                      [
                                        "Message",
                                        [
                                          [ "_tag", [ "MLit", "AddFunds" ] ],
                                          [
                                            "_recipient",
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
                                            "_amount",
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
                                ],
                                [
                                  [
                                    "Bind",
                                    [
                                      "Ident", [ "SimpleLocal", "msgs" ], null
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
                                ],
                                [
                                  [
                                    "SendMsgs",
                                    [
                                      "Ident", [ "SimpleLocal", "msgs" ], null
                                    ]
                                  ],
                                  null
                                ]
                              ]
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Token" ], null ],
                                [
                                  [
                                    "Binder",
                                    [
                                      "Ident", [ "SimpleLocal", "token" ], null
                                    ]
                                  ]
                                ]
                              ],
                              [
                                [
                                  [
                                    "Load",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "maybe_token_proxy" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "token_proxy" ],
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
                                      [ "SimpleLocal", "maybe_token_proxy" ],
                                      null
                                    ],
                                    [
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
                                                  "Constr",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "CodeTokenProxyNotSet"
                                                    ],
                                                    null
                                                  ],
                                                  [],
                                                  []
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
                                                [ "SimpleLocal", "ThrowError" ],
                                                null
                                              ],
                                              [
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
                                      ],
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
                                                [ "SimpleLocal", "t" ],
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
                                                [
                                                  "SimpleLocal",
                                                  "msg_to_token_proxy"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Message",
                                                  [
                                                    [
                                                      "_tag",
                                                      [
                                                        "MLit", "TransferFrom"
                                                      ]
                                                    ],
                                                    [
                                                      "_recipient",
                                                      [
                                                        "MVar",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal", "t"
                                                          ],
                                                          null
                                                        ]
                                                      ]
                                                    ],
                                                    [
                                                      "_amount",
                                                      [
                                                        "MVar",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "zero"
                                                          ],
                                                          null
                                                        ]
                                                      ]
                                                    ],
                                                    [
                                                      "token",
                                                      [
                                                        "MVar",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "token"
                                                          ],
                                                          null
                                                        ]
                                                      ]
                                                    ],
                                                    [
                                                      "from",
                                                      [
                                                        "MVar",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "from"
                                                          ],
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
                                                          [
                                                            "SimpleLocal", "to"
                                                          ],
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
                                                          [
                                                            "SimpleLocal",
                                                            "amount"
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
                                              "Bind",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "msgs" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "App",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal", "one_msg"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "msg_to_token_proxy"
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
                  ]
                ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompProc" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "TransferNFT" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "NFT" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
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
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "token" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "NFT" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "token_address" ], null ]
                        ],
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "token_id" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "RemoteMapGet",
                          [
                            "Ident",
                            [ "SimpleLocal", "maybe_token_owner" ],
                            null
                          ],
                          [ "Ident", [ "SimpleLocal", "token_address" ], null ],
                          [ "Ident", [ "SimpleLocal", "token_owners" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "token_id" ], null ] ],
                          true
                        ],
                        null
                      ],
                      [
                        [
                          "MatchStmt",
                          [
                            "Ident",
                            [ "SimpleLocal", "maybe_token_owner" ],
                            null
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
                                      "Ident",
                                      [ "SimpleLocal", "token_owner" ],
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
                                      [ "SimpleLocal", "is_valid_owner" ],
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
                                            [ "SimpleLocal", "token_owner" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "from" ],
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
                                      [ "SimpleLocal", "is_valid_owner" ],
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
                                                [ "SimpleLocal", "err" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Constr",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "CodeInvalidOwner"
                                                    ],
                                                    null
                                                  ],
                                                  [],
                                                  []
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
                                                [ "SimpleLocal", "ThrowError" ],
                                                null
                                              ],
                                              [
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
                                [ "Ident", [ "SimpleLocal", "None" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "err" ], null ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "CodeInvalidOwner" ],
                                          null
                                        ],
                                        [],
                                        []
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
                                      [ "SimpleLocal", "ThrowError" ],
                                      null
                                    ],
                                    [
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
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "msg_to_token" ], null ],
                          [
                            [
                              "Message",
                              [
                                [ "_tag", [ "MLit", "TransferFrom" ] ],
                                [
                                  "_recipient",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "token_address" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "_amount",
                                  [
                                    "MVar",
                                    [
                                      "Ident", [ "SimpleLocal", "zero" ], null
                                    ]
                                  ]
                                ],
                                [
                                  "to",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "to" ], null ]
                                  ]
                                ],
                                [
                                  "token_id",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "token_id" ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ],
                          [
                            [
                              "App",
                              [ "Ident", [ "SimpleLocal", "one_msg" ], null ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "msg_to_token" ],
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
                          [ "Ident", [ "SimpleLocal", "msgs" ], null ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "ExecuteTrade" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "token" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "NFT" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "price" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Coins" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "fee_amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "sell_cheque" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Cheque" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "buy_cheque" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Cheque" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                []
              ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [
                  "Ident", [ "SimpleLocal", "ValidateAndConsumeCheque" ], null
                ],
                [
                  [ "Ident", [ "SimpleLocal", "token" ], null ],
                  [ "Ident", [ "SimpleLocal", "price" ], null ],
                  [ "Ident", [ "SimpleLocal", "fee_amount" ], null ],
                  [ "Ident", [ "SimpleLocal", "sell" ], null ],
                  [ "Ident", [ "SimpleLocal", "sell_cheque" ], null ]
                ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [
                  "Ident", [ "SimpleLocal", "ValidateAndConsumeCheque" ], null
                ],
                [
                  [ "Ident", [ "SimpleLocal", "token" ], null ],
                  [ "Ident", [ "SimpleLocal", "price" ], null ],
                  [ "Ident", [ "SimpleLocal", "zero" ], null ],
                  [ "Ident", [ "SimpleLocal", "buy" ], null ],
                  [ "Ident", [ "SimpleLocal", "buy_cheque" ], null ]
                ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "IsValidFee" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "price" ], null ],
                  [ "Ident", [ "SimpleLocal", "fee_amount" ], null ]
                ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "price" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Coins" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "denom" ], null ]
                        ],
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "amount" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Load",
                          [ "Ident", [ "SimpleLocal", "fee_receiver" ], null ],
                          [ "Ident", [ "SimpleLocal", "fee_address" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "seller" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident", [ "SimpleLocal", "get_account" ], null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "sell_cheque" ],
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
                          [ "Ident", [ "SimpleLocal", "buyer" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident", [ "SimpleLocal", "get_account" ], null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "buy_cheque" ],
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
                            [ "SimpleLocal", "seller_receive_amount" ],
                            null
                          ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_sub" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "amount" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "fee_amount" ],
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
                            [ "SimpleLocal", "seller_receive_coins" ],
                            null
                          ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "Coins" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "denom" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "seller_receive_amount" ],
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
                            [ "SimpleLocal", "fee_receive_coins" ],
                            null
                          ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "Coins" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "denom" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "fee_amount" ],
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
                          [ "Ident", [ "SimpleLocal", "denom" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Zil" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "receiving_from_buyer" ],
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
                                            [ "SimpleLocal", "buyer" ],
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
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "MatchStmt",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "receiving_from_buyer" ],
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
                                                [ "SimpleLocal", "err" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Constr",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "CodeInvalidPrice"
                                                    ],
                                                    null
                                                  ],
                                                  [],
                                                  []
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
                                                [ "SimpleLocal", "ThrowError" ],
                                                null
                                              ],
                                              [
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
                                ],
                                [
                                  [
                                    "Bind",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "correct_amount" ],
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
                                            [ "SimpleLocal", "_amount" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "amount" ],
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
                                      [ "SimpleLocal", "correct_amount" ],
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
                                                [ "SimpleLocal", "err" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Constr",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "CodeInvalidPrice"
                                                    ],
                                                    null
                                                  ],
                                                  [],
                                                  []
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
                                                [ "SimpleLocal", "ThrowError" ],
                                                null
                                              ],
                                              [
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
                                ],
                                [ [ "AcceptPayment" ], null ]
                              ]
                            ],
                            [ [ "Wildcard" ], [] ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "TransferCoins" ], null ],
                          [
                            [
                              "Ident",
                              [ "SimpleLocal", "seller_receive_coins" ],
                              null
                            ],
                            [ "Ident", [ "SimpleLocal", "buyer" ], null ],
                            [ "Ident", [ "SimpleLocal", "seller" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "TransferCoins" ], null ],
                          [
                            [
                              "Ident",
                              [ "SimpleLocal", "fee_receive_coins" ],
                              null
                            ],
                            [ "Ident", [ "SimpleLocal", "buyer" ], null ],
                            [
                              "Ident", [ "SimpleLocal", "fee_receiver" ], null
                            ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "TransferNFT" ], null ],
                          [
                            [ "Ident", [ "SimpleLocal", "token" ], null ],
                            [ "Ident", [ "SimpleLocal", "seller" ], null ],
                            [ "Ident", [ "SimpleLocal", "buyer" ], null ]
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
                              "Message",
                              [
                                [
                                  "_eventname",
                                  [ "MLit", "ExecuteTradeSuccess" ]
                                ],
                                [
                                  "initiator",
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
                                  "token",
                                  [
                                    "MVar",
                                    [
                                      "Ident", [ "SimpleLocal", "token" ], null
                                    ]
                                  ]
                                ],
                                [
                                  "seller",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "seller" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "buyer",
                                  [
                                    "MVar",
                                    [
                                      "Ident", [ "SimpleLocal", "buyer" ], null
                                    ]
                                  ]
                                ],
                                [
                                  "proceeds",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "seller_receive_coins" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "fees",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "fee_receive_coins" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "sell_cheque",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "sell_cheque" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "buy_cheque",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "buy_cheque" ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "VoidCheque" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
              [ "PrimType", [ "Bystrx_typ", 32 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
              [ "PrimType", [ "Bystrx_typ", 33 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "signature" ], null ],
              [ "PrimType", [ "Bystrx_typ", 64 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "IsNotVoided" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
                  [ "Ident", [ "SimpleLocal", "pubkey" ], null ]
                ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "IsValidSignature" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "void" ], null ],
                  [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ],
                  [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
                  [ "Ident", [ "SimpleLocal", "signature" ], null ]
                ]
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "voided_cheques" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "pubkey" ], null ],
                  [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ]
                ],
                [ "Ident", [ "SimpleLocal", "true" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "from" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_schnorr_get_address" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "pubkey" ], null ] ]
                  ],
                  null
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
                    "Message",
                    [
                      [ "_eventname", [ "MLit", "VoidChequeSuccess" ] ],
                      [
                        "initiator",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_sender" ], null ]
                        ]
                      ],
                      [
                        "sender",
                        [
                          "MVar", [ "Ident", [ "SimpleLocal", "from" ], null ]
                        ]
                      ],
                      [
                        "cheque_hash",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "cheque_hash" ], null ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "SetTokenProxy" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "address" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "IsOwner" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "t" ], null ],
                [ "Ident", [ "SimpleLocal", "token_proxy" ], null ]
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
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [ [ "Wildcard" ] ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "CodeTokenProxyAlreadySet" ],
                                null
                              ],
                              [],
                              []
                            ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "CallProc",
                          [ "Ident", [ "SimpleLocal", "ThrowError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          [
                            "Ident", [ "SimpleLocal", "new_token_proxy" ], null
                          ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "Some" ], null ],
                              [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ],
                              [
                                [ "Ident", [ "SimpleLocal", "address" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "token_proxy" ], null ],
                          [
                            "Ident", [ "SimpleLocal", "new_token_proxy" ], null
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
                              "Message",
                              [
                                [
                                  "_eventname",
                                  [ "MLit", "SetTokenProxySuccess" ]
                                ],
                                [
                                  "token_proxy",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "address" ],
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
          "comp_name": [
            "Ident", [ "SimpleLocal", "TransferOwnership" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "new_owner" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "IsOwner" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "o" ], null ],
                [
                  [
                    "Constr",
                    [ "Ident", [ "SimpleLocal", "Some" ], null ],
                    [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ],
                    [ [ "Ident", [ "SimpleLocal", "new_owner" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "pending_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "o" ], null ]
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
                        "_eventname", [ "MLit", "OwnershipTransferInitiated" ]
                      ],
                      [
                        "current_owner",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_sender" ], null ]
                        ]
                      ],
                      [
                        "pending_owner",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "new_owner" ], null ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "AcceptOwnership" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "IsPendingOwner" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "previous_current_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "current_owner" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "o" ], null ],
                [
                  [
                    "Constr",
                    [ "Ident", [ "SimpleLocal", "Some" ], null ],
                    [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ],
                    [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "current_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "o" ], null ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "pending_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "none" ], null ]
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
                      [ "_eventname", [ "MLit", "OwnershipTransferAccepted" ] ],
                      [
                        "previous_current_owner",
                        [
                          "MVar",
                          [
                            "Ident",
                            [ "SimpleLocal", "previous_current_owner" ],
                            null
                          ]
                        ]
                      ],
                      [
                        "current_owner",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_sender" ], null ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "RevokeOwnership" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "IsOwner" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ]
              ],
              null
            ],
            [
              [
                "CallProc",
                [ "Ident", [ "SimpleLocal", "NoPendingOwner" ], null ],
                []
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "current_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "none" ], null ]
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
                      [ "_eventname", [ "MLit", "OwnershipRevoked" ] ],
                      [
                        "current_owner",
                        [
                          "MVar",
                          [ "Ident", [ "SimpleLocal", "_sender" ], null ]
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
          "comp_name": [
            "Ident", [ "SimpleLocal", "TransferFromSuccessCallBack" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "from" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "token_id" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits256" ] ] ]
            ]
          ],
          "comp_body": []
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "ZRC6_TransferFromCallback" ], null
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
              [ "Ident", [ "SimpleLocal", "token_id" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits256" ] ] ]
            ]
          ],
          "comp_body": []
        }
      ]
    }
  }
