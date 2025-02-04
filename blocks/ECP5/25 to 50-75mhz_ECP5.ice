{
  "version": "1.2",
  "package": {
    "name": "25 to 50/75 mhz_ECP5",
    "version": "",
    "description": "PLL 25mhz to 50, 58.3, 62.5, 66,.6 75",
    "author": "Joma",
    "image": "%3Csvg%20width=%22455%22%20height=%22320%22%20version=%221%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:'Berlin%20Sans%20FB,%20Bold';font-variant-ligatures:none;font-variant-caps:all-small-caps;font-variant-numeric:normal;font-variant-east-asian:normal;inline-size:210.652%22%20x=%2281.894%22%20y=%2247.772%22%20transform=%22matrix(46.72408%200%200%2036.56227%20-3822.41%20-1704.85)%22%20font-weight=%22700%22%20font-size=%221.351%22%20font-family=%22Berlin%20Sans%20FB%22%20white-space=%22pre%22%3E%3Ctspan%20x=%2281.894%22%20y=%2247.772%22%3E25%20Mhz%20to%20PLL%20Fout%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:'Berlin%20Sans%20FB,%20Bold';font-variant-ligatures:none;font-variant-caps:all-small-caps;font-variant-numeric:normal;font-variant-east-asian:normal;inline-size:210.652%22%20x=%2281.894%22%20y=%2247.772%22%20transform=%22matrix(58.11949%200%200%2039.80057%20-4762.605%20-1674.436)%22%20font-weight=%22700%22%20font-size=%221.351%22%20font-family=%22Berlin%20Sans%20FB%22%20white-space=%22pre%22%3E%3Ctspan%20x=%2281.894%22%20y=%2247.772%22/%3E%3Ctspan%20x=%2281.894%22%20y=%2249.621%22%3E%3Ctspan%20font-size=%221.479%22%3E=%205%20:%2075.0%20Mhz%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:'Berlin%20Sans%20FB,%20Bold';font-variant-ligatures:none;font-variant-caps:all-small-caps;font-variant-numeric:normal;font-variant-east-asian:normal;inline-size:210.652%22%20x=%2281.894%22%20y=%2247.772%22%20transform=%22matrix(58.97184%200%200%2039.80057%20-4833.596%20-1777.942)%22%20font-weight=%22700%22%20font-size=%221.351%22%20font-family=%22Berlin%20Sans%20FB%22%20white-space=%22pre%22%3E%3Ctspan%20x=%2281.894%22%20y=%2247.772%22/%3E%3Ctspan%20x=%2281.894%22%20y=%2249.621%22%3E%3Ctspan%20font-size=%221.479%22%3E=%203%20:%2062.5%20Mhz%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:'Berlin%20Sans%20FB,%20Bold';font-variant-ligatures:none;font-variant-caps:all-small-caps;font-variant-numeric:normal;font-variant-east-asian:normal;inline-size:210.652%22%20x=%2281.894%22%20y=%2247.772%22%20transform=%22matrix(58.4392%200%200%2039.80057%20-4789.943%20-1809.79)%22%20font-weight=%22700%22%20font-size=%221.351%22%20font-family=%22Berlin%20Sans%20FB%22%20white-space=%22pre%22%3E%3Ctspan%20x=%2281.894%22%20y=%2247.772%22%3E%3Ctspan%20font-size=%221.479%22%3E=%201%20:%2050.0%20Mhz%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:'Berlin%20Sans%20FB,%20Bold';font-variant-ligatures:none;font-variant-caps:all-small-caps;font-variant-numeric:normal;font-variant-east-asian:normal;inline-size:210.652%22%20x=%2281.894%22%20y=%2247.772%22%20transform=%22matrix(59.65345%200%200%2039.80057%20-4889.456%20-1830.263)%22%20font-weight=%22700%22%20font-size=%221.351%22%20font-family=%22Berlin%20Sans%20FB%22%20white-space=%22pre%22%3E%3Ctspan%20x=%2281.894%22%20y=%2247.772%22/%3E%3Ctspan%20x=%2281.894%22%20y=%2249.621%22%3E%3Ctspan%20font-size=%221.479%22%3E=%202%20:%2058.3%20Mhz%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:'Berlin%20Sans%20FB,%20Bold';font-variant-ligatures:none;font-variant-caps:all-small-caps;font-variant-numeric:normal;font-variant-east-asian:normal;inline-size:210.652%22%20x=%2281.894%22%20y=%2247.772%22%20transform=%22matrix(56.98024%200%200%2039.80057%20-4670.377%20-1726.758)%22%20font-weight=%22700%22%20font-size=%221.351%22%20font-family=%22Berlin%20Sans%20FB%22%20white-space=%22pre%22%3E%3Ctspan%20x=%2281.894%22%20y=%2247.772%22/%3E%3Ctspan%20x=%2281.894%22%20y=%2249.621%22%3E%3Ctspan%20font-size=%221.479%22%3E=%204%20:%2066.6%20Mhz%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3C/svg%3E"
  },
  "design": {
    "board": "ColorLight-i5-v7.0_(FT2232H)",
    "graph": {
      "blocks": [
        {
          "id": "5d8672fe-7f4a-40af-ad50-254debc7b994",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "clock": false,
            "isParametric": false
          },
          "position": {
            "x": 24,
            "y": 400
          }
        },
        {
          "id": "f95ad6a4-506c-4b10-a0f2-ecde8784bd00",
          "type": "basic.output",
          "data": {
            "name": "clk_out",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ]
          },
          "position": {
            "x": 1008,
            "y": 400
          }
        },
        {
          "id": "75d20836-f225-4e97-a8ed-76e59f078a1c",
          "type": "basic.constant",
          "data": {
            "name": "Fout",
            "value": "",
            "local": false
          },
          "position": {
            "x": 464,
            "y": -104
          }
        },
        {
          "id": "77c46b2b-be21-42c7-8380-2f492f3bac8b",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "clk_out"
                }
              ]
            },
            "params": [
              {
                "name": "Freq_id"
              }
            ],
            "code": "/// pll  25 to 50 /58.34/62.5/66.6/75.0 Mhz\n// generated with clarity designer pll tool (diamond)\n\n// Define the Freq_id parameter (to set frequency at build time)\nparameter Freq_id = 1; // Example: Set to 1 for 5\n\n// Set parameters based on Freq_id\nparameter clkI_DIV  = (Freq_id == 1) ? 1  : // 50 Mhz\n                      (Freq_id == 2) ? 3  : // 58.34 Mhz\n                      (Freq_id == 3) ? 2  : // 62.5 Mhz\n                      (Freq_id == 4) ? 3  : // 66.6 Mhz\n                      (Freq_id == 5) ? 1  : // 75.00 Mhz\n                                       1;   // Default: (50 MHz)\n\nparameter clkFb_DIV = (Freq_id == 1) ? 2  : // 50 Mhz\n                      (Freq_id == 2) ? 7  : // 58.34 Mhz\n                      (Freq_id == 3) ? 5  : // 62.5 Mhz\n                      (Freq_id == 4) ? 8  : // 66.6 Mhz\n                      (Freq_id == 5) ? 3  : // 75.00 Mhz\n                                       2;   // Default: (50 MHz)\n\nparameter clkOp_DIV = (Freq_id == 1) ? 12 : // 50 Mhz\n                      (Freq_id == 2) ? 10 : // 58.34 Mhz\n                      (Freq_id == 3) ? 9  : // 62.5 Mhz\n                      (Freq_id == 4) ? 9  : // 66.6 Mhz\n                      (Freq_id == 5) ? 8  : // 75.00 Mhz\n                                       12;  // Default: (50 MHz)\n\n// PLL instance\nEHXPLLL #(\n    .CLKI_DIV(clkI_DIV),                    // Input clock divider\n    .CLKFB_DIV(clkFb_DIV),                  // Feedback clock divider\n    .CLKOP_DIV(clkOp_DIV),                  // Output clock divider\n    .CLKOP_CPHASE(0),                       // Output clock phase\n    .CLKOP_FPHASE(0),                       // Output clock fine phase\n    .FEEDBK_PATH(\"CLKOP\"),                  // Feedback path\n    .CLKOP_TRIM_POL(\"RISING\"),              // Output clock trim polarity\n    .CLKOP_TRIM_DELAY(0),                   // Output clock trim delay\n    .PLLRST_ENA(\"DISABLED\"),                // PLL reset enable\n    .INTFB_WAKE(\"DISABLED\"),                // Internal feedback wake\n    .STDBY_ENABLE(\"DISABLED\"),              // Standby enable\n    .DPHASE_SOURCE(\"DISABLED\"),             // Dynamic phase source\n    .OUTDIVIDER_MUXA(\"DIVA\"),               // Output divider mux A\n    .OUTDIVIDER_MUXB(\"DIVB\"),               // Output divider mux B\n    .OUTDIVIDER_MUXC(\"DIVC\"),               // Output divider mux C\n    .OUTDIVIDER_MUXD(\"DIVD\")                // Output divider mux D\n) pll_inst (\n    .CLKI(clk),                             // Input clock\n    .CLKFB(clk_out),                        // Feedback clock\n    .CLKOP(clk_out),                        // Output clock\n    .RST(1'b0),                             // Reset\n    .STDBY(1'b0),                           // Standby\n    .PHASESEL0(1'b0),                       // Phase select 0\n    .PHASESEL1(1'b0),                       // Phase select 1\n    .PHASEDIR(1'b0),                        // Phase direction\n    .PHASESTEP(1'b0),                       // Phase step\n    .PLLWAKESYNC(1'b0),                     // PLL wake sync\n    .ENCLKOP(1'b1)                          // Enable output clock\n);"
          },
          "position": {
            "x": 176,
            "y": 64
          },
          "size": {
            "width": 666,
            "height": 728
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5d8672fe-7f4a-40af-ad50-254debc7b994",
            "port": "out"
          },
          "target": {
            "block": "77c46b2b-be21-42c7-8380-2f492f3bac8b",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "77c46b2b-be21-42c7-8380-2f492f3bac8b",
            "port": "clk_out"
          },
          "target": {
            "block": "f95ad6a4-506c-4b10-a0f2-ecde8784bd00",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "75d20836-f225-4e97-a8ed-76e59f078a1c",
            "port": "constant-out"
          },
          "target": {
            "block": "77c46b2b-be21-42c7-8380-2f492f3bac8b",
            "port": "Freq_id"
          }
        }
      ]
    }
  },
  "dependencies": {}
}