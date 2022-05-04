{
  "version": "1.2",
  "package": {
    "name": "PLL 25 to 62.5 Mhz",
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
            "name": "f62_5Mhz"
          },
          "position": {
            "x": 1528,
            "y": 488
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
          "id": "b4e4c9dd-91f9-4e01-a980-1792caff20b3",
          "type": "basic.info",
          "data": {
            "info": "input // 25 MHz, 0 deg\noutput clkop, // 62.5 MHz, 0 deg\n",
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
                  "name": "clki"
                }
              ],
              "out": [
                {
                  "name": "clkop"
                }
              ]
            },
            "params": [],
            "code": " wire REFCLK;\n    wire LOCK;\n    wire CLKOP_t;\n    wire scuba_vhi;\n    wire scuba_vlo;\n\n\n\n    defparam PLLInst_0.PLLRST_ENA = \"DISABLED\" ;\n    defparam PLLInst_0.INTFB_WAKE = \"DISABLED\" ;\n    defparam PLLInst_0.STDBY_ENABLE = \"DISABLED\" ;\n    defparam PLLInst_0.DPHASE_SOURCE = \"DISABLED\" ;\n    defparam PLLInst_0.CLKOS3_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOS3_CPHASE = 0 ;\n    defparam PLLInst_0.CLKOS2_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOS2_CPHASE = 0 ;\n    defparam PLLInst_0.CLKOS_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOS_CPHASE = 0 ;\n    defparam PLLInst_0.CLKOP_FPHASE = 0 ;\n    defparam PLLInst_0.CLKOP_CPHASE = 8 ;\n    defparam PLLInst_0.PLL_LOCK_MODE = 0 ;\n    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0 ;\n    defparam PLLInst_0.CLKOS_TRIM_POL = \"FALLING\" ;\n    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0 ;\n    defparam PLLInst_0.CLKOP_TRIM_POL = \"FALLING\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXD = \"DIVD\" ;\n    defparam PLLInst_0.CLKOS3_ENABLE = \"DISABLED\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXC = \"DIVC\" ;\n    defparam PLLInst_0.CLKOS2_ENABLE = \"DISABLED\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXB = \"DIVB\" ;\n    defparam PLLInst_0.CLKOS_ENABLE = \"DISABLED\" ;\n    defparam PLLInst_0.OUTDIVIDER_MUXA = \"DIVA\" ;\n    defparam PLLInst_0.CLKOP_ENABLE = \"ENABLED\" ;\n    defparam PLLInst_0.CLKOS3_DIV = 1 ;\n    defparam PLLInst_0.CLKOS2_DIV = 1 ;\n    defparam PLLInst_0.CLKOS_DIV = 1 ;\n    defparam PLLInst_0.CLKOP_DIV = 9 ;\n    defparam PLLInst_0.CLKFB_DIV = 5 ;\n    defparam PLLInst_0.CLKI_DIV = 2 ;\n    defparam PLLInst_0.FEEDBK_PATH = \"CLKOP\" ;\n   \n   EHXPLLL PLLInst_0 (\n        .CLKI(clki),\n        .CLKFB(CLKOP_t),\n        .PHASESEL1(scuba_vlo),    \n        .PHASESEL0(scuba_vlo),\n        .PHASEDIR(scuba_vlo),\n        .PHASESTEP(scuba_vlo), \n        .PHASELOADREG(scuba_vlo),\n        .STDBY(scuba_vlo), \n        .PLLWAKESYNC(scuba_vlo), \n        .RST(scuba_vlo), \n        .ENCLKOP(scuba_vlo), \n        .ENCLKOS(scuba_vlo),\n        .ENCLKOS2(scuba_vlo), \n        .ENCLKOS3(scuba_vlo),\n        .CLKOP(CLKOP_t),\n        .CLKOS(), \n        .CLKOS2(), \n        .CLKOS3(), \n        .LOCK(LOCK), \n        .INTLOCK(),\n        .REFCLK(REFCLK),\n        .CLKINTFB())\n             /* synthesis FREQUENCY_PIN_CLKOP=\"62.500000\" */\n             /* synthesis FREQUENCY_PIN_CLKI=\"25.000000\" */\n             /* synthesis ICP_CURRENT=\"5\" */\n             /* synthesis LPF_RESISTOR=\"16\" */;\n\n    assign clkop = CLKOP_t;"
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
        }
      ]
    }
  },
  "dependencies": {}
}