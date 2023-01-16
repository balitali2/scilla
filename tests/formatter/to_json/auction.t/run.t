  $ scilla-fmt --json --deannot --human-readable auction.scilla
  {
    "smver": 0,
    "libs": {
      "lname": [ "Ident", [ "SimpleLocal", "OpenAuction" ], null ],
      "lentries": [
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "blk_leq" ], null ],
          null,
          [
            [
              "Fun",
              [ "Ident", [ "SimpleLocal", "blk1" ], null ],
              [ "PrimType", [ "Bnum_typ" ] ],
              [
                [
                  "Fun",
                  [ "Ident", [ "SimpleLocal", "blk2" ], null ],
                  [ "PrimType", [ "Bnum_typ" ] ],
                  [
                    [
                      "Let",
                      [ "Ident", [ "SimpleLocal", "bc1" ], null ],
                      null,
                      [
                        [
                          "Builtin",
                          [ [ "Builtin_blt" ], null ],
                          [],
                          [
                            [ "Ident", [ "SimpleLocal", "blk1" ], null ],
                            [ "Ident", [ "SimpleLocal", "blk2" ], null ]
                          ]
                        ],
                        null
                      ],
                      [
                        [
                          "Let",
                          [ "Ident", [ "SimpleLocal", "bc2" ], null ],
                          null,
                          [
                            [
                              "Builtin",
                              [ [ "Builtin_eq" ], null ],
                              [],
                              [
                                [ "Ident", [ "SimpleLocal", "blk1" ], null ],
                                [ "Ident", [ "SimpleLocal", "blk2" ], null ]
                              ]
                            ],
                            null
                          ],
                          [
                            [
                              "App",
                              [ "Ident", [ "SimpleLocal", "orb" ], null ],
                              [
                                [ "Ident", [ "SimpleLocal", "bc1" ], null ],
                                [ "Ident", [ "SimpleLocal", "bc2" ], null ]
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
          [ "Ident", [ "SimpleLocal", "late_to_bid_code" ], null ],
          null,
          [ [ "Literal", "1" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "too_early_to_bid_code" ], null ],
          null,
          [ [ "Literal", "2" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "bid_too_low_code" ], null ],
          null,
          [ [ "Literal", "3" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "first_bid_accepted_code" ], null ],
          null,
          [ [ "Literal", "4" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "bid_accepted_code" ], null ],
          null,
          [ [ "Literal", "5" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "money_sent_code" ], null ],
          null,
          [ [ "Literal", "6" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "nothing_to_withdraw_code" ], null ],
          null,
          [ [ "Literal", "7" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "auction_is_still_on_code" ], null ],
          null,
          [ [ "Literal", "8" ], null ]
        ],
        [
          "LibVar",
          [ "Ident", [ "SimpleLocal", "auction_end_code" ], null ],
          null,
          [ [ "Literal", "9" ], null ]
        ]
      ]
    },
    "elibs": [ [ [ "Ident", [ "SimpleLocal", "BoolUtils" ], null ], null ] ],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "OpenAuction" ], null ],
      "cparams": [
        [
          [ "Ident", [ "SimpleLocal", "auctionStart" ], null ],
          [ "PrimType", [ "Bnum_typ" ] ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "biddingTime" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "beneficiary" ], null ],
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
          [ "Ident", [ "SimpleLocal", "ended" ], null ],
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
          [ "Ident", [ "SimpleLocal", "highestBidder" ], null ],
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
              [ "Ident", [ "SimpleLocal", "None" ], null ],
              [ [ "PrimType", [ "Bystrx_typ", 20 ] ] ],
              []
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "highestBid" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
          [ [ "Literal", "0" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "pendingReturns" ], null ],
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
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Bid" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "ReadFromBC",
                [ "Ident", [ "SimpleLocal", "blk" ], null ],
                [ "CurBlockNum" ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "endtime" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_badd" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "auctionStart" ], null ],
                      [ "Ident", [ "SimpleLocal", "biddingTime" ], null ]
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
                [ "Ident", [ "SimpleLocal", "after_end" ], null ],
                [
                  [
                    "Let",
                    [ "Ident", [ "SimpleLocal", "one" ], null ],
                    null,
                    [ [ "Literal", "1" ], null ],
                    [
                      [
                        "Builtin",
                        [ [ "Builtin_badd" ], null ],
                        [],
                        [
                          [ "Ident", [ "SimpleLocal", "endtime" ], null ],
                          [ "Ident", [ "SimpleLocal", "one" ], null ]
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
                "Load",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [ "Ident", [ "SimpleLocal", "ended" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "in_time" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "blk_leq" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "after_end" ], null ],
                      [ "Ident", [ "SimpleLocal", "blk" ], null ]
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
                [ "Ident", [ "SimpleLocal", "flag1" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "orb" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "in_time" ], null ],
                      [ "Ident", [ "SimpleLocal", "e" ], null ]
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
                [ "Ident", [ "SimpleLocal", "early" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "blk_leq" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "blk" ], null ],
                      [ "Ident", [ "SimpleLocal", "auctionStart" ], null ]
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
                [ "Ident", [ "SimpleLocal", "early" ], null ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_sender" ],
                                      null
                                    ]
                                  ]
                                ],
                                [ "_amount", [ "MLit", "0" ] ],
                                [
                                  "code",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal", "too_early_to_bid_code"
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
                          "MatchStmt",
                          [ "Ident", [ "SimpleLocal", "flag1" ], null ],
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
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "_sender" ],
                                                null
                                              ]
                                            ]
                                          ],
                                          [ "_amount", [ "MLit", "0" ] ],
                                          [
                                            "code",
                                            [
                                              "MVar",
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "late_to_bid_code"
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
                                [ "Ident", [ "SimpleLocal", "False" ], null ],
                                []
                              ],
                              [
                                [
                                  [
                                    "Load",
                                    [ "Ident", [ "SimpleLocal", "hb" ], null ],
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "highestBid" ],
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
                                      [ "SimpleLocal", "sufficientBid" ],
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
                                            [ "SimpleLocal", "hb" ],
                                            null
                                          ],
                                          [
                                            "Ident",
                                            [ "SimpleLocal", "_amount" ],
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
                                      [ "SimpleLocal", "sufficientBid" ],
                                      null
                                    ],
                                    [
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
                                                [ "SimpleLocal", "msg" ],
                                                null
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
                                                          [
                                                            "SimpleLocal",
                                                            "_sender"
                                                          ],
                                                          null
                                                        ]
                                                      ]
                                                    ],
                                                    [
                                                      "_amount",
                                                      [ "MLit", "0" ]
                                                    ],
                                                    [
                                                      "code",
                                                      [
                                                        "MVar",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "bid_too_low_code"
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
                                            [ "SimpleLocal", "True" ],
                                            null
                                          ],
                                          []
                                        ],
                                        [
                                          [ [ "AcceptPayment" ], null ],
                                          [
                                            [
                                              "Load",
                                              [
                                                "Ident",
                                                [ "SimpleLocal", "hbPrev" ],
                                                null
                                              ],
                                              [
                                                "Ident",
                                                [
                                                  "SimpleLocal",
                                                  "highestBidder"
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
                                                [ "SimpleLocal", "hbPrev" ],
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
                                                        "Binder",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "prevHighestBidder"
                                                          ],
                                                          null
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
                                                          [
                                                            "SimpleLocal",
                                                            "option_pendingReturnsForPrevHB"
                                                          ],
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
                                                              "SimpleLocal",
                                                              "prevHighestBidder"
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
                                                        "Bind",
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "getPRForPrevHighestBidder"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "MatchExpr",
                                                            [
                                                              "Ident",
                                                              [
                                                                "SimpleLocal",
                                                                "option_pendingReturnsForPrevHB"
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
                                                                      "Some"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  [
                                                                    [
                                                                      "Binder",
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "pendingReturnsForPrevHB"
                                                                      ],
                                                                      null
                                                                      ]
                                                                    ]
                                                                  ]
                                                                ],
                                                                [
                                                                  [
                                                                    "Builtin",
                                                                    [
                                                                      [
                                                                      "Builtin_add"
                                                                      ],
                                                                      null
                                                                    ],
                                                                    [],
                                                                    [
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "hb"
                                                                      ],
                                                                      null
                                                                      ],
                                                                      [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "pendingReturnsForPrevHB"
                                                                      ],
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
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "None"
                                                                    ],
                                                                    null
                                                                  ],
                                                                  []
                                                                ],
                                                                [
                                                                  [
                                                                    "Var",
                                                                    [
                                                                      "Ident",
                                                                      [
                                                                      "SimpleLocal",
                                                                      "hb"
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
                                                              "SimpleLocal",
                                                              "prevHighestBidder"
                                                            ],
                                                            null
                                                          ]
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "getPRForPrevHighestBidder"
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
                                                            "bidder"
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
                                                                "Some"
                                                              ],
                                                              null
                                                            ],
                                                            [
                                                              [
                                                                "PrimType",
                                                                [
                                                                  "Bystrx_typ",
                                                                  20
                                                                ]
                                                              ]
                                                            ],
                                                            [
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "_sender"
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
                                                            "highestBidder"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "bidder"
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
                                                            "highestBid"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "_amount"
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
                                                            "SimpleLocal", "ev"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Message",
                                                            [
                                                              [
                                                                "_eventname",
                                                                [
                                                                  "MLit", "Bid"
                                                                ]
                                                              ],
                                                              [
                                                                "code",
                                                                [
                                                                  "MVar",
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "bid_accepted_code"
                                                                    ],
                                                                    null
                                                                  ]
                                                                ]
                                                              ],
                                                              [
                                                                "addr",
                                                                [
                                                                  "MVar",
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "_sender"
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
                                                                      "_amount"
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
                                                          [
                                                            "SimpleLocal", "ev"
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
                                                            "first_bidder"
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
                                                                "Some"
                                                              ],
                                                              null
                                                            ],
                                                            [
                                                              [
                                                                "PrimType",
                                                                [
                                                                  "Bystrx_typ",
                                                                  20
                                                                ]
                                                              ]
                                                            ],
                                                            [
                                                              [
                                                                "Ident",
                                                                [
                                                                  "SimpleLocal",
                                                                  "_sender"
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
                                                            "highestBidder"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "first_bidder"
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
                                                            "highestBid"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          "Ident",
                                                          [
                                                            "SimpleLocal",
                                                            "_amount"
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
                                                            "ev1"
                                                          ],
                                                          null
                                                        ],
                                                        [
                                                          [
                                                            "Message",
                                                            [
                                                              [
                                                                "_eventname",
                                                                [
                                                                  "MLit", "Bid"
                                                                ]
                                                              ],
                                                              [
                                                                "code",
                                                                [
                                                                  "MVar",
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "first_bid_accepted_code"
                                                                    ],
                                                                    null
                                                                  ]
                                                                ]
                                                              ],
                                                              [
                                                                "addr",
                                                                [
                                                                  "MVar",
                                                                  [
                                                                    "Ident",
                                                                    [
                                                                      "SimpleLocal",
                                                                      "_sender"
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
                                                                      "_amount"
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
                                                          [
                                                            "SimpleLocal",
                                                            "ev1"
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
          "comp_name": [ "Ident", [ "SimpleLocal", "Withdraw" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "prs" ], null ],
                [ "Ident", [ "SimpleLocal", "pendingReturns" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "pr" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "prs" ], null ],
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
                [ "Ident", [ "SimpleLocal", "pr" ], null ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_sender" ],
                                      null
                                    ]
                                  ]
                                ],
                                [ "_amount", [ "MLit", "0" ] ],
                                [
                                  "code",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal",
                                        "nothing_to_withdraw_code"
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
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [ "Binder", [ "Ident", [ "SimpleLocal", "v" ], null ] ]
                      ]
                    ],
                    [
                      [
                        [
                          "MapUpdate",
                          [
                            "Ident", [ "SimpleLocal", "pendingReturns" ], null
                          ],
                          [ [ "Ident", [ "SimpleLocal", "_sender" ], null ] ],
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
                                  [ "MLit", "Withdraw Successful" ]
                                ],
                                [
                                  "addr",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_sender" ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_sender" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "_amount",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "v" ], null ]
                                  ]
                                ],
                                [
                                  "code",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "money_sent_code" ],
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
                              [ [ "Ident", [ "SimpleLocal", "msg" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "AuctionEnd" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "ReadFromBC",
                [ "Ident", [ "SimpleLocal", "blk" ], null ],
                [ "CurBlockNum" ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "e" ], null ],
                [ "Ident", [ "SimpleLocal", "ended" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "t1" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_badd" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "auctionStart" ], null ],
                      [ "Ident", [ "SimpleLocal", "biddingTime" ], null ]
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
                [ "Ident", [ "SimpleLocal", "t2" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "blk_leq" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "t1" ], null ],
                      [ "Ident", [ "SimpleLocal", "blk" ], null ]
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
                [ "Ident", [ "SimpleLocal", "t3" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "negb" ], null ],
                    [ [ "Ident", [ "SimpleLocal", "e" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "t4" ], null ],
                [
                  [
                    "App",
                    [ "Ident", [ "SimpleLocal", "andb" ], null ],
                    [
                      [ "Ident", [ "SimpleLocal", "t2" ], null ],
                      [ "Ident", [ "SimpleLocal", "t3" ], null ]
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
                [ "Ident", [ "SimpleLocal", "t4" ], null ],
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
                              "Message",
                              [
                                [ "_tag", [ "MLit", "" ] ],
                                [
                                  "_recipient",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "_sender" ],
                                      null
                                    ]
                                  ]
                                ],
                                [ "_amount", [ "MLit", "0" ] ],
                                [
                                  "code",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [
                                        "SimpleLocal",
                                        "auction_is_still_on_code"
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
                      [ "Ident", [ "SimpleLocal", "True" ], null ],
                      []
                    ],
                    [
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "val" ], null ],
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
                          [ "Ident", [ "SimpleLocal", "ended" ], null ],
                          [ "Ident", [ "SimpleLocal", "val" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Load",
                          [ "Ident", [ "SimpleLocal", "hb" ], null ],
                          [ "Ident", [ "SimpleLocal", "highestBid" ], null ]
                        ],
                        null
                      ],
                      [
                        [
                          "Bind",
                          [ "Ident", [ "SimpleLocal", "ev" ], null ],
                          [
                            [
                              "Message",
                              [
                                [ "_eventname", [ "MLit", "Auction ended" ] ],
                                [
                                  "highest_bid",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "hb" ], null ]
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
                          [ "Ident", [ "SimpleLocal", "ev" ], null ]
                        ],
                        null
                      ],
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
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "beneficiary" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "_amount",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "hb" ], null ]
                                  ]
                                ],
                                [
                                  "code",
                                  [
                                    "MVar",
                                    [
                                      "Ident",
                                      [ "SimpleLocal", "auction_end_code" ],
                                      null
                                    ]
                                  ]
                                ],
                                [
                                  "highest_bid",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "hb" ], null ]
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
        }
      ]
    }
  }
