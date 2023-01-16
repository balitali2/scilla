  $ scilla-fmt --json --deannot --human-readable wallet.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "WalletLib" ], null ],
      "lentries": [
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
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Transaction created" ] ],
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
          [ "Ident", [ "SimpleLocal", "mk_transaction_signed_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "no_of_sigs" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Transaction signed" ] ],
                    [
                      "signature_count",
                      [
                        "MVar",
                        [ "Ident", [ "SimpleLocal", "no_of_sigs" ], null ]
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
            "Ident", [ "SimpleLocal", "mk_candidate_owner_added_event" ], null
          ],
          null,
          [
            [
              "Message",
              [ [ "_eventname", [ "MLit", "Candiate owner added" ] ] ]
            ],
            null
          ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "mk_owner_signed_event" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "no_of_sigs" ], null ],
              [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
              [
                [
                  "Message",
                  [
                    [ "_eventname", [ "MLit", "Owner signed" ] ],
                    [
                      "signature_count",
                      [
                        "MVar",
                        [ "Ident", [ "SimpleLocal", "no_of_sigs" ], null ]
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
          [ "Ident", [ "SimpleLocal", "mk_new_owner_approved_event" ], null ],
          null,
          [
            [
              "Message", [ [ "_eventname", [ "MLit", "New owner approved" ] ] ]
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
                "Ident", [ "SimpleLocal", "SenderIsNotRecipient" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CandidateAlreadyAdded" ], null
              ],
              "c_arg_types": []
            },
            {
              "cname": [ "Ident", [ "SimpleLocal", "UnknownCandidate" ], null ],
              "c_arg_types": []
            },
            {
              "cname": [
                "Ident", [ "SimpleLocal", "CandidateAlreadyOwner" ], null
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
                              [ "SimpleLocal", "SenderIsNotRecipient" ],
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
                              [ "SimpleLocal", "CandidateAlreadyAdded" ],
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
                              [ "SimpleLocal", "UnknownCandidate" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-12" ], null ]
                        ],
                        [
                          [
                            "Constructor",
                            [
                              "Ident",
                              [ "SimpleLocal", "CandidateAlreadyOwner" ],
                              null
                            ],
                            []
                          ],
                          [ [ "Literal", "-13" ], null ]
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
          [ "Ident", [ "SimpleLocal", "transaction_inc" ], null ],
          null,
          [ [ "Literal", "1" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "empty_sigs" ], null ],
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
          ]
        ],
        [
          "LibTyp",
          [ "Ident", [ "SimpleLocal", "Transaction" ], null ],
          [
            {
              "cname": [ "Ident", [ "SimpleLocal", "Trans" ], null ],
              "c_arg_types": [
                [ "PrimType", [ "Bystrx_typ", 20 ] ],
                [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
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
              [ "Ident", [ "SimpleLocal", "initial_owners" ], null ],
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
                                  "Let",
                                  [ "Ident", [ "SimpleLocal", "mem" ], null ],
                                  null,
                                  [
                                    [
                                      "Builtin",
                                      [ [ "Builtin_get" ], null ],
                                      [],
                                      [
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "acc" ],
                                          null
                                        ],
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "cur_owner" ],
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
                                        "Ident", [ "SimpleLocal", "mem" ], null
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
                                                  [ "SimpleLocal", "True" ],
                                                  null
                                                ],
                                                []
                                              ]
                                            ]
                                          ],
                                          [
                                            [
                                              "Var",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "acc" ],
                                                null
                                              ]
                                            ],
                                            null
                                          ]
                                        ],
                                        [
                                          [ "Wildcard" ],
                                          [
                                            [
                                              "Let",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "t" ],
                                                null
                                              ],
                                              null,
                                              [
                                                [
                                                  "Constr",
                                                  [
                                                    "Ident",
                                                    [ "SimpleLocal", "True" ],
                                                    null
                                                  ],
                                                  [],
                                                  []
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_put" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "acc" ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "cur_owner"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "t" ],
                                                      null
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
                                [
                                  "Ident",
                                  [ "SimpleLocal", "initial_owners" ],
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
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "check_contract_validity" ], null ],
          null,
          [
            [
              "Fun",
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
                  "Let",
                  [ "Ident", [ "SimpleLocal", "no_of_owners" ], null ],
                  null,
                  [
                    [
                      "Builtin",
                      [ [ "Builtin_size" ], null ],
                      [],
                      [ [ "Ident", [ "SimpleLocal", "owners" ], null ] ]
                    ],
                    null
                  ],
                  [
                    [
                      "Let",
                      [ "Ident", [ "SimpleLocal", "zero" ], null ],
                      null,
                      [ [ "Literal", "0" ], null ],
                      [
                        [
                          "Builtin",
                          [ [ "Builtin_lt" ], null ],
                          [],
                          [
                            [ "Ident", [ "SimpleLocal", "zero" ], null ],
                            [
                              "Ident", [ "SimpleLocal", "no_of_owners" ], null
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
          [ "Ident", [ "SimpleLocal", "transaction_executed" ], null ],
          null,
          [ [ "Literal", "2" ], null ]
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
                            ],
                            [
                              "code",
                              [
                                "MVar",
                                [
                                  "Ident",
                                  [ "SimpleLocal", "transaction_executed" ],
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
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "address_mem" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "sender" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "mem_map" ], null ],
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
                      [ "Ident", [ "SimpleLocal", "mem" ], null ],
                      null,
                      [
                        [
                          "Builtin",
                          [ [ "Builtin_get" ], null ],
                          [],
                          [
                            [ "Ident", [ "SimpleLocal", "mem_map" ], null ],
                            [ "Ident", [ "SimpleLocal", "sender" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "MatchExpr",
                          [ "Ident", [ "SimpleLocal", "mem" ], null ],
                          [
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
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Constructor",
                                    [
                                      "Ident", [ "SimpleLocal", "False" ], null
                                    ],
                                    []
                                  ]
                                ]
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
                            ],
                            [
                              [
                                "Constructor",
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Constructor",
                                    [
                                      "Ident", [ "SimpleLocal", "True" ], null
                                    ],
                                    []
                                  ]
                                ]
                              ],
                              [
                                [
                                  "Constr",
                                  [ "Ident", [ "SimpleLocal", "True" ], null ],
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
        ]
      ]
    },
    "elibs": [
      [ [ "Ident", [ "SimpleLocal", "ListUtils" ], null ], null ],
      [ [ "Ident", [ "SimpleLocal", "IntUtils" ], null ], null ]
    ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "Wallet" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "initial_owners" ], null ],
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
          "Literal",
          { "name": [ "SimpleLocal", "True" ], "types": [], "lits": [] }
        ],
        null
      ],
      "cfields": [
        [
          [ "Ident", [ "SimpleLocal", "validity_checked" ], null ],
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
        ],
        [
          [ "Ident", [ "SimpleLocal", "contract_valid" ], null ],
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
        ],
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
        ],
        [
          [ "Ident", [ "SimpleLocal", "owner_signatures" ], null ],
          [
            "MapType",
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
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "tc" ], null ],
                [ "Ident", [ "SimpleLocal", "transactionCount" ], null ]
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
                [ "Ident", [ "SimpleLocal", "amount_is_zero" ], null ],
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
                [ "Ident", [ "SimpleLocal", "amount_is_zero" ], null ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          [ "Ident", [ "SimpleLocal", "transaction" ], null ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "Trans" ], null ],
                              [],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "recipient" ], null
                                ],
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
                          "Load",
                          [ "Ident", [ "SimpleLocal", "ts_tmp" ], null ],
                          [ "Ident", [ "SimpleLocal", "transactions" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "ts_new" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_put" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "ts_tmp" ], null ],
                                [ "Ident", [ "SimpleLocal", "tc" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "transaction" ],
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
                          "Load",
                          [ "Ident", [ "SimpleLocal", "sigs_tmp" ], null ],
                          [ "Ident", [ "SimpleLocal", "signatures" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "sigs_new" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_put" ], null ],
                              [],
                              [
                                [
                                  "Ident", [ "SimpleLocal", "sigs_tmp" ], null
                                ],
                                [ "Ident", [ "SimpleLocal", "tc" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "empty_sigs" ],
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
                          [ "Ident", [ "SimpleLocal", "tc_new" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_add" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "tc" ], null ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "transaction_inc" ],
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
                          [ "Ident", [ "SimpleLocal", "tc_new" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Store",
                          [ "Ident", [ "SimpleLocal", "transactions" ], null ],
                          [ "Ident", [ "SimpleLocal", "ts_new" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Store",
                          [ "Ident", [ "SimpleLocal", "signatures" ], null ],
                          [ "Ident", [ "SimpleLocal", "sigs_new" ], null ]
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
                                [ "SimpleLocal", "mk_transaction_added_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "tc" ], null ] ]
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
                "Bind",
                [ "Ident", [ "SimpleLocal", "sender_mem" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "address_mem" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "owners_tmp" ], null ],
                [ "Ident", [ "SimpleLocal", "owners" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "sender_is_owner" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "sender_mem" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "owners_tmp" ], null ] ]
                  ],
                  null
                ]
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          "Load",
                          [ "Ident", [ "SimpleLocal", "ts_tmp" ], null ],
                          [ "Ident", [ "SimpleLocal", "transactions" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "transaction" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_get" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "ts_tmp" ], null ],
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "mk_error_event" ],
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
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Constructor",
                                    [
                                      "Ident", [ "SimpleLocal", "Trans" ], null
                                    ],
                                    [
                                      [
                                        "Binder",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "recipient" ],
                                          null
                                        ]
                                      ],
                                      [
                                        "Binder",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "amount" ],
                                          null
                                        ]
                                      ]
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
                                      [ "SimpleLocal", "sigs_tmp" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "signatures" ],
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
                                      [ "SimpleLocal", "sigs_opt" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_get" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sigs_tmp" ],
                                            null
                                          ],
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
                                    "MatchStmt",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "sigs_opt" ],
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
                                                      "mk_error_event"
                                                    ],
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
                                            [ "SimpleLocal", "Some" ],
                                            null
                                          ],
                                          [
                                            [
                                              "Binder",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "sigs" ],
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
                                                  "sender_has_signed"
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
                                                      "sender_mem"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "sigs" ],
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
                                                  "sender_has_signed"
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
                                                                "AlreadySigned"
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
                                                        "Bind",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal", "e"
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
                                                                "mk_error_event"
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
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      [
                                                        "CreateEvnt",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal", "e"
                                                          ],
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
                                                            "SimpleLocal", "t"
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
                                                                "True"
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
                                                        "Bind",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "new_sigs"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Builtin",
                                                            [
                                                              [ "Builtin_put" ],
                                                              null
                                                            ],
                                                            [],
                                                            [
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "sigs"
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
                                                                  "t"
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
                                                        "Bind",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "new_signatures"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Builtin",
                                                            [
                                                              [ "Builtin_put" ],
                                                              null
                                                            ],
                                                            [],
                                                            [
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "sigs_tmp"
                                                                ],
                                                                null
                                                              ],
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
                                                                  "new_sigs"
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
                                                          [
                                                            "SimpleLocal",
                                                            "signatures"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "new_signatures"
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
            ],
            [
              [ "Ident", [ "SimpleLocal", "tag" ], null ],
              [ "PrimType", [ "String_typ" ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "transactions_tmp" ], null ],
                [ "Ident", [ "SimpleLocal", "transactions" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "transaction_opt" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "transactions_tmp" ], null ],
                      [ "Ident", [ "SimpleLocal", "transactionId" ], null ]
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          "MatchStmt",
                          [
                            "Ident",
                            [ "SimpleLocal", "recipient_is_sender" ],
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
                                            "SenderIsNotRecipient"
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "mk_error_event" ],
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
                                                      "mk_error_event"
                                                    ],
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
                                            [ "SimpleLocal", "False" ],
                                            null
                                          ],
                                          []
                                        ],
                                        [
                                          [
                                            [
                                              "Load",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "signatures_tmp"
                                                ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "signatures" ],
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
                                                [ "SimpleLocal", "sigs_opt" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_get" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "signatures_tmp"
                                                      ],
                                                      null
                                                    ],
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
                                              "MatchStmt",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "sigs_opt" ],
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
                                                        "Bind",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal", "e"
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
                                                                "mk_error_event"
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
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      [
                                                        "CreateEvnt",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal", "e"
                                                          ],
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
                                                            "sigs"
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
                                                            "no_of_sigs"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Builtin",
                                                            [
                                                              [
                                                                "Builtin_size"
                                                              ],
                                                              null
                                                            ],
                                                            [],
                                                            [
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "sigs"
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
                                                                  "no_of_sigs"
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
                                                                      "mk_error_event"
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
                                                                  "Bind",
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "new_transactions"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [
                                                                    [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_remove"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "transactions_tmp"
                                                                      ],
                                                                      null
                                                                      ],
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
                                                                  "Store",
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "transactions"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "new_transactions"
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
                                                                      "new_signatures"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [
                                                                    [
                                                                      "Builtin",
                                                                      [
                                                                      [
                                                                      "Builtin_remove"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [],
                                                                      [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "signatures_tmp"
                                                                      ],
                                                                      null
                                                                      ],
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
                                                                  "Store",
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "signatures"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "new_signatures"
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
                "Load",
                [ "Ident", [ "SimpleLocal", "sigs_tmp" ], null ],
                [ "Ident", [ "SimpleLocal", "signatures" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "sigs_opt" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "sigs_tmp" ], null ],
                      [ "Ident", [ "SimpleLocal", "transactionId" ], null ]
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
                [ "Ident", [ "SimpleLocal", "sigs_opt" ], null ],
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
                                [ "SimpleLocal", "NoSignatureListFound" ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "sigs" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [
                            "Ident",
                            [ "SimpleLocal", "sender_has_signed" ],
                            null
                          ],
                          [
                            [
                              "App",
                              [
                                "Ident", [ "SimpleLocal", "address_mem" ], null
                              ],
                              [
                                [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                                [ "Ident", [ "SimpleLocal", "sigs" ], null ]
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
                            [ "SimpleLocal", "sender_has_signed" ],
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "mk_error_event" ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_sigs" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_remove" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sigs" ],
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
                                    "Bind",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_signatures" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_put" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sigs_tmp" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "transactionId" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "new_sigs" ],
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
                                      [ "SimpleLocal", "signatures" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_signatures" ],
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
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "RevokeOwnerSignature" ], null
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
                "Load",
                [ "Ident", [ "SimpleLocal", "sigs_tmp" ], null ],
                [ "Ident", [ "SimpleLocal", "owner_signatures" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "sigs_opt" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "sigs_tmp" ], null ],
                      [ "Ident", [ "SimpleLocal", "new_owner" ], null ]
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
                [ "Ident", [ "SimpleLocal", "sigs_opt" ], null ],
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
                                [ "SimpleLocal", "NoSignatureListFound" ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "sigs" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Bind",
                          [
                            "Ident",
                            [ "SimpleLocal", "sender_has_signed" ],
                            null
                          ],
                          [
                            [
                              "App",
                              [
                                "Ident", [ "SimpleLocal", "address_mem" ], null
                              ],
                              [
                                [ "Ident", [ "SimpleLocal", "_sender" ], null ],
                                [ "Ident", [ "SimpleLocal", "sigs" ], null ]
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
                            [ "SimpleLocal", "sender_has_signed" ],
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "mk_error_event" ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_sigs" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_remove" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sigs" ],
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
                                    "Bind",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_signatures" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_put" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sigs_tmp" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "new_owner" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "new_sigs" ],
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
                                      [ "SimpleLocal", "owner_signatures" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_signatures" ],
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
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [
            "Ident", [ "SimpleLocal", "AddCandidateOwner" ], null
          ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "candidate" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "checked" ], null ],
                [ "Ident", [ "SimpleLocal", "validity_checked" ], null ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "checked" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "owners_map" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_owners_map" ],
                                null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "initial_owners" ],
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
                          [ "Ident", [ "SimpleLocal", "owners" ], null ],
                          [ "Ident", [ "SimpleLocal", "owners_map" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [
                            "Ident", [ "SimpleLocal", "valid_contract" ], null
                          ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "check_contract_validity" ],
                                null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "owners_map" ],
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
                            "Ident", [ "SimpleLocal", "contract_valid" ], null
                          ],
                          [
                            "Ident", [ "SimpleLocal", "valid_contract" ], null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "checked_now" ], null ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "True" ], null ],
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
                          "Store",
                          [
                            "Ident",
                            [ "SimpleLocal", "validity_checked" ],
                            null
                          ],
                          [ "Ident", [ "SimpleLocal", "checked_now" ], null ]
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
                "Load",
                [ "Ident", [ "SimpleLocal", "valid" ], null ],
                [ "Ident", [ "SimpleLocal", "contract_valid" ], null ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "valid" ], null ],
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
                                [ "SimpleLocal", "InvalidContract" ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          "Load",
                          [
                            "Ident",
                            [ "SimpleLocal", "owner_signatures_tmp" ],
                            null
                          ],
                          [
                            "Ident",
                            [ "SimpleLocal", "owner_signatures" ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "sigs_option" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_get" ], null ],
                              [],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "owner_signatures_tmp" ],
                                  null
                                ],
                                [
                                  "Ident", [ "SimpleLocal", "candidate" ], null
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
                          [ "Ident", [ "SimpleLocal", "sigs_option" ], null ],
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
                                          [
                                            "SimpleLocal",
                                            "CandidateAlreadyAdded"
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "mk_error_event" ],
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
                                [ "Ident", [ "SimpleLocal", "None" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Load",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "owners_tmp" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "owners" ],
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
                                      [ "SimpleLocal", "owner_option" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_get" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "owners_tmp" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "candidate" ],
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
                                      [ "SimpleLocal", "owner_option" ],
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
                                          [ [ "Wildcard" ] ]
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
                                                      "CandidateAlreadyOwner"
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
                                                      "mk_error_event"
                                                    ],
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
                                                [ "SimpleLocal", "empty_sigs" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Literal",
                                                  {
                                                    "mtype": [
                                                      [
                                                        "PrimType",
                                                        [ "Bystrx_typ", 20 ]
                                                      ],
                                                      [
                                                        "ADT",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "Bool"
                                                          ],
                                                          {
                                                            "fname": "",
                                                            "lnum": 0,
                                                            "cnum": 0
                                                          }
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
                                            null
                                          ],
                                          [
                                            [
                                              "Bind",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "new_owner_signatures"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_put" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "owner_signatures_tmp"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "candidate"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "empty_sigs"
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
                                                [
                                                  "SimpleLocal",
                                                  "owner_signatures"
                                                ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "new_owner_signatures"
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
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "SignOffNewOwner" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "candidate" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "sender_mem" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "address_mem" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "t" ], null ],
                [
                  [
                    "Constr",
                    [ "Ident", [ "SimpleLocal", "True" ], null ],
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
                "Load",
                [ "Ident", [ "SimpleLocal", "owners_tmp" ], null ],
                [ "Ident", [ "SimpleLocal", "owners" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "sender_is_owner" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "sender_mem" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "owners_tmp" ], null ] ]
                  ],
                  null
                ]
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                          "Load",
                          [
                            "Ident",
                            [ "SimpleLocal", "owner_signatures_tmp" ],
                            null
                          ],
                          [
                            "Ident",
                            [ "SimpleLocal", "owner_signatures" ],
                            null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "sigs_option" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_get" ], null ],
                              [],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "owner_signatures_tmp" ],
                                  null
                                ],
                                [
                                  "Ident", [ "SimpleLocal", "candidate" ], null
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
                          [ "Ident", [ "SimpleLocal", "sigs_option" ], null ],
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
                                          [ "SimpleLocal", "UnknownCandidate" ],
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "mk_error_event" ],
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
                                [ "Ident", [ "SimpleLocal", "Some" ], null ],
                                [
                                  [
                                    "Binder",
                                    [
                                      "Ident", [ "SimpleLocal", "sigs" ], null
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
                                      [ "SimpleLocal", "sender_has_signed" ],
                                      null
                                    ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "sender_mem" ],
                                          null
                                        ],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "sigs" ],
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
                                      [ "SimpleLocal", "sender_has_signed" ],
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
                                                      "AlreadySigned"
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
                                                      "mk_error_event"
                                                    ],
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
                                                [ "SimpleLocal", "new_sigs" ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_put" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [ "SimpleLocal", "sigs" ],
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
                                                      [ "SimpleLocal", "t" ],
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
                                                [
                                                  "SimpleLocal",
                                                  "new_owner_signatures"
                                                ],
                                                null
                                              ],
                                              [
                                                [
                                                  "Builtin",
                                                  [ [ "Builtin_put" ], null ],
                                                  [],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "owner_signatures_tmp"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "candidate"
                                                      ],
                                                      null
                                                    ],
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "new_sigs"
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
                                                [
                                                  "SimpleLocal",
                                                  "owner_signatures"
                                                ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "new_owner_signatures"
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
                                                [ "SimpleLocal", "no_of_sigs" ],
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
                                                      [
                                                        "SimpleLocal",
                                                        "new_sigs"
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
                                                      "mk_owner_signed_event"
                                                    ],
                                                    null
                                                  ],
                                                  [
                                                    [
                                                      "Ident",
                                                      [
                                                        "SimpleLocal",
                                                        "no_of_sigs"
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
          "comp_name": [ "Ident", [ "SimpleLocal", "ClaimOwnership" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "owner_signatures_tmp" ], null ],
                [ "Ident", [ "SimpleLocal", "owner_signatures" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "sigs_option" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [
                        "Ident",
                        [ "SimpleLocal", "owner_signatures_tmp" ],
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
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "sigs_option" ], null ],
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
                                [ "SimpleLocal", "UnknownCandidate" ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "sigs" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "Load",
                          [
                            "Ident", [ "SimpleLocal", "current_owners" ], null
                          ],
                          [ "Ident", [ "SimpleLocal", "owners" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "no_of_owners" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_size" ], null ],
                              [],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "current_owners" ],
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
                          [ "Ident", [ "SimpleLocal", "no_of_sigs" ], null ],
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_size" ], null ],
                              [],
                              [ [ "Ident", [ "SimpleLocal", "sigs" ], null ] ]
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
                            "Ident", [ "SimpleLocal", "all_have_signed" ], null
                          ],
                          [
                            [
                              "App",
                              [ "Ident", [ "SimpleLocal", "uint32_eq" ], null ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "no_of_sigs" ],
                                  null
                                ],
                                [
                                  "Ident",
                                  [ "SimpleLocal", "no_of_owners" ],
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
                            "Ident", [ "SimpleLocal", "all_have_signed" ], null
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
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "e" ], null ],
                                    [
                                      [
                                        "App",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "mk_error_event" ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_owner_signatures" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_remove" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [
                                              "SimpleLocal",
                                              "owner_signatures_tmp"
                                            ],
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
                                    "Store",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "owner_signatures" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_owner_signatures" ],
                                      null
                                    ]
                                  ],
                                  null
                                ],
                                [
                                  [
                                    "Bind",
                                    [ "Ident", [ "SimpleLocal", "t" ], null ],
                                    [
                                      [
                                        "Constr",
                                        [
                                          "Ident",
                                          [ "SimpleLocal", "True" ],
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
                                    "Bind",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_owners" ],
                                      null
                                    ],
                                    [
                                      [
                                        "Builtin",
                                        [ [ "Builtin_put" ], null ],
                                        [],
                                        [
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "current_owners" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "_sender" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "t" ],
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
                                      [ "SimpleLocal", "owners" ],
                                      null
                                    ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "new_owners" ],
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
                                        "Var",
                                        [
                                          "Ident",
                                          [
                                            "SimpleLocal",
                                            "mk_new_owner_approved_event"
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
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "checked" ], null ],
                [ "Ident", [ "SimpleLocal", "validity_checked" ], null ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "checked" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "owners_map" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_owners_map" ],
                                null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "initial_owners" ],
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
                          [ "Ident", [ "SimpleLocal", "owners" ], null ],
                          [ "Ident", [ "SimpleLocal", "owners_map" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [
                            "Ident", [ "SimpleLocal", "valid_contract" ], null
                          ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "check_contract_validity" ],
                                null
                              ],
                              [
                                [
                                  "Ident",
                                  [ "SimpleLocal", "owners_map" ],
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
                            "Ident", [ "SimpleLocal", "contract_valid" ], null
                          ],
                          [
                            "Ident", [ "SimpleLocal", "valid_contract" ], null
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "checked_now" ], null ],
                          [
                            [
                              "Constr",
                              [ "Ident", [ "SimpleLocal", "True" ], null ],
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
                          "Store",
                          [
                            "Ident",
                            [ "SimpleLocal", "validity_checked" ],
                            null
                          ],
                          [ "Ident", [ "SimpleLocal", "checked_now" ], null ]
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
                "Load",
                [ "Ident", [ "SimpleLocal", "valid" ], null ],
                [ "Ident", [ "SimpleLocal", "contract_valid" ], null ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "valid" ], null ],
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
                                [ "SimpleLocal", "InvalidContract" ],
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
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "e" ], null ],
                          [
                            [
                              "App",
                              [
                                "Ident",
                                [ "SimpleLocal", "mk_error_event" ],
                                null
                              ],
                              [ [ "Ident", [ "SimpleLocal", "err" ], null ] ]
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
                    [ [ [ "AcceptPayment" ], null ] ]
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
