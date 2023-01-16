  $ scilla-fmt --json --deannot --human-readable address_eq_test.scilla
  {
    "smver": 0,
    "libs": null,
    "elibs": [],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "AddressEqTest" ], null ],
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
          [ "Ident", [ "SimpleLocal", "eq_test_res" ], null ],
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
          [ "Ident", [ "SimpleLocal", "to_bystr_res" ], null ],
          [ "PrimType", [ "Bystr_typ" ] ],
          [
            [
              "Let",
              [ "Ident", [ "SimpleLocal", "x" ], null ],
              null,
              [ [ "Literal", "\u0012" ], null ],
              [
                [
                  "Builtin",
                  [ [ "Builtin_to_bystr" ], null ],
                  [],
                  [ [ "Ident", [ "SimpleLocal", "x" ], null ] ]
                ],
                null
              ]
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "to_uint_res" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits256" ] ] ],
          [ [ "Literal", "0" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "concat_res" ], null ],
          [ "PrimType", [ "Bystrx_typ", 40 ] ],
          [
            [
              "Literal",
              "���ܐ\u00124Vx�\u00124Vx��wVC\"���ܐ\u00124Vx�\u00124Vx��wVC\""
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "test_map" ], null ],
          [ "MapType", [ "Address", "Address" ], [ "Address", "Address" ] ],
          [
            [
              "Literal",
              {
                "mtype": [ [ "Address", "Address" ], [ "Address", "Address" ] ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "map_res_1" ], null ],
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
            [ "Constr", [ "Ident", [ "SimpleLocal", "True" ], null ], [], [] ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "map_res_2" ], null ],
          [ "MapType", [ "Address", "Address" ], [ "Address", "Address" ] ],
          [
            [
              "Literal",
              {
                "mtype": [ [ "Address", "Address" ], [ "Address", "Address" ] ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "map_res_3" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "Option" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [ [ "Address", "Address" ] ]
          ],
          [
            [
              "Constr",
              [ "Ident", [ "SimpleLocal", "None" ], null ],
              [ [ "Address", "Address" ] ],
              []
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "map_res_4" ], null ],
          [ "MapType", [ "Address", "Address" ], [ "Address", "Address" ] ],
          [
            [
              "Literal",
              {
                "mtype": [ [ "Address", "Address" ], [ "Address", "Address" ] ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "map_res_5" ], null ],
          [
            "ADT",
            [
              "Ident",
              [ "SimpleLocal", "List" ],
              { "fname": "", "lnum": 0, "cnum": 0 }
            ],
            [
              [
                "ADT",
                [
                  "Ident",
                  [ "SimpleLocal", "Pair" ],
                  { "fname": "", "lnum": 0, "cnum": 0 }
                ],
                [ [ "Address", "Address" ], [ "Address", "Address" ] ]
              ]
            ]
          ],
          [
            [
              "Constr",
              [ "Ident", [ "SimpleLocal", "Nil" ], null ],
              [
                [
                  "ADT",
                  [
                    "Ident",
                    [ "SimpleLocal", "Pair" ],
                    { "fname": "", "lnum": 0, "cnum": 0 }
                  ],
                  [ [ "Address", "Address" ], [ "Address", "Address" ] ]
                ]
              ],
              []
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "map_res_6" ], null ],
          [ "PrimType", [ "Uint_typ", [ "Bits32" ] ] ],
          [ [ "Literal", "0" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "test_map2" ], null ],
          [
            "MapType",
            [ "Address", "Address" ],
            [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "Address", "Address" ],
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "test_map3" ], null ],
          [
            "MapType",
            [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
            [ "Address", "Address" ]
          ],
          [
            [
              "Literal",
              {
                "mtype": [
                  [ "PrimType", [ "Uint_typ", [ "Bits128" ] ] ],
                  [ "Address", "Address" ]
                ],
                "data": []
              }
            ],
            null
          ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "test_to_string" ], null ],
          [ "PrimType", [ "String_typ" ] ],
          [ [ "Literal", "" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "test_to_ascii" ], null ],
          [ "PrimType", [ "String_typ" ] ],
          [ [ "Literal", "" ], null ]
        ],
        [
          [ "Ident", [ "SimpleLocal", "test_strrev" ], null ],
          [ "PrimType", [ "String_typ" ] ],
          [ [ "Literal", "" ], null ]
        ]
      ],
      "ccomps": [
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test1" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "eq_test_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test2" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "eq_test_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test3" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "PrimType", [ "Bystrx_typ", 20 ] ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "eq_test_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test4" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "eq_test_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test5" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_eq" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "eq_test_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test6" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_bystr" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "param1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "to_bystr_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test7" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_uint256" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "param1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "to_uint_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test8" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_concat" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "concat_res" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test9" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ],
            [
              [ "Ident", [ "SimpleLocal", "param2" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "mp" ], null ],
                [ "Ident", [ "SimpleLocal", "test_map" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mp1" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_contains" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "mp" ], null ],
                      [ "Ident", [ "SimpleLocal", "param1" ], null ]
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
                [ "Ident", [ "SimpleLocal", "map_res_1" ], null ],
                [ "Ident", [ "SimpleLocal", "mp1" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mp2" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_put" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "mp" ], null ],
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
                      [ "Ident", [ "SimpleLocal", "param2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "map_res_2" ], null ],
                [ "Ident", [ "SimpleLocal", "mp2" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mp3" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_get" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "mp2" ], null ],
                      [ "Ident", [ "SimpleLocal", "param1" ], null ]
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
                [ "Ident", [ "SimpleLocal", "map_res_3" ], null ],
                [ "Ident", [ "SimpleLocal", "mp3" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mp4" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_remove" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "mp2" ], null ],
                      [ "Ident", [ "SimpleLocal", "param1" ], null ]
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
                [ "Ident", [ "SimpleLocal", "map_res_4" ], null ],
                [ "Ident", [ "SimpleLocal", "mp4" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mp5" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_list" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "mp2" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "map_res_5" ], null ],
                [ "Ident", [ "SimpleLocal", "mp5" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mp6" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_size" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "mp2" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "map_res_6" ], null ],
                [ "Ident", [ "SimpleLocal", "mp6" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test10" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "mp" ], null ],
                [ "Ident", [ "SimpleLocal", "test_map2" ], null ]
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
                [ "Ident", [ "SimpleLocal", "mp2" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_put" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "mp" ], null ],
                      [ "Ident", [ "SimpleLocal", "param1" ], null ],
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
                "Store",
                [ "Ident", [ "SimpleLocal", "test_map2" ], null ],
                [ "Ident", [ "SimpleLocal", "mp2" ], null ]
              ],
              null
            ],
            [
              [
                "Load",
                [ "Ident", [ "SimpleLocal", "mp3" ], null ],
                [ "Ident", [ "SimpleLocal", "test_map3" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "mp4" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_put" ], null ],
                    [],
                    [
                      [ "Ident", [ "SimpleLocal", "mp3" ], null ],
                      [ "Ident", [ "SimpleLocal", "zero" ], null ],
                      [ "Ident", [ "SimpleLocal", "param1" ], null ]
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
                [ "Ident", [ "SimpleLocal", "test_map3" ], null ],
                [ "Ident", [ "SimpleLocal", "mp4" ], null ]
              ],
              null
            ]
          ]
        },
        {
          "comp_type": [ "CompTrans" ],
          "comp_name": [ "Ident", [ "SimpleLocal", "Test11" ], null ],
          "comp_params": [
            [
              [ "Ident", [ "SimpleLocal", "param1" ], null ],
              [ "Address", "Address" ]
            ]
          ],
          "comp_body": [
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "x" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_string" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "param1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "test_to_string" ], null ],
                [ "Ident", [ "SimpleLocal", "x" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "y" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_to_ascii" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "param1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "test_to_ascii" ], null ],
                [ "Ident", [ "SimpleLocal", "y" ], null ]
              ],
              null
            ],
            [
              [
                "Bind",
                [ "Ident", [ "SimpleLocal", "z" ], null ],
                [
                  [
                    "Builtin",
                    [ [ "Builtin_strrev" ], null ],
                    [],
                    [ [ "Ident", [ "SimpleLocal", "param1" ], null ] ]
                  ],
                  null
                ]
              ],
              null
            ],
            [
              [
                "Store",
                [ "Ident", [ "SimpleLocal", "test_strrev" ], null ],
                [ "Ident", [ "SimpleLocal", "z" ], null ]
              ],
              null
            ]
          ]
        }
      ]
    }
  }
