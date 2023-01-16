  $ scilla-fmt --json --deannot --human-readable chainid.scilla
  {
    "smver": 0,
    "libs": null,
    "elibs": [],
    "contr": {
      "cname": [ "Ident", [ "SimpleLocal", "HelloWorld" ], null ],
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
          "comp_name": [ "Ident", [ "SimpleLocal", "EventChainID" ], null ],
          "comp_params": [],
          "comp_body": [
            [
              [
                "ReadFromBC",
                [ "Ident", [ "SimpleLocal", "cid" ], null ],
                [ "ChainID" ]
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
                      [ "_eventname", [ "MLit", "ChainID" ] ],
                      [
                        "chain_id",
                        [ "MVar", [ "Ident", [ "SimpleLocal", "cid" ], null ] ]
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
