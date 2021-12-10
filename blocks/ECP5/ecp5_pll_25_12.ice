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
    "board": "ColorLight-5A-75E-V71_(FT2232H)",
    "graph": {
      "blocks": [
        {
          "id": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e",
          "type": "basic.output",
          "data": {
            "name": "clkout",
            "pins": [
              {
                "index": "0",
                "name": "J10_R0",
                "value": "T13"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1184,
            "y": 280
          }
        },
        {
          "id": "eba22754-e004-4103-8389-80348c73822c",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "P6"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 328,
            "y": 360
          }
        },
        {
          "id": "b4e4c9dd-91f9-4e01-a980-1792caff20b3",
          "type": "basic.info",
          "data": {
            "info": "  25 to 12 Mhz",
            "readonly": false
          },
          "position": {
            "x": 704,
            "y": 544
          },
          "size": {
            "width": 136,
            "height": 40
          }
        },
        {
          "id": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
          "type": "basic.code",
          "data": {
            "code": "// generated by ecppll -i 25 -o 12 --highres\n// modified for IceStudio block\nwire clkfb;\n(* FREQUENCY_PIN_CLKI=\"25\" *)\n(* FREQUENCY_PIN_CLKOP=\"12\" *)\n(* FREQUENCY_PIN_CLKOS=\"12\" *)\n(* ICP_CURRENT=\"12\" *) (* LPF_RESISTOR=\"8\" *) (* MFG_ENABLE_FILTEROPAMP=\"1\" *) (* MFG_GMCREF_SEL=\"2\" *)\nEHXPLLL #(\n        .PLLRST_ENA(\"DISABLED\"),\n        .INTFB_WAKE(\"DISABLED\"),\n        .STDBY_ENABLE(\"DISABLED\"),\n        .DPHASE_SOURCE(\"DISABLED\"),\n        .OUTDIVIDER_MUXA(\"DIVA\"),\n        .OUTDIVIDER_MUXB(\"DIVB\"),\n        .OUTDIVIDER_MUXC(\"DIVC\"),\n        .OUTDIVIDER_MUXD(\"DIVD\"),\n        .CLKI_DIV(1),\n        .CLKOP_ENABLE(\"ENABLED\"),\n        .CLKOP_DIV(24),\n        .CLKOP_CPHASE(9),\n        .CLKOP_FPHASE(0),\n        .CLKOS_ENABLE(\"ENABLED\"),\n        .CLKOS_DIV(50),\n        .CLKOS_CPHASE(8),\n        .CLKOS_FPHASE(0),\n        .FEEDBK_PATH(\"CLKOP\"),\n        .CLKFB_DIV(1)\n    ) pll_i (\n        .RST(1'b0),\n        .STDBY(1'b0),\n        .CLKI(clk),\n        .CLKOP(clkfb),\n        .CLKOS(clkout0),\n        .CLKFB(clkfb),\n        .CLKINTFB(),\n        .PHASESEL0(1'b0),\n        .PHASESEL1(1'b0),\n        .PHASEDIR(1'b1),\n        .PHASESTEP(1'b1),\n        .PHASELOADREG(1'b1),\n        .PLLWAKESYNC(1'b0),\n        .ENCLKOP(1'b0),\n        .LOCK(locked)\n\t);\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "clkout0"
                },
                {
                  "name": "locked"
                }
              ]
            }
          },
          "position": {
            "x": 480,
            "y": 240
          },
          "size": {
            "width": 608,
            "height": 296
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "clkout0"
          },
          "target": {
            "block": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "eba22754-e004-4103-8389-80348c73822c",
            "port": "out"
          },
          "target": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "clk"
          }
        }
      ]
    }
  },
  "dependencies": {}
}