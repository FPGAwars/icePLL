{
  "version": "1.2",
  "package": {
    "name": "PLL 25 to 12 Mhz",
    "version": "1.0.0",
    "description": "",
    "author": "Fernando Mosquera",
    "image": ""
  },
  "design": {
    "board": "ColorLight-i5-v7.0_(FT2232H)",
    "graph": {
      "blocks": [
        {
          "id": "6aa83a45-9324-44df-86ec-707ac595a89a",
          "type": "basic.output",
          "data": {
            "name": "250Mhz",
            "pins": [
              {
                "index": "0",
                "name": "P6_R1",
                "value": "R1"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1480,
            "y": 280
          }
        },
        {
          "id": "14dff655-498f-4d68-b0ef-3f4c5c57f4b3",
          "type": "basic.output",
          "data": {
            "name": "125Mhz",
            "pins": [
              {
                "index": "0",
                "name": "P6_U1",
                "value": "U1"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1488,
            "y": 416
          }
        },
        {
          "id": "15477ab2-6ad2-43d3-90a6-eefd07a01797",
          "type": "basic.input",
          "data": {
            "name": "Clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "P3"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 216,
            "y": 488
          }
        },
        {
          "id": "0918f4c7-cd52-406e-9f33-18777f66a293",
          "type": "basic.output",
          "data": {
            "name": "25 Mhz",
            "pins": [
              {
                "index": "0",
                "name": "P6_W1",
                "value": "W1"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1496,
            "y": 552
          }
        },
        {
          "id": "eb642e79-87d6-4e7e-8752-113a62659bae",
          "type": "basic.output",
          "data": {
            "name": "locked",
            "pins": [
              {
                "index": "0",
                "name": "P6_W1",
                "value": "W1"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1496,
            "y": 688
          }
        },
        {
          "id": "b4e4c9dd-91f9-4e01-a980-1792caff20b3",
          "type": "basic.info",
          "data": {
            "info": "input // 25 MHz, 0 deg\noutput clkop, // 250 MHz, 0 deg\noutput clkos, // 125 MHz, 0 deg\noutput clkos2, // 25 MHz, 0 deg",
            "readonly": false
          },
          "position": {
            "x": 752,
            "y": 104
          },
          "size": {
            "width": 312,
            "height": 112
          }
        },
        {
          "id": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
          "type": "basic.code",
          "data": {
            "code": "\n// PLL   outputs  250 Mhz ,125 Mhz, 25 Mhz\n// code copied from emard (ulx3s team)\n\t\n\nwire clkfb;\nwire clkos;\nwire clkop;\n(* ICP_CURRENT=\"12\" *) (* LPF_RESISTOR=\"8\" *) (* MFG_ENABLE_FILTEROPAMP=\"1\" *) (* MFG_GMCREF_SEL=\"2\" *)\nEHXPLLL #(\n        .PLLRST_ENA(\"DISABLED\"),\n        .STDBY_ENABLE(\"DISABLED\"),\n        .INTFB_WAKE(\"DISABLED\"),\n        .DPHASE_SOURCE(\"DISABLED\"),\n        .CLKOP_FPHASE(0),\n        .CLKOP_CPHASE(0),\n        .OUTDIVIDER_MUXA(\"DIVA\"),\n        .CLKOP_ENABLE(\"ENABLED\"),\n        .CLKOP_DIV(2),\n        .CLKOS_ENABLE(\"ENABLED\"),\n        .CLKOS_DIV(4),\n        .CLKOS_CPHASE(0),\n        .CLKOS_FPHASE(0),\n        .CLKOS2_ENABLE(\"ENABLED\"),\n        .CLKOS2_DIV(20),\n        .CLKOS2_CPHASE(0),\n        .CLKOS2_FPHASE(0),\n        .CLKFB_DIV(10),\n        .CLKI_DIV(1),\n        .FEEDBK_PATH(\"INT_OP\")\n    ) pll_i (\n        .CLKI(clki),\n        .CLKFB(clkfb),\n        .CLKINTFB(clkfb),\n        .CLKOP(clkop),\n        .CLKOS(clkos),\n        .CLKOS2(clkos2),\n        .RST(1'b0),\n        .STDBY(1'b0),\n        .PHASESEL0(1'b0),\n        .PHASESEL1(1'b0),\n        .PHASEDIR(1'b1),\n        .PHASESTEP(1'b1),\n        .PHASELOADREG(1'b1),\n        .PLLWAKESYNC(1'b0),\n        .ENCLKOP(1'b0),\n        .LOCK(locked)\n\t);\nassign clkop = clkop;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clki"
                }
              ],
              "out": [
                {
                  "name": "clkop"
                },
                {
                  "name": "clkos"
                },
                {
                  "name": "clkos2"
                },
                {
                  "name": "locked"
                }
              ]
            }
          },
          "position": {
            "x": 464,
            "y": 248
          },
          "size": {
            "width": 904,
            "height": 536
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "15477ab2-6ad2-43d3-90a6-eefd07a01797",
            "port": "out"
          },
          "target": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "clki"
          }
        },
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "clkop"
          },
          "target": {
            "block": "6aa83a45-9324-44df-86ec-707ac595a89a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "clkos"
          },
          "target": {
            "block": "14dff655-498f-4d68-b0ef-3f4c5c57f4b3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "clkos2"
          },
          "target": {
            "block": "0918f4c7-cd52-406e-9f33-18777f66a293",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "locked"
          },
          "target": {
            "block": "eb642e79-87d6-4e7e-8752-113a62659bae",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}