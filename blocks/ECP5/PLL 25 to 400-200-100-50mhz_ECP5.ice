{
  "version": "1.2",
  "package": {
    "name": "PLL 25 to 400_200_100_50Mhz ",
    "version": "",
    "description": "",
    "author": "jomo",
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
            "name": "f400Mhz",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ]
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
            "name": "f200Mhz",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ]
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
            "name": "f100Mhz",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ]
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
            "name": "f50Mhz",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ]
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
            "info": "input // 25 MHz, 0 deg\noutput clkop, // 400 MHz, 0 deg\noutput clkos, // 200 MHz, 0 deg\noutput clkos2, // 100 MHz, 0 deg\noutput clkos3, // 50 MHz, 0 deg",
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
            "ports": {
              "in": [
                {
                  "name": "CLKI"
                }
              ],
              "out": [
                {
                  "name": "CLKOP"
                },
                {
                  "name": "CLKOS"
                },
                {
                  "name": "CLKOS2"
                },
                {
                  "name": "CLKOS3"
                }
              ]
            },
            "params": [],
            "code": "\n// PLL   outputs  400 Mhz ,200 Mhz,100 Mhz, 50 Mhz\n// generated with clarity designer pll tool (diamond)\n\n\twire REFCLK;\n    wire LOCK;\n    wire CLKOS3_t;\n    wire CLKOS2_t;\n    wire CLKOS_t;\n    wire CLKOP_t;\n    wire scuba_vhi;\n    wire scuba_vlo;\n\n\n\n    defparam PLLInst_0.PLLRST_ENA = \"DISABLED\" ;\n    defparam PLLInst_0.INTFB_WAKE = \"DISABLED\" ;\n    defparam PLLInst_0.STDBY_ENABLE = \"DISABLED\" ;\n    defparam PLLInst_0.DPHASE_SOURCE = \"DISABLED\" ;\n    defparam PLLInst_0.CLKOS3_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOS3_CPHASE = 15 ;\n    defparam PLLInst_0.CLKOS2_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOS2_CPHASE = 7 ;\n    defparam PLLInst_0.CLKOS_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOS_CPHASE = 3 ;\n    defparam PLLInst_0.CLKOP_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOP_CPHASE = 1 ;\n    defparam PLLInst_0.PLL_LOCK_MODE = 0 ;\n    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0 ;\n    defparam PLLInst_0.CLKOS_TRIM_POL = \"FALLING\" ;\n    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0 ;\n    defparam PLLInst_0.CLKOP_TRIM_POL = \"FALLING\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXD = \"DIVD\" ;\n    defparam PLLInst_0.CLKOS3_ENABLE = \"ENABLED\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXC = \"DIVC\" ;\n    defparam PLLInst_0.CLKOS2_ENABLE = \"ENABLED\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXB = \"DIVB\" ;\n    defparam PLLInst_0.CLKOS_ENABLE = \"ENABLED\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXA = \"DIVA\" ;\n    defparam PLLInst_0.CLKOP_ENABLE = \"ENABLED\" ;\n    defparam PLLInst_0.CLKOS3_DIV = 16 ;\n    defparam PLLInst_0.CLKOS2_DIV = 8 ;\n    defparam PLLInst_0.CLKOS_DIV = 4 ;\n    defparam PLLInst_0.CLKOP_DIV = 2 ;\n    defparam PLLInst_0.CLKFB_DIV = 16 ;\n    defparam PLLInst_0.CLKI_DIV = 1 ;\n    defparam PLLInst_0.FEEDBK_PATH = \"CLKOP\" ;\n    EHXPLLL PLLInst_0 (.CLKI(CLKI), .CLKFB(CLKOP_t), .PHASESEL1(scuba_vlo), \n        .PHASESEL0(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), \n        .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), \n        .RST(scuba_vlo), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), .ENCLKOS2(scuba_vlo), \n        .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP_t), .CLKOS(CLKOS_t), .CLKOS2(CLKOS2_t), \n        .CLKOS3(CLKOS3_t), .LOCK(LOCK), .INTLOCK(), .REFCLK(REFCLK), .CLKINTFB())\n             /* synthesis FREQUENCY_PIN_CLKOS3=\"50.000000\" */\n             /* synthesis FREQUENCY_PIN_CLKOS2=\"100.000000\" */\n             /* synthesis FREQUENCY_PIN_CLKOS=\"200.000000\" */\n             /* synthesis FREQUENCY_PIN_CLKOP=\"400.000000\" */\n             /* synthesis FREQUENCY_PIN_CLKI=\"25.000000\" */\n             /* synthesis ICP_CURRENT=\"7\" */\n             /* synthesis LPF_RESISTOR=\"16\" */;\n\n    assign CLKOS3 = CLKOS3_t;\n    assign CLKOS2 = CLKOS2_t;\n    assign CLKOS = CLKOS_t;\n    assign CLKOP = CLKOP_t;\n\n\n    // exemplar begin\n    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS3 50.000000\n    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS2 100.000000\n    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS 200.000000\n    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOP 400.000000\n    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKI 25.000000\n    // exemplar attribute PLLInst_0 ICP_CURRENT 7\n    // exemplar attribute PLLInst_0 LPF_RESISTOR 16\n    // exemplar end\n"
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
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "CLKOP"
          },
          "target": {
            "block": "6aa83a45-9324-44df-86ec-707ac595a89a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "CLKOS"
          },
          "target": {
            "block": "14dff655-498f-4d68-b0ef-3f4c5c57f4b3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "CLKOS2"
          },
          "target": {
            "block": "0918f4c7-cd52-406e-9f33-18777f66a293",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "CLKOS3"
          },
          "target": {
            "block": "eb642e79-87d6-4e7e-8752-113a62659bae",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "15477ab2-6ad2-43d3-90a6-eefd07a01797",
            "port": "out"
          },
          "target": {
            "block": "68525b9a-3686-4038-a32e-33f5f0fdeac1",
            "port": "CLKI"
          }
        }
      ]
    }
  },
  "dependencies": {}
}