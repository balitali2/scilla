  $ scilla-fmt --json --deannot --human-readable wallet_2.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "WalletLib" ], null ],
      "lentries": [
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_contract_initialized_event" ], null ],
          null,
          [
            [
              "Message",
              [ [ "_eventname", [ "MLit", "Contract initialized" ] ] ]
            ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_transaction_added_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "tc" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "recipient" ], null ],
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "amount" ], null ],
                      [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                      [
                        [
                          "Fun",
                          [ "Ident", [ "SimpleLocal", "tag" ], null ],
                          [ "PrimType", [ "String_typ" ] ],
                          [
                            [
                              "Message",
                              [
                                [
                                  "_eventname",
                                  [ "MLit", "Transaction created" ]
                                ],
                                [
                                  "transactionId",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "tc" ], null ]
                                  ]
                                ],
                                [
                                  "recipient",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "recipient" ],
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
                                ],
                                [
                                  "tag",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "tag" ], null ]
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_transaction_executed_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "tc" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "recipient" ], null ],
                  [ "PrimType", [ "Bystrx_typ", 20 ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "amount" ], null ],
                      [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                      [
                        [
                          "Fun",
                          [ "Ident", [ "SimpleLocal", "tag" ], null ],
                          [ "PrimType", [ "String_typ" ] ],
                          [
                            [
                              "Message",
                              [
                                [
                                  "_eventname",
                                  [ "MLit", "Transaction executed" ]
                                ],
                                [
                                  "transactionId",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "tc" ], null ]
                                  ]
                                ],
                                [
                                  "recipient",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "recipient" ],
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
                                ],
                                [
                                  "tag",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "tag" ], null ]
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_signed_transaction_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "tc" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Transaction signed" ] ],
                    [
                      "transactionId",
                      [ "MVar", [ "Ident", [ "SimpleLocal", "tc" ], null ] ]
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
          [ "Ident", [ "SimpleLocal", "mk_signature_revoked_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "tc" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Signature revoked" ] ],
                    [
                      "transactionId",
                      [ "MVar", [ "Ident", [ "SimpleLocal", "tc" ], null ] ]
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
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Error" ], null ],
          [
            {
              "cname": [
                "Ident", [ "SimpleLocal", "NonOwnerCannotSign" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "UnknownTransactionId" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "InsufficientFunds" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "NoSignatureListFound" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "AlreadySigned" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "NotAlreadySigned" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "InvalidContract" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "InvalidAmount" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "NotEnoughSignatures" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "SenderMayNotExecute" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "NonOwnerCannotSubmit" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "IncorrectSignatureCount" ], null
              ],
              "c_arg_types": []
            }
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_error_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "err" ], null ],
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
                  [ "Ident", [ "SimpleLocal", "err_code" ], null ],
                  null,
                  [
                    [
                      "MatchExpr",
                      [ "Ident", [ "SimpleLocal", "err" ], null ],
                      [
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "NonOwnerCannotSign" ],
                              null
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
                              [ "SimpleLocal", "UnknownTransactionId" ],
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
                              [ "SimpleLocal", "InsufficientFunds" ],
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
                              [ "SimpleLocal", "NoSignatureListFound" ],
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
                              "Ident", [ "SimpleLocal", "AlreadySigned" ], null
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
                              [ "SimpleLocal", "NotAlreadySigned" ],
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
                              [ "SimpleLocal", "InvalidContract" ],
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
                              "Ident", [ "SimpleLocal", "InvalidAmount" ], null
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
                              [ "SimpleLocal", "NotEnoughSignatures" ],
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
                              [ "SimpleLocal", "SenderMayNotExecute" ],
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
                              [ "SimpleLocal", "NonOwnerCannotSubmit" ],
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
                              [ "SimpleLocal", "IncorrectSignatureCount" ],
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
                        [ "_eventname", [ "MLit", "WalletError" ] ],
                        [
                          "err_code",
                          [
                            "MVar",
                            [ "Ident", [ "SimpleLocal", "err_code" ], null ]
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
          [ "Ident", [ "SimpleLocal", "t" ], null ],
          null,
          [
            [ "Constr", [ "Ident", [ "SimpleLocal", "True" ], null ], [], [] ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "f" ], null ],
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
          [ "Ident", [ "SimpleLocal", "transaction_inc" ], null ],
          null,
          [ [ "Var", [ "Ident", [ "SimpleLocal", "one" ], null ] ], null ]
        ],
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Transaction" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Trans" ], null ],
              "c_arg_types": [
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                [ "PrimType", [ "String_typ" ] ]
              ]
            }
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_owners_map" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "owners" ], null ],
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "List" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ]
              ],
              [
                [
                  "Let",
                  [ "Ident", [ "SimpleLocal", "init" ], null ],
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
                      "Let",
                      [ "Ident", [ "SimpleLocal", "iter" ], null ],
                      null,
                      [
                        [
                          "Fun",
                          [ "Ident", [ "SimpleLocal", "acc" ], null ],
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
                              "Fun",
                              [ "Ident", [ "SimpleLocal", "cur_owner" ], null ],
                              [ "PrimType", [ "Bystrx_typ", 20 ] ],
                              [
                                [
                                  "Builtin",
                                  [ [ "Builtin_put" ], null ],
                                  [],
                                  [
                                    [ "Ident", [ "SimpleLocal", "acc" ], null ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "cur_owner" ],
                                      null
                                    ],
                                    [ "Ident", [ "SimpleLocal", "t" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "folder" ], null ],
                          null,
                          [
                            [
                              "TApp",
                              [
                                "Ident", [ "SimpleLocal", "list_foldl" ], null
                              ],
                              [
                                [ "PrimType", [ "Bystrx_typ", 20 ] ],
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
                                ]
                              ]
                            ],
                            null
                          ],
                          [
                            [
                              "App",
                              [ "Ident", [ "SimpleLocal", "folder" ], null ],
                              [
                                [ "Ident", [ "SimpleLocal", "iter" ], null ],
                                [ "Ident", [ "SimpleLocal", "init" ], null ],
                                [ "Ident", [ "SimpleLocal", "owners" ], null ]
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
                  [ "Ident", [ "SimpleLocal", "amount" ], null ],
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "tag" ], null ],
                      [ "PrimType", [ "String_typ" ] ],
                      [
                        [
                          "Message",
                          [
                            [
                              "_tag",
                              [
                                "MVar",
                                [ "Ident", [ "SimpleLocal", "tag" ], null ]
                              ]
                            ],
                            [
                              "_recipient",
                              [
                                "MVar",
                                [
                                  "Ident", [ "SimpleLocal", "recipient" ], null
                                ]
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
                  [ "Ident", [ "SimpleLocal", "amount" ], null ],
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [
                    [
                      "Fun",
                      [ "Ident", [ "SimpleLocal", "tag" ], null ],
                      [ "PrimType", [ "String_typ" ] ],
                      [
                        [
                          "Let",
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
                                  [
                                    "Ident", [ "SimpleLocal", "nil_msg" ], null
                                  ],
                                  null,
                                  [
                                    [
                                      "Constr",
                                      [
                                        "Ident", [ "SimpleLocal", "Nil" ], null
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
                              [ "Ident", [ "SimpleLocal", "msg" ], null ],
                              null,
                              [
                                [
                                  "App",
                                  [
                                    "Ident",
                                    [ "SimpleLocal", "transaction_msg" ],
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
                                      [ "SimpleLocal", "amount" ],
                                      null
                                    ],
                                    [ "Ident", [ "SimpleLocal", "tag" ], null ]
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
        ]
      ]
    },
    "elibs": [
      [ [ "Ident", [ "SimpleLocal", "ListUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "IntUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "BoolUtils" ], null ], null ]
    ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "Wallet" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "owners_list" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "List" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ]
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "required_signatures" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
        ]
      ],
      "cconstraint": [
        [
          "Let",
          [ "Ident", [ "SimpleLocal", "len" ], null ],
          null,
          [
            [
              "TApp",
              [ "Ident", [ "SimpleLocal", "list_length" ], null ],
              [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ]
            ],
            null
          ],
          [
            [
              "Let",
              [ "Ident", [ "SimpleLocal", "no_of_owners" ], null ],
              null,
              [
                [
                  "App",
                  [ "Ident", [ "SimpleLocal", "len" ], null ],
                  [ [ "Ident", [ "SimpleLocal", "owners_list" ], null ] ]
                ],
                null
              ],
              [
                [
                  "Let",
                  [ "Ident", [ "SimpleLocal", "owners_ok" ], null ],
                  null,
                  [
                    [
                      "Builtin",
                      [ [ "Builtin_lt" ], null ],
                      [],
                      [
                        [ "Ident", [ "SimpleLocal", "zero" ], null ],
                        [ "Ident", [ "SimpleLocal", "no_of_owners" ], null ]
                      ]
                    ],
                    null
                  ],
                  [
                    [
                      "Let",
                      [
                        "Ident",
                        [ "SimpleLocal", "required_sigs_not_too_low" ],
                        null
                      ],
                      null,
                      [
                        [
                          "Builtin",
                          [ [ "Builtin_lt" ], null ],
                          [],
                          [
                            [ "Ident", [ "SimpleLocal", "zero" ], null ],
                            [
                              "Ident",
                              [ "SimpleLocal", "required_signatures" ],
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
                            [ "SimpleLocal", "required_sigs_too_high" ],
                            null
                          ],
                          null,
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_lt" ], null ],
                              [],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "no_of_owners" ],
                                  null
                                ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "required_signatures" ],
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
                                [ "SimpleLocal", "required_sigs_not_too_high" ],
                                null
                              ],
                              null,
                              [
                                [
                                  "App",
                                  [ "Ident", [ "SimpleLocal", "negb" ], null ],
                                  [
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal", "required_sigs_too_high"
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
                                    [ "SimpleLocal", "required_sigs_ok" ],
                                    null
                                  ],
                                  null,
                                  [
                                    [
                                      "App",
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "andb" ],
                                        null
                                      ],
                                      [
                                        [
                                          "Ident",
                                          [
                                            "SimpleLocal",
                                            "required_sigs_not_too_high"
                                          ],
                                          null
                                        ],
                                        [
                                          "Ident",
                                          [
                                            "SimpleLocal",
                                            "required_sigs_not_too_low"
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
                                        [ "SimpleLocal", "all_ok" ],
                                        null
                                      ],
                                      null,
                                      [
                                        [
                                          "App",
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "andb" ],
                                            null
                                          ],
                                          [
                                            [
                                              "Ident",
                                              [
                                                "SimpleLocal",
                                                "required_sigs_ok"
                                              ],
                                              null
                                            ],
                                            [
                                              "Ident",
                                              [ "SimpleLocal", "owners_ok" ],
                                              null
                                            ]
                                          ]
                                        ],
                                        null
                                      ],
                                      [
                                        [
                                          "MatchExpr",
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "all_ok" ],
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
                                                  "Let",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "owners_map"
                                                    ],
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
                                                          "mk_owners_map"
                                                        ],
                                                        null
                                                      ],
                                                      [
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "owners_list"
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
                                                          "size_of_owners_map"
                                                        ],
                                                        null
                                                      ],
                                                      null,
                                                      [
                                                        [
                                                          "Builtin",
                                                          [
                                                            [ "Builtin_size" ],
                                                            null
                                                          ],
                                                          [],
                                                          [
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "owners_map"
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
                                                            [ "Builtin_eq" ],
                                                            null
                                                          ],
                                                          [],
                                                          [
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "size_of_owners_map"
                                                              ],
                                                              null
                                                            ],
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "no_of_owners"
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
                                                  "Constr",
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "False" ],
                                                    null
                                                  ],
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
      "cfields": [
        [
          [ "Ident", [ "SimpleLocal", "owners" ], null ],
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
              "App",
              [ "Ident", [ "SimpleLocal", "mk_owners_map" ], null ],
              [ [ "Ident", [ "SimpleLocal", "owners_list" ], null ] ]
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "transactionCount" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
          [ [ "Literal", "0" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "signatures" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
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
            ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
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
                  ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "signature_counts" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
            [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
                  [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "transactions" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
            [
              "ADT",
              [
                "Ident",
                [ "SimpleLocal", "Transaction" ],
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
                  [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
                  [
                    "ADT",
                    [
                      "Ident",
                      [ "SimpleLocal", "Transaction" ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "MakeError" ], null ],
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
                    [ "Ident", [ "SimpleLocal", "mk_error_event" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "AddSignature" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "transactionId" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "signee" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "sig" ], null ],
                [ "Ident", [ "SimpleLocal", "signatures" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "transactionId" ], null ],
                  [ "Ident", [ "SimpleLocal", "signee" ], null ]
                ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "sig" ], null ],
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
                          "MapGet",
                          [ "Ident", [ "SimpleLocal", "count" ], null ],
                          [
                            "Ident",
                            [ "SimpleLocal", "signature_counts" ],
                            null
                          ],
                          [
                            [
                              "Ident", [ "SimpleLocal", "transactionId" ], null
                            ]
                          ],
                          true
                        ],
                        null
                      ],
                      [
                        [
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "count" ], null ],
                          [
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "None" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "MapUpdate",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "signature_counts" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "transactionId" ],
                                        null
                                      ]
                                    ],
                                    [ "Ident", [ "SimpleLocal", "one" ], null ]
                                  ],
                                  null
                                ]
                              ]
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Binder",
                                    [ "Ident", [ "SimpleLocal", "c" ], null ]
                                  ]
                                ]
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [
                                      "Ident", [ "SimpleLocal", "new_c" ], null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_add" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "c" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "one" ],
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
                                      [ "SimpleLocal", "signature_counts" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "transactionId" ],
                                        null
                                      ]
                                    ],
                                    [
                                      "Ident", [ "SimpleLocal", "new_c" ], null
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
                          [ "Ident", [ "SimpleLocal", "signatures" ], null ],
                          [
                            [
                              "Ident", [ "SimpleLocal", "transactionId" ], null
                            ],
                            [ "Ident", [ "SimpleLocal", "signee" ], null ]
                          ],
                          [ "Ident", [ "SimpleLocal", "t" ], null ]
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
                                [
                                  "SimpleLocal", "mk_signed_transaction_event"
                                ],
                                null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "transactionId" ],
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
                                [ "SimpleLocal", "AlreadySigned" ],
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
                          [ "Ident", [ "SimpleLocal", "MakeError" ], null ],
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
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "SubmitTransaction" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "recipient" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "amount" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "tag" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "sender_is_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "owners" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "sender_is_owner" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "NonOwnerCannotSubmit" ],
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
                          [ "Ident", [ "SimpleLocal", "MakeError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          "Load",
                          [ "Ident", [ "SimpleLocal", "tc" ], null ],
                          [
                            "Ident",
                            [ "SimpleLocal", "transactionCount" ],
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
                          [
                            "Ident", [ "SimpleLocal", "amount_is_zero" ], null
                          ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "amount" ], null ],
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
                          [
                            "Ident", [ "SimpleLocal", "amount_is_zero" ], null
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "err" ], null ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "InvalidAmount" ],
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
                                      [ "SimpleLocal", "MakeError" ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "transaction" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "Trans" ],
                                          null
                                        ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "recipient" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "amount" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "tag" ],
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
                                      [ "SimpleLocal", "transactions" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident", [ "SimpleLocal", "tc" ], null
                                      ]
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "transaction" ],
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
                                      [ "SimpleLocal", "AddSignature" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident", [ "SimpleLocal", "tc" ], null
                                      ],
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "_sender" ],
                                        null
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
                                      [ "SimpleLocal", "tc_new" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_add" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "tc" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [
                                              "SimpleLocal", "transaction_inc"
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
                                    "Store",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "transactionCount" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "tc_new" ],
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
                                        "App",
                                        [
                                          "Ident",
                                          [
                                            "SimpleLocal",
                                            "mk_transaction_added_event"
                                          ],
                                          null
                                        ],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "tc" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "recipient" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "amount" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "tag" ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "SignTransaction" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "transactionId" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "sender_is_owner" ], null ],
                [ "Ident", [ "SimpleLocal", "owners" ], null ],
                [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "sender_is_owner" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "NonOwnerCannotSign" ],
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
                          [ "Ident", [ "SimpleLocal", "MakeError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          "MapGet",
                          [ "Ident", [ "SimpleLocal", "transaction" ], null ],
                          [ "Ident", [ "SimpleLocal", "transactions" ], null ],
                          [
                            [
                              "Ident", [ "SimpleLocal", "transactionId" ], null
                            ]
                          ],
                          true
                        ],
                        null
                      ],
                      [
                        [
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "transaction" ], null ],
                          [
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
                                          [
                                            "SimpleLocal",
                                            "UnknownTransactionId"
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
                                      [ "SimpleLocal", "MakeError" ],
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
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [ [ "Wildcard" ] ]
                              ],
                              [
                                [
                                  [
                                    "CallProc",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "AddSignature" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Ident",
                                        [ "SimpleLocal", "transactionId" ],
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
          "comp_name": [
            "Ident", [ "SimpleLocal", "DeleteTransaction" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "transactionId" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "transactions" ], null ],
                [ [ "Ident", [ "SimpleLocal", "transactionId" ], null ] ],
                null
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "signatures" ], null ],
                [ [ "Ident", [ "SimpleLocal", "transactionId" ], null ] ],
                null
              ],
              null
            ],
            [
              [
                "MapUpdate",
                [ "Ident", [ "SimpleLocal", "signature_counts" ], null ],
                [ [ "Ident", [ "SimpleLocal", "transactionId" ], null ] ],
                null
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "ExecuteTransaction" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "transactionId" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "transaction_opt" ], null ],
                [ "Ident", [ "SimpleLocal", "transactions" ], null ],
                [ [ "Ident", [ "SimpleLocal", "transactionId" ], null ] ],
                true
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "transaction_opt" ], null ],
                [
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
                                [ "SimpleLocal", "UnknownTransactionId" ],
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
                          [ "Ident", [ "SimpleLocal", "MakeError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
                        ],
                        null
                      ]
                    ]
                  ],
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Constructor",
                          [ "Ident", [ "SimpleLocal", "Trans" ], null ],
                          [
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "recipient" ], null ]
                            ],
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "amount" ], null ]
                            ],
                            [
                              "Binder",
                              [ "Ident", [ "SimpleLocal", "tag" ], null ]
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
                            [ "SimpleLocal", "recipient_is_sender" ],
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
                          "MapGet",
                          [
                            "Ident", [ "SimpleLocal", "sender_is_owner" ], null
                          ],
                          [ "Ident", [ "SimpleLocal", "owners" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
                          false
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [
                            "Ident",
                            [ "SimpleLocal", "sender_may_execute" ],
                            null
                          ],
                          [
                            [
                              "App",
                              [ "Ident", [ "SimpleLocal", "orb" ], null ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "recipient_is_sender" ],
                                  null
                                ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "sender_is_owner" ],
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
                            [ "SimpleLocal", "sender_may_execute" ],
                            null
                          ],
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
                                    [ "Ident", [ "SimpleLocal", "err" ], null ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [
                                            "SimpleLocal",
                                            "SenderMayNotExecute"
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
                                      [ "SimpleLocal", "MakeError" ],
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
                                    "Load",
                                    [ "Ident", [ "SimpleLocal", "bal" ], null ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_balance" ],
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
                                      [ "SimpleLocal", "not_enough_money" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_lt" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "bal" ],
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
                                      [ "SimpleLocal", "not_enough_money" ],
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
                                                      "InsufficientFunds"
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
                                                [ "SimpleLocal", "MakeError" ],
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
                                            [ "SimpleLocal", "False" ],
                                            null
                                          ],
                                          []
                                        ],
                                        [
                                          [
                                            [
                                              "MapGet",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "sig_count_opt"
                                                ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "signature_counts"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "transactionId"
                                                  ],
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
                                                [
                                                  "SimpleLocal",
                                                  "sig_count_opt"
                                                ],
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
                                                          [
                                                            "SimpleLocal",
                                                            "err"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Constr",
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "NoSignatureListFound"
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
                                                          [
                                                            "SimpleLocal",
                                                            "MakeError"
                                                          ],
                                                          null
                                                        ],
                                                        [
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
                                                          [
                                                            "SimpleLocal",
                                                            "sig_count"
                                                          ],
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
                                                            "not_enough_signatures"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Builtin",
                                                            [
                                                              [ "Builtin_lt" ],
                                                              null
                                                            ],
                                                            [],
                                                            [
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "sig_count"
                                                                ],
                                                                null
                                                              ],
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "required_signatures"
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
                                                        "MatchStmt",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "not_enough_signatures"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            [
                                                              "Constructor",
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "True"
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
                                                                      "Constr",
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "NotEnoughSignatures"
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
                                                                    [
                                                                      "SimpleLocal",
                                                                      "MakeError"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [
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
                                                          ],
                                                          [
                                                            [
                                                              "Constructor",
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "False"
                                                                ],
                                                                null
                                                              ],
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
                                                                      "DeleteTransaction"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [
                                                                    [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "transactionId"
                                                                      ],
                                                                      null
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
                                                                    [
                                                                      "SimpleLocal",
                                                                      "msgs"
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
                                                                      "recipient"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "amount"
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
                                                                    [
                                                                      "SimpleLocal",
                                                                      "msgs"
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
                                                                    [
                                                                      "SimpleLocal",
                                                                      "e"
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
                                                                      "mk_transaction_executed_event"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "transactionId"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "recipient"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "amount"
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
                                                                    [
                                                                      "SimpleLocal",
                                                                      "e"
                                                                    ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "RevokeSignature" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "transactionId" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "MapGet",
                [ "Ident", [ "SimpleLocal", "sig" ], null ],
                [ "Ident", [ "SimpleLocal", "signatures" ], null ],
                [
                  [ "Ident", [ "SimpleLocal", "transactionId" ], null ],
                  [ "Ident", [ "SimpleLocal", "_sender" ], null ]
                ],
                false
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "sig" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "err" ], null ],
                          [
                            [
                              "Constr",
                              [
                                "Ident",
                                [ "SimpleLocal", "NotAlreadySigned" ],
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
                          [ "Ident", [ "SimpleLocal", "MakeError" ], null ],
                          [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          "MapGet",
                          [ "Ident", [ "SimpleLocal", "count" ], null ],
                          [
                            "Ident",
                            [ "SimpleLocal", "signature_counts" ],
                            null
                          ],
                          [
                            [
                              "Ident", [ "SimpleLocal", "transactionId" ], null
                            ]
                          ],
                          true
                        ],
                        null
                      ],
                      [
                        [
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "count" ], null ],
                          [
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
                                          [
                                            "SimpleLocal",
                                            "IncorrectSignatureCount"
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
                                      [ "SimpleLocal", "MakeError" ],
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
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Binder",
                                    [ "Ident", [ "SimpleLocal", "c" ], null ]
                                  ]
                                ]
                              ],
                              [
                                [
                                  [
                                    "Bind",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "c_is_zero" ],
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
                                            [ "SimpleLocal", "c" ],
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
                                      [ "SimpleLocal", "c_is_zero" ],
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
                                                      "IncorrectSignatureCount"
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
                                                [ "SimpleLocal", "MakeError" ],
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
                                                [ "SimpleLocal", "new_c" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_sub" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "c" ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "one" ],
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
                                                  "signature_counts"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "transactionId"
                                                  ],
                                                  null
                                                ]
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "new_c" ],
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
                                                [ "SimpleLocal", "signatures" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Ident",
                                                  [
                                                    "SimpleLocal",
                                                    "transactionId"
                                                  ],
                                                  null
                                                ],
                                                [
                                                  "Ident",
                                                  [ "SimpleLocal", "_sender" ],
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
                                                  "App",
                                                  [
                                                    "Ident",
                                                    [
                                                      "SimpleLocal",
                                                      "mk_signature_revoked_event"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "transactionId"
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
          "comp_name": [ "Ident", [ "SimpleLocal", "AddFunds" ], null ],
          "comp_params": [],
          "comp_body": [ [ [ "AcceptPayment" ], null ] ]
        }
      ]
    }
  }
