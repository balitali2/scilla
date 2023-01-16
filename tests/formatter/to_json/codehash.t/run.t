  $ scilla-fmt --json --deannot --human-readable codehash.scilla
  {
    "smver": 0,
    "libs": null,
    "elibs": [],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "Codehash" ], null ],
      "cparams": [],
      "cconstraint": [
        [
          "Literal",
          { "name": [ "SimpleLocal", "True" ], "types": [], "lits": [] }
        ],
        null
      ],
      "cfields": [],
      "ccomps": [
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "foo" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "addr" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "RemoteLoad",
                [ "Ident", [ "SimpleLocal", "bar" ], null ],
                [ "Ident", [ "SimpleLocal", "addr" ], null ],
                [ "Ident", [ "SimpleLocal", "_codehash" ], null ]
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
                      [ "_eventname", [ "MLit", "Success" ] ],
                      [
                        "bar",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "bar" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "foo2" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "addr" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "TypeCast",
                [ "Ident", [ "SimpleLocal", "addr_" ], null ],
                [ "Ident", [ "SimpleLocal", "addr" ], null ],
                [ "Address", "Address" ]
              ],
              null
            ],
            [
              [
                "MatchStmt",
                [ "Ident", [ "SimpleLocal", "addr_" ], null ],
                [
                  [
                    [
                      "Constructor",
                      [ "Ident", [ "SimpleLocal", "Some" ], null ],
                      [
                        [
                          "Binder",
                          [ "Ident", [ "SimpleLocal", "addr__" ], null ]
                        ]
                      ]
                    ],
                    [
                      [
                        [
                          "RemoteLoad",
                          [ "Ident", [ "SimpleLocal", "bar" ], null ],
                          [ "Ident", [ "SimpleLocal", "addr__" ], null ],
                          [ "Ident", [ "SimpleLocal", "_codehash" ], null ]
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
                                [ "_eventname", [ "MLit", "Success" ] ],
                                [
                                  "bar",
                                  [
                                    "MVar",
                                    [ "Ident", [ "SimpleLocal", "bar" ], null ]
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
                              [ [ "_eventname", [ "MLit", "Failure" ] ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "foo3" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "addr" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "RemoteLoad",
                [ "Ident", [ "SimpleLocal", "bar" ], null ],
                [ "Ident", [ "SimpleLocal", "addr" ], null ],
                [ "Ident", [ "SimpleLocal", "_codehash" ], null ]
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
                      [ "_eventname", [ "MLit", "Success" ] ],
                      [
                        "bar",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "bar" ], null ] ]
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
          "comp_name": [ "Ident", [ "SimpleLocal", "foo4" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "addr" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "RemoteLoad",
                [ "Ident", [ "SimpleLocal", "bar" ], null ],
                [ "Ident", [ "SimpleLocal", "addr" ], null ],
                [ "Ident", [ "SimpleLocal", "_codehash" ], null ]
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
                      [ "_eventname", [ "MLit", "Success" ] ],
                      [
                        "bar",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "bar" ], null ] ]
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
        }
      ]
    }
  }
