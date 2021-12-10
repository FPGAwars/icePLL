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
          "id": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e",
          "type": "basic.output",
          "data": {
            "name": "clkout",
            "pins": [
              {
                "index": "0",
                "name": "P6_R1",
                "value": "R1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1312,
            "y": 256
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
                "value": "P3"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": 600,
            "y": 256
          }
        },
        {
          "id": "b4e4c9dd-91f9-4e01-a980-1792caff20b3",
          "type": "basic.info",
          "data": {
            "info": "  25Mhz to 12 Mhz   Pll use on ECP5 (thanks Benitos for the PLL block )\n  \n  Read at the ouput a pulse signal with freq of 12 KHz",
            "readonly": false
          },
          "position": {
            "x": 664,
            "y": 64
          },
          "size": {
            "width": 584,
            "height": 112
          }
        },
        {
          "id": "68674deb-5fd1-4d5e-b196-b2966544e83e",
          "type": "e47c334d36c4798efb8a0e749d33d70ee19e8dd9",
          "position": {
            "x": 1056,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e6a26144-9bc1-4926-bc0a-d96fb55398b0",
          "type": "ec534d360469ec819ca951838e686682255a7c07",
          "position": {
            "x": 832,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "68674deb-5fd1-4d5e-b196-b2966544e83e",
            "port": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e"
          },
          "target": {
            "block": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e6a26144-9bc1-4926-bc0a-d96fb55398b0",
            "port": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e"
          },
          "target": {
            "block": "68674deb-5fd1-4d5e-b196-b2966544e83e",
            "port": "eba22754-e004-4103-8389-80348c73822c"
          }
        },
        {
          "source": {
            "block": "eba22754-e004-4103-8389-80348c73822c",
            "port": "out"
          },
          "target": {
            "block": "e6a26144-9bc1-4926-bc0a-d96fb55398b0",
            "port": "eba22754-e004-4103-8389-80348c73822c"
          }
        }
      ]
    }
  },
  "dependencies": {
    "e47c334d36c4798efb8a0e749d33d70ee19e8dd9": {
      "package": {
        "name": "probe_tool-clock/1000",
        "version": "1.0.0",
        "description": "",
        "author": "Joaquim (jo mo)",
        "image": "%3Csvg%20height=%22600%22%20width=%22600%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cdefs%3E%3Cpath%20id=%22bb%22%20d=%22M752.362%20483.661h96.167v152.735h-96.167z%22/%3E%3Cpath%20id=%22ba%22%20d=%22M-494.975%20124.451h390.323v435.578h-390.323z%22/%3E%3Cpath%20id=%22aZ%22%20d=%22M48.083%20486.489h735.391v186.676H48.083z%22/%3E%3ClinearGradient%20id=%22at%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%22.602%22%20stop-color=%22#464646%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#aca592%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22al%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.509%22/%3E%3Cstop%20offset=%22.61%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.777%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.707%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22ag%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#989078%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#aca592%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22af%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22ae%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#aca592%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#aca592%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22ad%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.509%22/%3E%3Cstop%20offset=%22.455%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.777%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.707%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22O%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#cccaa9%22%20stop-opacity=%22.294%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#86816c%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22B%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#353535%22%20stop-opacity=%22.414%22/%3E%3Cstop%20offset=%22.28%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%22.668%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#4f4f4f%22%20stop-opacity=%22.475%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22A%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#797979%22%20stop-opacity=%22.286%22/%3E%3Cstop%20offset=%22.559%22%20stop-color=%22#fff%22%20stop-opacity=%22.328%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22z%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22a%22%3E%3Cstop%20offset=%220%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22y%22%3E%3Cstop%20offset=%220%22%20stop-opacity=%22.302%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22w%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.362%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22v%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#1a1a1a%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22u%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22d%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22c%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22b%22%3E%3Cstop%20offset=%220%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%22.56%22/%3E%3C/linearGradient%3E%3CradialGradient%20xlink:href=%22#c%22%20id=%22bm%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3CradialGradient%20xlink:href=%22#d%22%20id=%22bn%22%20cx=%22302.843%22%20cy=%2267.522%22%20fx=%22302.843%22%20fy=%2267.522%22%20r=%227.014%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3CradialGradient%20xlink:href=%22#e%22%20id=%22bo%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3ClinearGradient%20id=%22e%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22f%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3CradialGradient%20r=%227.014%22%20fy=%2267.522%22%20fx=%22302.843%22%20cy=%2267.522%22%20cx=%22302.843%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20gradientUnits=%22userSpaceOnUse%22%20id=%22bp%22%20xlink:href=%22#f%22/%3E%3CradialGradient%20xlink:href=%22#g%22%20id=%22bq%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3ClinearGradient%20id=%22g%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22h%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3CradialGradient%20r=%227.014%22%20fy=%2267.522%22%20fx=%22302.843%22%20cy=%2267.522%22%20cx=%22302.843%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20gradientUnits=%22userSpaceOnUse%22%20id=%22br%22%20xlink:href=%22#h%22/%3E%3CradialGradient%20xlink:href=%22#i%22%20id=%22bs%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3ClinearGradient%20id=%22i%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22j%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3CradialGradient%20r=%227.014%22%20fy=%2267.522%22%20fx=%22302.843%22%20cy=%2267.522%22%20cx=%22302.843%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20gradientUnits=%22userSpaceOnUse%22%20id=%22bt%22%20xlink:href=%22#j%22/%3E%3CradialGradient%20xlink:href=%22#k%22%20id=%22bu%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3ClinearGradient%20id=%22k%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22l%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3CradialGradient%20r=%227.014%22%20fy=%2267.522%22%20fx=%22302.843%22%20cy=%2267.522%22%20cx=%22302.843%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20gradientUnits=%22userSpaceOnUse%22%20id=%22bv%22%20xlink:href=%22#l%22/%3E%3ClinearGradient%20id=%22s%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22t%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22q%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22r%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22o%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22p%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22m%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.336%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22n%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.233%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3CradialGradient%20xlink:href=%22#m%22%20id=%22bw%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22/%3E%3CradialGradient%20xlink:href=%22#n%22%20id=%22bx%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20cx=%22302.843%22%20cy=%2267.522%22%20fx=%22302.843%22%20fy=%2267.522%22%20r=%227.014%22/%3E%3CradialGradient%20xlink:href=%22#o%22%20id=%22by%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22/%3E%3CradialGradient%20xlink:href=%22#p%22%20id=%22bz%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20cx=%22302.843%22%20cy=%2267.522%22%20fx=%22302.843%22%20fy=%2267.522%22%20r=%227.014%22/%3E%3CradialGradient%20xlink:href=%22#q%22%20id=%22bA%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22/%3E%3CradialGradient%20xlink:href=%22#r%22%20id=%22bB%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20cx=%22302.843%22%20cy=%2267.522%22%20fx=%22302.843%22%20fy=%2267.522%22%20r=%227.014%22/%3E%3CradialGradient%20xlink:href=%22#s%22%20id=%22bC%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%2013.33333%200%20-471.179)%22%20cx=%22301.227%22%20cy=%2238.204%22%20fx=%22301.227%22%20fy=%2238.204%22%20r=%222.121%22/%3E%3CradialGradient%20xlink:href=%22#t%22%20id=%22bD%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(.7416%200%200%203.0648%2078.253%20-107.786)%22%20cx=%22302.843%22%20cy=%2267.522%22%20fx=%22302.843%22%20fy=%2267.522%22%20r=%227.014%22/%3E%3Cfilter%20id=%22bg%22%20x=%22-.035%22%20y=%22-.018%22%20width=%221.071%22%20height=%221.036%22%3E%3CfeGaussianBlur%20stdDeviation=%221.23%22/%3E%3C/filter%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22bk%22%20x=%22-.036%22%20y=%22-.018%22%20width=%221.071%22%20height=%221.036%22%3E%3CfeGaussianBlur%20stdDeviation=%221.23%22/%3E%3C/filter%3E%3Cfilter%20id=%22bf%22%20x=%22-.049%22%20y=%22-.016%22%20width=%221.098%22%20height=%221.032%22%3E%3CfeGaussianBlur%20stdDeviation=%221.258%22/%3E%3C/filter%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22bj%22%20x=%22-.049%22%20y=%22-.016%22%20width=%221.098%22%20height=%221.032%22%3E%3CfeGaussianBlur%20stdDeviation=%221.258%22/%3E%3C/filter%3E%3Cfilter%20id=%22be%22%20x=%22-.072%22%20y=%22-.014%22%20width=%221.144%22%20height=%221.029%22%3E%3CfeGaussianBlur%20stdDeviation=%221.312%22/%3E%3C/filter%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22bi%22%20x=%22-.072%22%20y=%22-.014%22%20width=%221.144%22%20height=%221.029%22%3E%3CfeGaussianBlur%20stdDeviation=%221.312%22/%3E%3C/filter%3E%3Cfilter%20id=%22bd%22%20x=%22-.121%22%20width=%221.242%22%20y=%22-.013%22%20height=%221.027%22%3E%3CfeGaussianBlur%20stdDeviation=%221.309%22/%3E%3C/filter%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22bh%22%20x=%22-.121%22%20width=%221.242%22%20y=%22-.013%22%20height=%221.027%22%3E%3CfeGaussianBlur%20stdDeviation=%221.309%22/%3E%3C/filter%3E%3Cfilter%20id=%22bc%22%20x=%22-.498%22%20width=%221.996%22%20y=%22-.012%22%20height=%221.025%22%3E%3CfeGaussianBlur%20stdDeviation=%221.245%22/%3E%3C/filter%3E%3ClinearGradient%20xlink:href=%22#w%22%20id=%22bE%22%20x1=%22291.217%22%20y1=%22330.768%22%20x2=%22291.217%22%20y2=%22333.769%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1.0518%200%200%201.05737%20-15.542%20-15.976)%22/%3E%3ClinearGradient%20id=%22x%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.362%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20y2=%22339.483%22%20x2=%22337.091%22%20y1=%22339.483%22%20x1=%22343.431%22%20gradientTransform=%22matrix(1.04173%200%200%201.23716%20-12.207%20-75.58)%22%20gradientUnits=%22userSpaceOnUse%22%20id=%22bF%22%20xlink:href=%22#x%22/%3E%3ClinearGradient%20xlink:href=%22#y%22%20id=%22bG%22%20x1=%22300.313%22%20y1=%22331.198%22%20x2=%22300.313%22%20y2=%22304.684%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(0%204)%22/%3E%3ClinearGradient%20id=%22D%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#9e9e9e%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#dbdbdb%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22C%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#727272%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#b9b9b9%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22E%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22F%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22G%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22H%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22I%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22J%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#9a957b%22%20stop-opacity=%22.906%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#ede4c2%22%20stop-opacity=%22.337%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22K%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#797979%22%20stop-opacity=%22.286%22/%3E%3Cstop%20offset=%22.559%22%20stop-color=%22#fff%22%20stop-opacity=%22.328%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22L%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22M%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#353535%22%20stop-opacity=%22.414%22/%3E%3Cstop%20offset=%22.28%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%22.668%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#4f4f4f%22%20stop-opacity=%22.475%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22N%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22P%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#353535%22%20stop-opacity=%22.414%22/%3E%3Cstop%20offset=%22.28%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%22.668%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#4f4f4f%22%20stop-opacity=%22.475%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22Q%22%3E%3Cstop%20offset=%220%22%20stop-opacity=%22.302%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22R%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.362%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22S%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22%20stop-opacity=%22.362%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22T%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22U%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#9a957b%22%20stop-opacity=%22.906%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#ede4c2%22%20stop-opacity=%22.337%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22V%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#cccaa9%22%20stop-opacity=%22.294%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#86816c%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22W%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22X%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22Y%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22Z%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#9a957b%22%20stop-opacity=%22.906%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#ede4c2%22%20stop-opacity=%22.337%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22aa%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#cccaa9%22%20stop-opacity=%22.294%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#86816c%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22ab%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22ac%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#5c5846%22%20stop-opacity=%22.905%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#918a6f%22%20stop-opacity=%22.336%22/%3E%3C/linearGradient%3E%3ClinearGradient%20xlink:href=%22#ad%22%20id=%22aA%22%20x1=%22-60.266%22%20y1=%22900.592%22%20x2=%22112.477%22%20y2=%22837.092%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(-240)%22/%3E%3ClinearGradient%20xlink:href=%22#ae%22%20id=%22aB%22%20x1=%221.113%22%20y1=%22787.417%22%20x2=%221.766%22%20y2=%22805.749%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(-240)%22/%3E%3ClinearGradient%20xlink:href=%22#af%22%20id=%22aC%22%20x1=%22-133.997%22%20y1=%22715.426%22%20x2=%22-133.643%22%20y2=%22716.486%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(-240)%22/%3E%3ClinearGradient%20xlink:href=%22#ag%22%20id=%22aD%22%20x1=%22-69.701%22%20y1=%22839.885%22%20x2=%22-69.701%22%20y2=%22806.651%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(-240)%22/%3E%3ClinearGradient%20xlink:href=%22#ae%22%20id=%22aE%22%20x1=%22-8.93%22%20y1=%22829.565%22%20x2=%22-8.93%22%20y2=%22820.961%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(-240)%22/%3E%3ClinearGradient%20id=%22ah%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.509%22/%3E%3Cstop%20offset=%22.455%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.777%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.707%22/%3E%3C/linearGradient%3E%3Cfilter%20id=%22aF%22%20x=%22-.188%22%20width=%221.377%22%20y=%22-.015%22%20height=%221.029%22%3E%3CfeGaussianBlur%20stdDeviation=%22.451%22/%3E%3C/filter%3E%3ClinearGradient%20id=%22ai%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#aca592%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#aca592%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3Cfilter%20id=%22aG%22%20x=%22-.006%22%20width=%221.013%22%20y=%22-.151%22%20height=%221.302%22%3E%3CfeGaussianBlur%20stdDeviation=%22.483%22/%3E%3C/filter%3E%3ClinearGradient%20id=%22aj%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3Cfilter%20id=%22aH%22%20x=%22-.202%22%20width=%221.403%22%20y=%22-.012%22%20height=%221.024%22%3E%3CfeGaussianBlur%20stdDeviation=%22.427%22/%3E%3C/filter%3E%3ClinearGradient%20id=%22ak%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.509%22/%3E%3Cstop%20offset=%22.455%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.777%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.707%22/%3E%3C/linearGradient%3E%3ClinearGradient%20y2=%22801.737%22%20x2=%2225.605%22%20y1=%22911.181%22%20x1=%2225.605%22%20gradientUnits=%22userSpaceOnUse%22%20id=%22aI%22%20xlink:href=%22#al%22%20gradientTransform=%22translate(-240)%22/%3E%3ClinearGradient%20id=%22am%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#989078%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#aca592%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3Cfilter%20id=%22aJ%22%20x=%22-.068%22%20y=%22-.026%22%20width=%221.136%22%20height=%221.053%22%3E%3CfeGaussianBlur%20stdDeviation=%22.255%22/%3E%3C/filter%3E%3Cfilter%20id=%22aK%22%20x=%22-.02%22%20width=%221.04%22%20y=%22-.033%22%20height=%221.066%22%20color-interpolation-filters=%22sRGB%22%3E%3CfeGaussianBlur%20result=%22result8%22%20stdDeviation=%221.71%22/%3E%3CfeTurbulence%20baseFrequency=%220.0080370942812983005%200.027820710973724884%22%20numOctaves=%222%22%20result=%22result7%22%20seed=%2256%22/%3E%3CfeComposite%20in2=%22result8%22%20in=%22SourceGraphic%22%20operator=%22in%22%20result=%22result6%22/%3E%3CfeComposite%20in2=%22result7%22%20in=%22result6%22%20operator=%22arithmetic%22%20result=%22result2%22%20k3=%221%22/%3E%3CfeComposite%20in2=%22result6%22%20operator=%22in%22%20in=%22result2%22%20result=%22fbSourceGraphic%22/%3E%3CfeComposite%20in2=%22fbSourceGraphic%22%20in=%22fbSourceGraphic%22%20k2=%222.5%22%20operator=%22arithmetic%22%20result=%22fbSourceGraphic%22/%3E%3CfeColorMatrix%20result=%22fbSourceGraphicAlpha%22%20in=%22fbSourceGraphic%22%20values=%220%22%20type=%22saturate%22/%3E%3CfeColorMatrix%20values=%221%22%20in=%22fbSourceGraphic%22%20type=%22saturate%22%20result=%22result2%22/%3E%3CfeFlood%20flood-color=%22#714F38%22%20flood-opacity=%221%22%20result=%22result1%22/%3E%3CfeBlend%20in2=%22result2%22%20mode=%22multiply%22%20in=%22result1%22%20result=%22result3%22/%3E%3CfeComposite%20in2=%22fbSourceGraphic%22%20operator=%22in%22%20k2=%221%22%20result=%22result4%22/%3E%3C/filter%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22aU%22%20x=%22-.068%22%20y=%22-.026%22%20width=%221.136%22%20height=%221.053%22%3E%3CfeGaussianBlur%20stdDeviation=%22.255%22/%3E%3C/filter%3E%3ClinearGradient%20id=%22ap%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.509%22/%3E%3Cstop%20offset=%22.61%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.777%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.707%22/%3E%3C/linearGradient%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22aS%22%20x=%22-.202%22%20width=%221.403%22%20y=%22-.012%22%20height=%221.024%22%3E%3CfeGaussianBlur%20stdDeviation=%22.427%22/%3E%3C/filter%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22aR%22%20x=%22-.006%22%20width=%221.013%22%20y=%22-.151%22%20height=%221.302%22%3E%3CfeGaussianBlur%20stdDeviation=%22.483%22/%3E%3C/filter%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22aQ%22%20x=%22-.188%22%20width=%221.377%22%20y=%22-.015%22%20height=%221.029%22%3E%3CfeGaussianBlur%20stdDeviation=%22.451%22/%3E%3C/filter%3E%3ClinearGradient%20id=%22aq%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#aca592%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#aca592%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22ar%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#989078%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#aca592%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22as%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22an%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.509%22/%3E%3Cstop%20offset=%22.455%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.777%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.707%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22ao%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.509%22/%3E%3Cstop%20offset=%22.61%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.777%22%20stop-color=%22#a39e88%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#6c6753%22%20stop-opacity=%22.707%22/%3E%3C/linearGradient%3E%3ClinearGradient%20xlink:href=%22#ap%22%20id=%22aT%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(279.371)%22%20x1=%2225.605%22%20y1=%22911.181%22%20x2=%2225.605%22%20y2=%22801.737%22/%3E%3ClinearGradient%20xlink:href=%22#aq%22%20id=%22aP%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(279.371)%22%20x1=%22-8.93%22%20y1=%22829.565%22%20x2=%22-8.93%22%20y2=%22820.961%22/%3E%3ClinearGradient%20xlink:href=%22#ar%22%20id=%22aO%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(279.371)%22%20x1=%22-69.701%22%20y1=%22839.885%22%20x2=%22-69.701%22%20y2=%22806.651%22/%3E%3ClinearGradient%20xlink:href=%22#as%22%20id=%22aN%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(279.371)%22%20x1=%22-133.997%22%20y1=%22715.426%22%20x2=%22-133.643%22%20y2=%22716.486%22/%3E%3ClinearGradient%20xlink:href=%22#aq%22%20id=%22aM%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(279.371)%22%20x1=%221.113%22%20y1=%22787.417%22%20x2=%221.766%22%20y2=%22805.749%22/%3E%3ClinearGradient%20xlink:href=%22#an%22%20id=%22aL%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22translate(279.371)%22%20x1=%22-60.266%22%20y1=%22900.592%22%20x2=%22112.477%22%20y2=%22837.092%22/%3E%3Cfilter%20id=%22ax%22%20x=%22-.052%22%20width=%221.103%22%20y=%22-.224%22%20height=%221.449%22%3E%3CfeGaussianBlur%20stdDeviation=%224.553%22/%3E%3C/filter%3E%3CradialGradient%20xlink:href=%22#at%22%20id=%22bl%22%20cx=%22300%22%20cy=%22356.19%22%20fx=%22300%22%20fy=%22356.19%22%20r=%2255.264%22%20gradientTransform=%22matrix(1.34547%200%200%20.10026%20-103.64%20317.01)%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3ClinearGradient%20id=%22au%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#797979%22%20stop-opacity=%22.286%22/%3E%3Cstop%20offset=%22.559%22%20stop-color=%22#fff%22%20stop-opacity=%22.328%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22av%22%3E%3Cstop%20offset=%220%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22aw%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#353535%22%20stop-opacity=%22.414%22/%3E%3Cstop%20offset=%22.28%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%22.668%22%20stop-color=%22#fff%22%20stop-opacity=%22.388%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#4f4f4f%22%20stop-opacity=%22.475%22/%3E%3C/linearGradient%3E%3Cfilter%20color-interpolation-filters=%22sRGB%22%20id=%22ay%22%20x=%22-.052%22%20width=%221.103%22%20y=%22-.224%22%20height=%221.449%22%3E%3CfeGaussianBlur%20stdDeviation=%224.553%22/%3E%3C/filter%3E%3Cfilter%20id=%22az%22%20x=%22-.011%22%20y=%22-.059%22%20width=%221.022%22%20height=%221.118%22%3E%3CfeGaussianBlur%20stdDeviation=%22.931%22/%3E%3C/filter%3E%3Cfilter%20id=%22aW%22%20x=%22-.004%22%20y=%22-.01%22%20width=%221.009%22%20height=%221.02%22%3E%3CfeGaussianBlur%20stdDeviation=%22.262%22/%3E%3C/filter%3E%3Cfilter%20id=%22aV%22%20x=%22-.004%22%20y=%22-.01%22%20width=%221.009%22%20height=%221.02%22%3E%3CfeGaussianBlur%20stdDeviation=%22.262%22/%3E%3C/filter%3E%3Cfilter%20id=%22aX%22%20x=%22-.004%22%20y=%22-.01%22%20width=%221.008%22%20height=%221.021%22%3E%3CfeGaussianBlur%20stdDeviation=%22.284%22/%3E%3C/filter%3E%3Cfilter%20id=%22aY%22%20x=%22-.004%22%20y=%22-.01%22%20width=%221.008%22%20height=%221.021%22%3E%3CfeGaussianBlur%20stdDeviation=%22.284%22/%3E%3C/filter%3E%3C/defs%3E%3Cpath%20d=%22M403.341%20894.387l1.198%2014.787-3.597%206.109-5.854%202.67-6.772%201.176-12.988-1.657-14.183.053-9.733.828-9.645%201.604-9.766-1.29-9.033-.366-15.992.462-12.626%201.194-11.95-3.313-8.447.802-11.89%201.683-16.155-1.622-12.442%201.674-9.529.11-7.655-3.043-11.663-3.991-4.287-7.884-4.71-13.57-2.512-14.622%205.94-4.94%20199.407%201.758%204.53%206.185.354%2015.203z%22%20style=%22marker:none%22%20transform=%22matrix(.97%200%200%20.77327%208.967%20-253.305)%22%20color=%22#000%22%20fill-opacity=%22.273%22%20overflow=%22visible%22%20filter=%22url(#ax)%22/%3E%3Cpath%20d=%22M403.341%20894.387l1.198%2014.787-3.597%206.109-5.854%202.67-6.772%201.176-12.988-1.657-14.183.053-9.733.828-9.645%201.604-9.766-1.29-9.033-.366-15.992.462-12.626%201.194-11.95-3.313-8.447.802-11.89%201.683-16.155-1.622-12.442%201.674-9.529.11-7.655-3.043-11.663-3.991-4.287-7.884-4.71-13.57-2.512-14.622%205.94-4.94%20199.407%201.758%204.53%206.185.354%2015.203z%22%20style=%22marker:none%22%20transform=%22matrix(.92725%200%200%20.73948%2021.739%20-223.04)%22%20color=%22#000%22%20fill-opacity=%22.608%22%20overflow=%22visible%22%20filter=%22url(#ay)%22/%3E%3Cpath%20d=%22M399.811%20876.332l.132%2028.312-3.447%205.27-5.61%202.303-6.488%201.016-12.445-1.43-13.59.045-9.326.715-9.242%201.384-9.358-1.113-8.655-.316-15.323.399-12.099%201.03-11.45-2.859-8.094.692-11.393%201.452-15.48-1.399-11.922%201.445-9.13.095-7.335-2.626-11.175-3.443-4.108-6.802-4.513-11.706-2.407-12.615%20202.458.15z%22%20style=%22marker:none%22%20transform=%22matrix(.9792%200%200%20.79971%206.21%20-277.034)%22%20color=%22#000%22%20fill=%22#635f4f%22%20fill-opacity=%22.416%22%20overflow=%22visible%22%20filter=%22url(#az)%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-278.439%20336.074l-8.722%203.374-9.133.293-3.159%202.782-5.513-.47-5.62%204.938-1.551%205.978-.289%207.907%205.635.187%202.87%204.625%203.476-.658%205.418%201.22%203.118.188%202.516-1.047%205.727%201.766%204.223-1.078%204.623.437%206.407%204.141%206.41-.344%202.036-.39%2013.819-.453%2011.132-.594%205.403-.67%205.913%201.289%209.935.182%205.987-2.513%2014.124%201.16%2019.16-1.073%205.252%201.775%205.106-.338%2014.012-.092%207.204%202.905.942.219%2016.721-5.157%204.131-.187%201.686-2.25-5.798-6.665-1.626-6.781-2.11-1.625-5.097-8.032-5.413-3.156h-5.544l-4.981-.094-3.843-2.25-4.48.688-6.865-.938-5.972%201.938-8.888-.438-10.994-.406-10.234.707-16.08-2.02-10.206%201.626-7.442-.688-4.176%201.875-10.981-.638-15.894-.447-12.375-.708z%22%20color=%22#000%22%20fill=%22#c8c4b7%22%20overflow=%22visible%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-223.698%20369.5l-5.93-1.344-5.388.719-11.132.594-13.732.465%2020.46.785%205.103%203.031%204.556.406%205.787-1%205.877%201.5h6.485l3.31-2.937%207.944-.5%2022.887-1.031%204.873-.672%204.383%201.148%204.124%202.18%202.385-.188%209.553-1.937%202.885.812%202.992-.781%203.356.75-7.16-2.95-14.056.138-5.062.337-5.296-1.775-19.513.719-13.74-.875-5.999%202.562-9.952-.156zm-55.76-3.469l-4.192%201.063-5.727-1.75-2.5%201.062-3.138-.167-5.47-1.217-3.454.662%202.625%204.835%207.03-2.639%2015.878%204.839%203.769-.781%205.647%201.812%206.045-2.031%202.998-1.8-2.057.394-6.409.343-6.438-4.156-4.608-.469zm158.332.344l-4.13.188-16.722%205.156%206.698%201.5%2010.525-2.5%205.695%2011.844h.06l-.44-18.45-1.686%202.262z%22%20color=%22#000%22%20fill=%22#e3e2db%22%20overflow=%22visible%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-303.936%20365.64l2.631%204.874%207.033-2.638%2015.87%204.85%203.752-.784%205.668%201.795%206.04-2.022%202.993-1.793%2020.527.783%205.111%203.032%204.548.425%205.791-1.01%205.878%201.516h6.487l3.302-2.953%207.95-.505%2022.89-1.01%204.872-.683%204.375%201.143%204.13%202.178%202.38-.173%209.549-1.96%202.893.826%202.986-.775%2010.993%202.475%2010.526-2.526%205.701%2011.87-.31%2010.482%201.847%2014.246-1.231%2024.241-1.17%2016.219-2.413%207.73-4.068%202.197-6.423-1.015-12.32%201.43-13.455-.046-9.232-.715-9.15-1.384-9.263%201.114-8.57.316-15.169-.4-11.977-1.03-11.336%202.859-8.012-.692-11.28-1.452-15.324%201.399-11.802-1.444-9.04-.096-10.146.126-7.628-4.728-2.517-5.613-2.217-9.511%204.626-58.082%202.704-13.085z%22%20color=%22#000%22%20fill=%22#aca793%22%20overflow=%22visible%22/%3E%3Cpath%20d=%22M-310.962%20443.906l-.005-52.06-1.477-19.14-1.524-9.538-1.511-3.65.268-4.676%205.121-9.163-5.202%206.474-2.871%2014.825-2.434%2016.683.032%2014.616-.647%2024.862%202.903%2011.135%202.454%204.772%201.581%204.11%202.572%203.442.74-2.692z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22#aca793%22%20overflow=%22visible%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-304.933%20342.045l-5.206%203.664-5.066%209.134-.277%204.703%201.507%203.61%201.534%209.562%201.473%2019.125V433l4.329-54.282%202.657-12.812.061-.219-2.87-4.625-5.635-.187.289-7.907%201.587-5.958%205.616-4.965z%22%20color=%22#000%22%20fill=%22#e3e2db%22%20overflow=%22visible%22/%3E%3Cpath%20d=%22M-311.059%20432.906l-.182%203.469.273-3.375-.09-.094zm-.197%203.938l-.501%209.687%201.64%202.782%203.766%202.812v-.062l-.182-.125-2.521-5.625-2.202-9.469z%22%20fill=%22#797463%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-303.936%20818.003l2.631%204.873%207.033-2.637%2015.87%204.85%203.752-.785%205.668%201.795%206.04-2.021%202.993-1.794%2020.527.783%205.111%203.032%204.548.425%205.791-1.01%205.878%201.516h6.487l3.302-2.952%207.95-.506%2022.89-1.01%204.872-.683%204.375%201.143%204.13%202.178%202.38-.173%209.549-1.96%202.893.826%202.986-.775%2010.993%202.476%2010.526-2.527%205.701%2011.87-.31%2010.482%201.847%2014.246-1.231%2024.241-1.17%2016.22-2.413%207.73-4.068%202.196-6.423-1.015-12.32%201.43-13.455-.046-9.232-.714-9.15-1.384-9.263%201.113-8.57.316-15.169-.399-11.977-1.03-11.336%202.858-8.012-.692-11.28-1.452-15.324%201.4-11.802-1.445-9.04-.095-10.146.125-7.628-4.728-2.517-5.612-2.217-9.511%204.626-58.083%202.704-13.085z%22%20color=%22#000%22%20fill=%22url(#aA)%22%20overflow=%22visible%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-278.439%20788.436l-8.722%203.375-9.133.293-3.159%202.78-5.513-.468-5.62%204.938-1.551%205.977-.289%207.907%205.635.187%202.87%204.625%203.476-.658%205.418%201.22%203.15.126%202.469-.969%205.789%201.688%204.16-1.094%204.577.469%206.47%204.187%206.408-.343%202.037-.391%2013.819-.453%2011.132-.594%205.388-.75%205.837%201.344%2010.076.125%205.968-2.469%2014.093%201.197%2019.16-1.072%205.257%201.734%205.1-.296%2014.046-.157%207.171%202.969.942.219%2016.721-5.156%204.131-.188%201.686-2.25-5.798-6.665-1.626-6.781-2.11-1.625-5.097-8.031-5.413-3.157h-5.544l-4.981-.093-3.843-2.25-4.48.687-6.865-.937-5.972%201.937-8.888-.437-10.994-.407-10.234.707-16.08-2.02-10.206%201.626-7.442-.688-4.176%201.875-10.981-.638-15.894-.447-12.375-.708z%22%20color=%22#000%22%20fill=%22url(#aB)%22%20overflow=%22visible%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20d=%22M-310.962%20896.269l-.005-52.06-1.477-19.14-1.524-9.538-1.511-3.65.268-4.677%205.121-9.163-5.202%206.474-2.871%2014.825-2.434%2016.683.032%2014.616-.647%2024.862%202.903%2011.136%202.454%204.77%201.581%204.11%202.572%203.443.74-2.691z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22url(#aC)%22%20overflow=%22visible%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-304.933%20794.408l-5.206%203.663-5.066%209.134-.277%204.703%201.507%203.61%201.534%209.562%201.473%2019.125v41.157l4.329-54.282%202.657-12.812.061-.219-2.87-4.625-5.635-.187.289-7.906%201.587-5.96%205.616-4.963z%22%20color=%22#000%22%20fill=%22url(#aD)%22%20overflow=%22visible%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-223.666%20821.862l-5.993-1.344-5.357.72-11.132.593-13.732.465%2020.46.785%205.103%203.031%204.556.406%205.787-1%205.877%201.5h6.485l3.31-2.937%207.944-.5%2022.887-1.031%204.873-.672%204.383%201.148%204.124%202.18%202.385-.188%209.553-1.937%202.885.812%202.992-.78%203.356.75-7.124-2.938-14.092.125-5.007.312-5.351-1.75-19.513.719-13.803-.875-5.873%202.531-9.983-.125zm-55.824-3.469l-4.16%201-5.727-1.75-2.532%201.063-3.106-.105-5.47-1.217-3.454.662%202.625%204.835%207.03-2.638%2015.878%204.838%203.769-.781%205.647%201.812%206.045-2.031%202.998-1.8-2.057.394-6.409.343-6.5-4.156-4.577-.469zm158.364.344l-4.13.188-16.722%205.156%206.698%201.5%2010.525-2.5%205.695%2011.844h.06l-.44-18.449-1.686%202.261z%22%20color=%22#000%22%20fill=%22url(#aE)%22%20overflow=%22visible%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-306.074%20828.616l-2.597%2022.13-3.14%2039.49%203.866%2012.473-2.018-12.024%201.076-18.998%201.913-21.72.9-21.35z%22%20color=%22#000%22%20fill=%22#7f7a66%22%20overflow=%22visible%22%20filter=%22url(#aF)%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M-121.406%20818.25l-3.875.188h-.125l-16.719%205.156.281.968%2016.625-5.125h.031l4.063-.187h.031v-.5l.375.281.75-1.937-1.437%201.156zm-179.063-1.375l-.125.031-3.437.656.187.97%203.344-.626%205.375%201.188h.094l3.093.125h.125l.094-.063%202.344-.969%205.594%201.688.125.031.125-.031%204-.969h.03l4.438.469%206.375%204.062.157.094h.156l6.406-.344h.031l.032-.03%202.03-.376h.032l13.719-.437%2011.125-.594h.031l.031-.031%205.22-.688%205.937%201.313.062.031h.031l10%20.125h.094l.094-.063%205.719-2.468%2013.75.875h.03l19.438-.719%205.25%201.719.094.03h.094l5-.312h.03l14-.125%206.97%202.875.406-.906-7.125-2.937-.094-.032h-.125l-14.094.125-4.843.313h-.032l-5.312-1.75-.094-.031-.062.031-19.469.719h-.063l-13.75-.875-.125-.031-.093.062-5.813%202.5-9.75-.125-6-1.344-.062-.03-.094.03-5.312.719h-.063l-11.062.594h-.031l-13.72.437.032.813-.156-.813-2%20.407h-.063l-6.187.343-6.375-4.093-.094-.063h-.125l-4.562-.469-.094-.03-.063.03-4.03.969-5.595-1.719-.187-.03-.156.062-2.438%201.03-3-.124-5.375-1.188-.094-.03v-.001z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#afaa98%22%20overflow=%22visible%22%20filter=%22url(#aG)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M-315.546%20811.858l1.077%203.767%201.531%209.469v.062l1.47%2019.063v.03l-.354%2051.944.323%202.298.323-2.917.707-51.355v-.062l-1.469-19.126v-.03l-1.53-9.563-2.078-3.58z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#888470%22%20overflow=%22visible%22%20filter=%22url(#aH)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M-303.936%20818.003l2.631%204.873%207.033-2.637%2015.87%204.85%203.752-.785%205.668%201.795%206.04-2.021%202.993-1.794%2020.527.783%205.111%203.032%204.548.425%205.791-1.01%205.878%201.516h6.487l3.302-2.952%207.95-.506%2022.89-1.01%204.872-.683%204.375%201.143%204.13%202.178%202.38-.173%209.549-1.96%202.893.826%202.986-.775%2010.993%202.476%2010.526-2.527%205.701%2011.87-.31%2010.482%201.847%2014.246-1.231%2024.241-1.17%2016.22-2.413%207.73-4.068%202.196-6.423-1.015-12.32%201.43-13.455-.046-9.232-.714-9.15-1.384-9.263%201.113-8.57.316-15.169-.399-11.977-1.03-11.336%202.858-8.012-.692-11.28-1.452-15.324%201.4-11.802-1.445-9.04-.095-10.146.125-7.628-4.728-2.517-5.612-2.217-9.511%204.626-58.083%202.704-13.085z%22%20color=%22#000%22%20fill=%22url(#aI)%22%20overflow=%22visible%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M-310.36%20798.412l-.125.093-.031.157-1.859%206.025v.125l-.312%207.907v.5l.5.03%205.242.365%202.726%204.01.523.498-2.429-5.466-.125-.219h-.281l-5.125-.156.281-7.437%201.531-5.688%204.749-4.3-5.265%203.556z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#e3e2db%22%20overflow=%22visible%22%20filter=%22url(#aJ)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20d=%22M302.004%20331.07l-10.188%201.624-7.437-.687-4.188%201.875-10.968-.656-15.907-.438-12.375-.719-8.718%203.375-9.125.313-3.157%202.781-5.53-.469-5.126%203.625-.031.032v.03l-5.156%206.407-2.875%2014.812-2.438%2016.688.031%2014.625-.656%2024.844%202.906%2011.156%202.47%204.75%201.562%204.125%202.531%203.344v.03l1.625%202.782%203.781%202.813v-.063l7.438%204.594%2010.156-.125%209.031.094%2011.813%201.437%2015.312-1.375%2011.281%201.438%208%20.687%2011.344-2.844%2011.969%201.032%2015.187.375%208.563-.313%209.25-1.093%209.156%201.375%209.25.718%2013.438.032%2012.312-1.407%206.438%201%204.062-2.187%202.406-7.75%201.188-16.219%201.219-24.219-1.844-14.25.312-10.5h.063l-.438-18.437-5.812-6.656-1.625-6.782-2.094-1.625-5.094-8.031-5.406-3.156h-5.562l-4.969-.094-3.844-2.25-4.5.688-6.844-.938-5.968%201.938-8.907-.438-11-.406-10.218.687-16.094-2z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22#c8c4b7%22%20overflow=%22visible%22/%3E%3Cpath%20d=%22M301.996%20787.425l-10.187%201.625-7.438-.688-4.187%201.875-10.97-.656-15.905-.438-12.375-.718-8.72%203.375-9.124.312-3.156%202.781-5.532-.468-5.125%203.625-.03.03v.032l-5.157%206.406-2.875%2014.813-2.438%2016.687.032%2014.625-.657%2024.844%202.907%2011.156%202.468%204.75%201.563%204.125%202.531%203.344v.031l1.625%202.781%203.781%202.813v-.062l7.438%204.594%2010.156-.125%209.031.094%2011.813%201.437%2015.312-1.375%2011.282%201.438%208%20.687%2011.343-2.844%2011.969%201.032%2015.188.375%208.562-.313%209.25-1.093%209.156%201.375%209.25.718%2013.438.031%2012.312-1.406%206.438%201%204.062-2.188%202.407-7.75%201.187-16.218%201.219-24.219-1.844-14.25.313-10.5h.062l-.437-18.437-5.813-6.657-1.625-6.781-2.094-1.625-5.093-8.031-5.407-3.156h-5.562l-4.969-.094-3.844-2.25-4.5.687-6.843-.937-5.97%201.937-8.905-.437-11-.406-10.22.687-16.093-2z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22#c8c4b7%22%20overflow=%22visible%22%20filter=%22url(#aK)%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M240.932%20332.074l-8.722%203.374-9.133.293-3.159%202.782-5.513-.47-5.62%204.938-1.551%205.978-.289%207.907%205.635.187%202.87%204.625%203.476-.658%205.418%201.22%203.119.188%202.515-1.047%205.727%201.766%204.223-1.078%204.623.437%206.407%204.141%206.41-.344%202.036-.39%2013.819-.453%2011.132-.594%205.403-.67%205.913%201.289%209.935.182%205.987-2.513%2014.124%201.16%2019.16-1.073%205.252%201.775%205.106-.338%2014.012-.092%207.205%202.905.941.219%2016.721-5.157%204.131-.187%201.686-2.25-5.798-6.665-1.626-6.781-2.11-1.625-5.097-8.032-5.413-3.156h-5.544l-4.981-.094-3.843-2.25-4.48.688-6.864-.938-5.973%201.938-8.888-.438-10.994-.406-10.234.707-16.08-2.02-10.206%201.626-7.442-.688-4.176%201.875-10.981-.638-15.894-.447-12.375-.708z%22%20style=%22marker:none%22%20opacity=%22.854%22%20color=%22#000%22%20fill=%22#c8c4b7%22%20overflow=%22visible%22/%3E%3Cpath%20d=%22M295.673%20365.5l-5.93-1.344-5.388.719-11.132.594-13.732.465%2020.46.785%205.103%203.031%204.556.406%205.787-1%205.877%201.5h6.485l3.31-2.937%207.944-.5%2022.887-1.031%204.873-.672%204.383%201.148%204.124%202.18%202.385-.188%209.553-1.937%202.886.812%202.991-.781%203.357.75-7.161-2.95-14.056.138-5.062.337-5.296-1.775-19.513.719-13.74-.875-5.999%202.562-9.952-.156zm-55.76-3.469l-4.192%201.063-5.727-1.75-2.5%201.062-3.138-.167-5.47-1.217-3.453.662%202.624%204.835%207.03-2.639%2015.878%204.839%203.769-.781%205.647%201.812%206.045-2.031%202.998-1.8-2.057.394-6.409.343-6.438-4.156-4.608-.469zm158.332.344l-4.13.188-16.722%205.156%206.698%201.5%2010.525-2.5%205.695%2011.844h.06l-.44-18.45-1.686%202.262z%22%20style=%22marker:none%22%20opacity=%22.854%22%20color=%22#000%22%20fill=%22#e3e2db%22%20overflow=%22visible%22/%3E%3Cpath%20d=%22M215.435%20361.64l2.631%204.874%207.033-2.638%2015.87%204.85%203.752-.784%205.668%201.795%206.04-2.022%202.993-1.793%2020.527.783%205.111%203.032%204.548.425%205.792-1.01%205.877%201.516h6.487l3.302-2.953%207.95-.505%2022.89-1.01%204.872-.683%204.375%201.143%204.13%202.178%202.38-.173%209.55-1.96%202.892.826%202.986-.775%2010.993%202.475%2010.526-2.526%205.701%2011.87-.31%2010.482%201.847%2014.246-1.231%2024.241-1.17%2016.219-2.412%207.73-4.069%202.197-6.423-1.015-12.32%201.43-13.455-.046-9.232-.715-9.15-1.384-9.263%201.114-8.569.316-15.17-.4-11.977-1.03-11.336%202.859-8.012-.692-11.28-1.452-15.324%201.399-11.802-1.444-9.04-.096-10.146.126-7.628-4.728-2.517-5.613-2.217-9.511%204.626-58.082%202.704-13.085z%22%20style=%22marker:none%22%20opacity=%22.854%22%20color=%22#000%22%20fill=%22#aca793%22%20overflow=%22visible%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M208.409%20439.906l-.005-52.06-1.477-19.14-1.524-9.538-1.511-3.65.268-4.676%205.121-9.163-5.202%206.474-2.871%2014.825-2.434%2016.683.032%2014.616-.647%2024.862%202.903%2011.135%202.454%204.772%201.581%204.11%202.572%203.442.74-2.692z%22%20opacity=%22.854%22%20color=%22#000%22%20fill=%22#aca793%22%20overflow=%22visible%22/%3E%3Cpath%20d=%22M214.438%20338.045l-5.206%203.664-5.066%209.134-.277%204.703%201.507%203.61%201.534%209.562%201.473%2019.125V429l4.329-54.282%202.658-12.812.06-.219-2.87-4.625-5.635-.187.289-7.907%201.587-5.958%205.617-4.965z%22%20style=%22marker:none%22%20opacity=%22.854%22%20color=%22#000%22%20fill=%22#e3e2db%22%20overflow=%22visible%22/%3E%3Cpath%20d=%22M208.312%20428.906l-.182%203.469.273-3.375-.09-.094zm-.197%203.938l-.501%209.687%201.64%202.782%203.766%202.812v-.062l-.182-.125-2.521-5.625-2.202-9.469z%22%20opacity=%22.854%22%20fill=%22#797463%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M215.435%20818.003l2.631%204.873%207.033-2.637%2015.87%204.85%203.752-.785%205.668%201.795%206.04-2.021%202.993-1.794%2020.527.783%205.111%203.032%204.548.425%205.792-1.01%205.877%201.516h6.487l3.302-2.952%207.95-.506%2022.89-1.01%204.872-.683%204.375%201.143%204.13%202.178%202.38-.173%209.55-1.96%202.892.826%202.986-.775%2010.993%202.476%2010.526-2.527%205.701%2011.87-.31%2010.482%201.847%2014.246-1.231%2024.241-1.17%2016.22-2.412%207.73-4.069%202.196-6.423-1.015-12.32%201.43-13.455-.046-9.232-.714-9.15-1.384-9.263%201.113-8.569.316-15.17-.399-11.977-1.03-11.336%202.858-8.012-.692-11.28-1.452-15.324%201.4-11.802-1.445-9.04-.095-10.146.125-7.628-4.728-2.517-5.612-2.217-9.511%204.626-58.083%202.704-13.085z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22url(#aL)%22%20overflow=%22visible%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M240.932%20788.436l-8.722%203.375-9.133.293-3.159%202.78-5.513-.468-5.62%204.938-1.551%205.977-.289%207.907%205.635.187%202.87%204.625%203.476-.658%205.418%201.22%203.15.126%202.469-.969%205.789%201.688%204.16-1.094%204.577.469%206.47%204.187%206.408-.343%202.037-.391%2013.819-.453%2011.132-.594%205.388-.75%205.837%201.344%2010.076.125%205.968-2.469%2014.093%201.197%2019.16-1.072%205.257%201.734%205.1-.296%2014.046-.157%207.172%202.969.941.219%2016.721-5.156%204.131-.188%201.686-2.25-5.798-6.665-1.626-6.781-2.11-1.625-5.097-8.031-5.413-3.157h-5.544l-4.981-.093-3.843-2.25-4.48.687-6.864-.937-5.973%201.937-8.888-.437-10.994-.407-10.234.707-16.08-2.02-10.206%201.626-7.442-.688-4.176%201.875-10.981-.638-15.894-.447-12.375-.708z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22url(#aM)%22%20overflow=%22visible%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M208.409%20896.269l-.005-52.06-1.477-19.14-1.524-9.538-1.511-3.65.268-4.677%205.121-9.163-5.202%206.474-2.871%2014.825-2.434%2016.683.032%2014.616-.647%2024.862%202.903%2011.136%202.454%204.77%201.581%204.11%202.572%203.443.74-2.691z%22%20color=%22#000%22%20fill=%22url(#aN)%22%20overflow=%22visible%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M214.438%20794.408l-5.206%203.663-5.066%209.134-.277%204.703%201.507%203.61%201.534%209.562%201.473%2019.125v41.157l4.329-54.282%202.658-12.812.06-.219-2.87-4.625-5.635-.187.289-7.906%201.587-5.96%205.617-4.963z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22url(#aO)%22%20overflow=%22visible%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M295.705%20821.862l-5.993-1.344-5.357.72-11.132.593-13.732.465%2020.46.785%205.103%203.031%204.556.406%205.787-1%205.877%201.5h6.485l3.31-2.937%207.944-.5%2022.887-1.031%204.873-.672%204.383%201.148%204.124%202.18%202.385-.188%209.553-1.937%202.886.812%202.991-.78%203.357.75-7.125-2.938-14.092.125-5.007.312-5.351-1.75-19.513.719-13.803-.875-5.873%202.531-9.983-.125zm-55.824-3.469l-4.16%201-5.727-1.75-2.531%201.063-3.107-.105-5.47-1.217-3.453.662%202.624%204.835%207.03-2.638%2015.878%204.838%203.769-.781%205.647%201.812%206.045-2.031%202.998-1.8-2.057.394-6.409.343-6.5-4.156-4.577-.469zm158.364.344l-4.13.188-16.722%205.156%206.698%201.5%2010.525-2.5%205.695%2011.844h.06l-.44-18.449-1.686%202.261z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22url(#aP)%22%20overflow=%22visible%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M213.298%20828.616l-2.598%2022.13-3.14%2039.49%203.866%2012.473-2.018-12.024%201.076-18.998%201.913-21.72.9-21.35z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22#7f7a66%22%20overflow=%22visible%22%20filter=%22url(#aQ)%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M397.965%20818.25l-3.875.188h-.125l-16.719%205.156.281.968%2016.625-5.125h.031l4.063-.187h.031v-.5l.375.281.75-1.937-1.437%201.156zm-179.063-1.375l-.125.031-3.437.656.187.97%203.344-.626%205.375%201.188h.094l3.093.125h.125l.094-.063%202.344-.969%205.594%201.688.125.031.125-.031%204-.969h.03l4.438.469%206.375%204.062.157.094h.156l6.406-.344h.031l.032-.03%202.03-.376h.032l13.719-.437%2011.125-.594h.031l.031-.031%205.22-.688%205.937%201.313.062.031h.031l10%20.125h.094l.094-.063%205.719-2.468%2013.75.875h.03l19.438-.719%205.25%201.719.094.03h.094l5-.312h.03l14-.125%206.97%202.875.406-.906-7.125-2.937-.094-.032h-.125l-14.094.125-4.843.313h-.032l-5.312-1.75-.094-.031-.062.031-19.469.719h-.063l-13.75-.875-.125-.031-.093.062-5.813%202.5-9.75-.125-6-1.344-.062-.03-.094.03-5.312.72h-.063l-11.062.593h-.032l-13.718.437.03.813-.155-.813-2%20.407h-.063l-6.187.343-6.375-4.093-.094-.063h-.125l-4.563-.469-.093-.03-.063.03-4.031.97-5.594-1.72-.187-.03-.156.062-2.438%201.03-3-.124-5.375-1.188-.094-.03z%22%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#afaa98%22%20overflow=%22visible%22%20filter=%22url(#aR)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M203.825%20811.858l1.077%203.767%201.532%209.469v.062l1.468%2019.063v.03l-.353%2051.944.323%202.298.323-2.917.707-51.355v-.062l-1.468-19.126v-.03l-1.532-9.563-2.077-3.58z%22%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#888470%22%20overflow=%22visible%22%20filter=%22url(#aS)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M215.435%20818.003l2.631%204.873%207.033-2.637%2015.87%204.85%203.752-.785%205.668%201.795%206.04-2.021%202.993-1.794%2020.527.783%205.111%203.032%204.548.425%205.792-1.01%205.877%201.516h6.487l3.302-2.952%207.95-.506%2022.89-1.01%204.872-.683%204.375%201.143%204.13%202.178%202.38-.173%209.55-1.96%202.892.826%202.986-.775%2010.993%202.476%2010.526-2.527%205.701%2011.87-.31%2010.482%201.847%2014.246-1.231%2024.241-1.17%2016.22-2.412%207.73-4.069%202.196-6.423-1.015-12.32%201.43-13.455-.046-9.232-.714-9.15-1.384-9.263%201.113-8.569.316-15.17-.399-11.977-1.03-11.336%202.858-8.012-.692-11.28-1.452-15.324%201.4-11.802-1.445-9.04-.095-10.146.125-7.628-4.728-2.517-5.612-2.217-9.511%204.626-58.083%202.704-13.085z%22%20style=%22marker:none%22%20color=%22#000%22%20fill=%22url(#aT)%22%20overflow=%22visible%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20d=%22M209.011%20798.412l-.125.093-.031.157-1.859%206.025v.125l-.312%207.907v.5l.5.03%205.242.365%202.726%204.01.523.498-2.429-5.466-.125-.219h-.281l-5.125-.156.281-7.437%201.531-5.688%204.749-4.3-5.265%203.556z%22%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#e3e2db%22%20overflow=%22visible%22%20filter=%22url(#aU)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-456.362)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M-251.5%20380v59.5H-273c-.528%202.484.292%203.62%202.867%203h21.633V383h23.5v59.5h9.75V383c1.977.017%204.667-.68%203.75%202.23v57.27h9.75V383c1.977.017%204.667-.68%203.75%202.23v57.27h9.75V383c1.977.017%204.667-.68%203.75%202.23v57.27h58c.528-2.484-.292-3.62-2.867-3H-181.5V380h-9.75v59.5c-1.977-.017-4.667.68-3.75-2.23V380h-9.75v59.5c-1.977-.017-4.667.68-3.75-2.23V380h-9.75v59.5c-1.977-.017-4.667.68-3.75-2.23V380h-29.5z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#7d7864%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M-222.75%20832.362v56.281c-.42%201.335-.086%201.891.594%202.125-.022-.3.008-.654.156-1.125v-57.28h-.75zm13.5%200v56.281c-.42%201.335-.086%201.891.594%202.125-.022-.3.008-.654.156-1.125v-57.28h-.75zm13.5%200v56.281c-.42%201.335-.086%201.891.594%202.125-.022-.3.008-.654.156-1.125v-57.28h-.75zm13.5%200v58.5h.75v-58.5h-.75zm-32.188%201.938c-.515.017-1.068.066-1.562.062v59.5h-9v1h9.75v-59.5c1.07.01%202.353-.183%203.156.094-.08-1.093-1.13-1.198-2.344-1.156zm13.5%200c-.515.017-1.068.066-1.562.062v59.5h-9v1h9.75v-59.5c1.07.01%202.353-.183%203.156.094-.08-1.093-1.13-1.198-2.344-1.156zm13.5%200c-.515.017-1.068.066-1.562.062v59.5h-9v1h9.75v-59.5c1.07.01%202.353-.183%203.156.094-.08-1.093-1.13-1.198-2.344-1.156zm-61.812.062v59.5h-21.625c-.966.233-1.694.209-2.188-.031.264%201.058%201.198%201.45%202.938%201.031h21.625v-59.5h22.75v-1h-23.5zm122.063%2057.531c.126.509.108%201.163-.063%201.97h-57.25v1h58c.33-1.553.135-2.57-.688-2.97z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#deddd6%22%20overflow=%22visible%22%20filter=%22url(#aV)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M-251.5%20832.362v59.5H-273c-.33%201.553-.135%202.57.688%202.969-.127-.508-.11-1.163.062-1.969h21.5v-59.5H-222v-1h-29.5zm33.25%200v59.5c-1.07-.009-2.353.183-3.156-.094.114%201.557%202.249%201.08%203.906%201.094v-59.5h9v-1h-9.75zm13.5%200v59.5c-1.07-.009-2.353.183-3.156-.094.114%201.557%202.249%201.08%203.906%201.094v-59.5h9v-1h-9.75zm13.5%200v59.5c-1.07-.009-2.353.183-3.156-.094.114%201.557%202.249%201.08%203.906%201.094v-59.5h9v-1h-9.75zm-33.75%204v58.5h.75v-58.5h-.75zm13.656.094c.022.3-.008.654-.156%201.125v57.281h.75v-56.281c.42-1.334.086-1.89-.594-2.125zm13.5%200c.022.3-.008.654-.156%201.125v57.281h.75v-56.281c.42-1.334.086-1.89-.594-2.125zm13.5%200c.022.3-.008.654-.156%201.125v57.281h.75v-56.281c.42-1.334.086-1.89-.594-2.125zm55.875%2055.25a6.387%206.387%200%200%200-.906.156h-51.375v1h52.125c.966-.232%201.694-.208%202.188.031-.215-.862-.852-1.29-2.032-1.187z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#38352c%22%20overflow=%22visible%22%20filter=%22url(#aW)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-452.362)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M240.5%20377.5v61h-22.719v5H245.5v-61h59v61h30v-61h16v61H379v-5h-23.5v-61h-26v61h-20v-61h-69z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#f2f1ef%22%20fill-opacity=%22.407%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M240.5%20377.5v61h-22.719v5h1v-3H241.5v-61h68v-2h-69zm89%200v61h-19v2h20v-61h25v-2h-26zm-25%207v59h1v-59h-1zm46%200v59h1v-59h-1zm6%2054v2H379v-2h-22.5z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#4b473c%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20filter=%22url(#aX)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M308.5%20829.862v60h1v-60h-1zm46%200v60h1v-60h-1zm-110%204v61h-26.719v1H245.5v-61h58v-1h-59zm89%200v61h-29v1h30v-61h15v-1h-16zm44.5%2057v4h-27.5v1H379v-5h-1z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22#e2e0da%22%20overflow=%22visible%22%20filter=%22url(#aY)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22%20transform=%22translate(0%20-452.362)%22/%3E%3Ctext%20transform=%22matrix(1.05115%200%200%201.5055%20-47.934%20-287.26)%22%20style=%22line-height:1.55;-inkscape-font-specification:'sans-serif,%20Bold';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;shape-inside:url(#aZ)%22%20font-weight=%22700%22%20font-size=%2264%22%20font-family=%22sans-serif%22%20letter-spacing=%22.39%22%20white-space=%22pre%22%3E%3Ctspan%20x=%2248.084%22%20y=%22577.142%22%3E%3Ctspan%20font-size=%2285.333%22%3EClock/1000%3C/tspan%3E%3C/tspan%3E%3C/text%3E%3Cg%20color=%22#000%22%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M295%20109.344v243.062h10V109.344h-10z%22%20font-weight=%22400%22%20fill=%22#d4aa00%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M297%20109.344v243.062h6V109.344h-6z%22%20font-weight=%22400%22%20fill=%22#fcff4c%22%20fill-opacity=%22.544%22%20overflow=%22visible%22%20filter=%22url(#bc)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M274.938%20116.594l-9.875%201.5C272.983%20169.698%20285%20227.776%20285%20280.875v71.531h10v-71.531c0-54.598-12.202-113.074-20.063-164.281z%22%20font-weight=%22400%22%20fill=%22#d45500%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M272.938%20116.594l-5.875%201.5C274.983%20169.698%20287%20227.776%20287%20280.875v71.531h6v-71.531c0-54.598-12.202-113.074-20.063-164.281z%22%20font-weight=%22400%22%20fill=%22#fca%22%20fill-opacity=%22.409%22%20overflow=%22visible%22%20filter=%22url(#bd)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M244.75%20133.781l-9.5%203.125c19.277%2058.01%2039.75%2096.665%2039.75%20183.969v31.531h10v-31.531c0-88.882-21.224-129.837-40.25-187.094z%22%20font-weight=%22400%22%20fill=%22#a00%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M242.75%20133.781l-3.5%203.125c19.277%2058.01%2038.25%2096.665%2038.25%20183.969v31.531h5.5v-31.531c0-88.882-21.224-129.837-40.25-187.094z%22%20font-weight=%22400%22%20fill=%22#faa%22%20fill-opacity=%22.475%22%20overflow=%22visible%22%20filter=%22url(#be)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M214.188%20156.625l-8.375%205.469C234.264%20205.662%20265%20239.56%20265%20320.875v31.531h10v-31.531c0-83.882-32.86-121.448-60.813-164.25z%22%20font-weight=%22400%22%20fill=%22#784421%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M215.188%20162.625l-4.375-.531c28.452%2043.568%2057.687%2077.466%2057.687%20158.781v31.531h4v-31.531c0-83.882-29.36-115.448-57.313-158.25z%22%20font-weight=%22400%22%20fill=%22#deaa87%22%20fill-opacity=%22.378%22%20overflow=%22visible%22%20filter=%22url(#bf)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M183.156%20185.469l-6.312%207.75C205.832%20216.697%20255%20251.5%20255%20320.875v31.531h10v-31.531c0-74.14-53.403-112.372-81.844-135.406z%22%20font-weight=%22400%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M183.156%20189.469l-4.312%201.75c28.988%2023.478%2079.656%2053.275%2079.656%20129.656v31.531h4v-31.531c0-71.64-50.903-108.372-79.344-131.406z%22%20font-weight=%22400%22%20fill=%22#fff%22%20fill-opacity=%22.313%22%20overflow=%22visible%22%20filter=%22url(#bg)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M325.063%20116.594C317.202%20167.8%20305%20226.277%20305%20280.875v71.531h10v-71.531c0-53.099%2012.017-111.177%2019.938-162.781l-9.875-1.5z%22%20font-weight=%22400%22%20fill=%22green%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M272.938%20112.594l-5.875%201.5C274.983%20165.698%20287%20223.776%20287%20276.875v71.531h6v-71.531c0-54.598-12.202-113.074-20.063-164.281z%22%20transform=%22matrix(-1%200%200%201%20600.063%204)%22%20font-weight=%22400%22%20fill=%22#cfa%22%20fill-opacity=%22.409%22%20overflow=%22visible%22%20filter=%22url(#bh)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M355.25%20133.781C336.224%20191.038%20315%20231.993%20315%20320.875v31.531h10v-31.531c0-87.304%2020.473-125.959%2039.75-183.969l-9.5-3.125z%22%20font-weight=%22400%22%20fill=%22#04a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M242.75%20129.781l-3.5%203.125c19.277%2058.01%2038.25%2096.665%2038.25%20183.969v31.531h5.5v-31.531c0-88.882-21.224-129.837-40.25-187.094z%22%20transform=%22matrix(-1%200%200%201%20600.25%204)%22%20font-weight=%22400%22%20fill=%22#acf%22%20fill-opacity=%22.475%22%20overflow=%22visible%22%20filter=%22url(#bi)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M385.813%20156.625C357.86%20199.427%20325%20236.993%20325%20320.875v31.531h10v-31.531c0-81.315%2030.735-115.213%2059.188-158.781l-8.375-5.469z%22%20font-weight=%22400%22%20fill=%22#aa00d4%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M275.188%20158.625l-4.375-.531c28.452%2043.568%2057.687%2077.466%2057.687%20158.781v31.531h4v-31.531c0-83.882-29.36-115.448-57.313-158.25z%22%20transform=%22matrix(-1%200%200%201%20660.813%204)%22%20font-weight=%22400%22%20fill=%22#eaf%22%20fill-opacity=%22.483%22%20overflow=%22visible%22%20filter=%22url(#bj)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M416.844%20185.469C388.404%20208.503%20335%20246.736%20335%20320.875v31.531h10v-31.531c0-69.374%2049.168-104.178%2078.156-127.656l-6.312-7.75z%22%20font-weight=%22400%22%20fill=%22#6f6f91%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:'04b03'%22%20d=%22M183.156%20185.469l-4.312%201.75C207.832%20210.696%20257%20242.494%20257%20316.875v31.531h5v-31.531c0-69.14-50.403-108.372-78.844-131.406z%22%20transform=%22matrix(-1%200%200%201%20598.844%204)%22%20font-weight=%22400%22%20fill=%22#dbdbe3%22%20fill-opacity=%22.429%22%20overflow=%22visible%22%20filter=%22url(#bk)%22%20enable-background=%22accumulate%22%20font-family=%2204b03%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M225.644%20343.498h148.712v16.777c-38.37%201.696-81.343%202.695-148.712%200v-16.777z%22%20fill=%22url(#bl)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M253.929%20333h92.142v20.357c-23.774%202.058-50.4%203.27-92.142%200V333zM300.025%208.999c-1.11.004-2.208.962-2.361%202.812-3.487%2042.092-1.138%2061.943-1.318%2072.47-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126h12.532v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.179-1.868-1.298-2.817-2.408-2.813z%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22translate(-2.121%2016.485)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bm)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bn)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22translate(0%208)%22/%3E%3Cpath%20d=%22M254.271%2017.822c-1.096.177-2.032%201.294-1.896%203.145%203.09%2042.123%208.493%2061.368%209.95%2071.795%201.23%208.796-2.363%2014.788-1.938%2015.457%202.103%203.307%203.101%208.271%203.606%2011.484l2.659%2016.919%2012.38-1.946-2.674-17.016c-.531-3.379-1.092-8.175-.178-11.923.255-1.047-5.207-5.344-6.586-14.118-1.595-10.146-1.959-30.276-12.508-71.392-.466-1.818-1.719-2.582-2.815-2.405z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22rotate(-8.932%20440.227%20311.654)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bo)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bp)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22rotate(-8.932%20384.845%20302.316)%22/%3E%3Cpath%20d=%22M204.227%2033.62c-1.047.37-1.77%201.635-1.307%203.433%2010.534%2040.901%2019.273%2058.879%2022.561%2068.88%202.775%208.438.305%2014.973.842%2015.555%202.657%202.881%204.523%207.588%205.591%2010.66l5.626%2016.176%2011.837-4.116-5.658-16.27c-1.124-3.23-2.53-7.85-2.296-11.701.065-1.075-6.075-4.332-8.992-12.72-3.374-9.702-7.313-29.446-25.006-68.03-.782-1.706-2.15-2.235-3.198-1.866z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22rotate(-19.177%20374.856%20302.891)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bq)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#br)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22rotate(-19.177%20348.68%20300.855)%22/%3E%3Cpath%20d=%22M149.988%2064.151c-.935.6-1.349%201.997-.486%203.64%2019.625%2037.4%2032.251%2052.897%2037.744%2061.878%204.634%207.578%203.727%2014.505%204.384%2014.949%203.247%202.195%206.141%206.35%207.885%209.095l9.183%2014.457%2010.578-6.72-9.235-14.54c-1.834-2.887-4.26-7.062-4.916-10.864-.183-1.061-6.906-2.825-11.668-10.322-5.507-8.67-13.865-26.985-39.93-60.49-1.152-1.48-2.605-1.681-3.54-1.083z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22rotate(-32.424%20349.262%20290)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bs)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bt)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22rotate(-32.424%20333.61%20290.594)%22/%3E%3Cg%3E%3Cpath%20d=%22M93.654%20119.185c-.696.865-.644%202.321.696%203.606%2030.489%2029.229%2047.384%2039.912%2055.445%2046.684%206.8%205.713%208.141%2012.57%208.905%2012.782%203.776%201.05%207.84%204.07%2010.365%206.119l13.3%2010.79%207.896-9.73-13.376-10.854c-2.656-2.155-6.283-5.343-8.112-8.74-.51-.948-7.446-.485-14.342-6.08-7.976-6.472-21.72-21.185-57.076-44.674-1.563-1.039-3.005-.768-3.7.097z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22rotate(-50.944%20330.853%20274.68)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bu)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bv)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22rotate(-50.944%20320.886%20276.696)%22/%3E%3C/g%3E%3Cg%3E%3Cpath%20d=%22M345.974%2017.822c1.095.177%202.032%201.294%201.896%203.145-3.09%2042.123-8.493%2061.368-9.95%2071.795-1.23%208.796%202.363%2014.788%201.938%2015.457-2.103%203.307-3.101%208.271-3.606%2011.484l-2.659%2016.919-12.38-1.946%202.674-17.016c.531-3.379%201.092-8.175.178-11.923-.255-1.047%205.207-5.344%206.586-14.118%201.595-10.146%201.959-30.276%2012.508-71.392.466-1.818%201.719-2.582%202.815-2.405z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22scale(-1%201)%20rotate(-8.932%20140.104%204154.269)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bw)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bx)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22scale(-1%201)%20rotate(-8.932%2084.723%204144.931)%22/%3E%3C/g%3E%3Cg%3E%3Cpath%20d=%22M396.018%2033.62c1.047.37%201.77%201.635%201.306%203.433-10.533%2040.901-19.272%2058.879-22.56%2068.88-2.775%208.438-.305%2014.973-.842%2015.555-2.658%202.881-4.523%207.588-5.591%2010.66l-5.626%2016.176-11.837-4.116%205.658-16.27c1.124-3.23%202.529-7.85%202.296-11.701-.065-1.075%206.075-4.332%208.992-12.72%203.374-9.702%207.312-29.446%2025.006-68.03.782-1.706%202.15-2.235%203.197-1.866z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22scale(-1%201)%20rotate(-19.177%2074.734%202079.51)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#by)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bz)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22scale(-1%201)%20rotate(-19.177%2048.558%202077.473)%22/%3E%3C/g%3E%3Cg%3E%3Cpath%20d=%22M450.257%2064.151c.935.6%201.348%201.997.486%203.64-19.625%2037.4-32.252%2052.897-37.744%2061.878-4.634%207.578-3.727%2014.505-4.384%2014.949-3.247%202.195-6.141%206.35-7.885%209.095l-9.183%2014.457-10.578-6.72%209.235-14.54c1.834-2.887%204.26-7.062%204.916-10.864.183-1.061%206.906-2.825%2011.668-10.322%205.507-8.67%2013.865-26.985%2039.93-60.49%201.151-1.48%202.605-1.681%203.54-1.083z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22scale(-1%201)%20rotate(-32.424%2049.14%201322.235)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bA)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bB)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22scale(-1%201)%20rotate(-32.424%2033.487%201322.83)%22/%3E%3C/g%3E%3Cg%3E%3Cpath%20d=%22M506.59%20119.185c.696.865.645%202.321-.695%203.606-30.489%2029.229-47.384%2039.912-55.445%2046.684-6.8%205.713-8.141%2012.57-8.905%2012.782-3.776%201.05-7.84%204.07-10.365%206.119l-13.3%2010.79-7.896-9.73%2013.376-10.854c2.656-2.155%206.283-5.343%208.112-8.74.51-.948%207.446-.485%2014.342-6.08%207.976-6.472%2021.72-21.185%2057.076-44.674%201.563-1.039%203.005-.768%203.7.097z%22%20style=%22marker:none%22%20fill=%22#1a1a1a%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20transform=%22scale(-1%201)%20rotate(-50.944%2030.73%20904.69)%22%20d=%22M303.349%2038.204c0%2015.62-.95%2028.284-2.122%2028.284-1.171%200-2.12-12.663-2.12-28.284%200-15.621.949-28.285%202.12-28.285%201.172%200%202.122%2012.664%202.122%2028.285z%22%20style=%22marker:none%22%20fill=%22url(#bC)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20d=%22M298.414%207.311c-3.487%2042.092.112%2056.693-.068%2067.22-.15%208.88-4.63%2014.241-4.314%2014.968%201.564%203.594%201.779%208.653%201.779%2011.905v17.126l10.532%201.75v-17.225c0-3.42.19-8.245%201.676-11.806.414-.994-4.315-6.087-4.315-14.969%200-10.27%202.766-30.213-1.271-72.468-.68-3.838-3.022.398-4.02%203.5z%22%20style=%22marker:none%22%20fill=%22url(#bD)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22%20transform=%22scale(-1%201)%20rotate(-50.944%2020.764%20906.706)%22/%3E%3C/g%3E%3Cpath%20style=%22marker:none%22%20d=%22M254.32%20333.768h91.36v2.514c-23.572%201.695-49.973%202.693-91.36%200v-2.514z%22%20fill=%22url(#bE)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M338.82%20333.634h6.736v19.615c-3.347-.017-4.745.15-6.737%200v-19.615z%22%20fill=%22url(#bF)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3Cpath%20style=%22marker:none%22%20d=%22M255.07%20308.684h90.486v24.565c-23.347%201.983-49.495%203.15-90.487%200v-24.565z%22%20fill=%22url(#bG)%22%20overflow=%22visible%22%20enable-background=%22accumulate%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e",
              "type": "basic.output",
              "data": {
                "name": "clk_freq/1000"
              },
              "position": {
                "x": 1640,
                "y": 192
              }
            },
            {
              "id": "eba22754-e004-4103-8389-80348c73822c",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 744,
                "y": 288
              }
            },
            {
              "id": "5c1d44ed-3cb2-49ed-a674-1f9720b5a90d",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "1000",
                "local": false
              },
              "position": {
                "x": 1128,
                "y": 64
              }
            },
            {
              "id": "6ccf019f-a8f9-4961-bf7a-c90d3bb37abe",
              "type": "b6518b2e928f2ea2b2cc36ab6e1fea3382183031",
              "position": {
                "x": 1128,
                "y": 176
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "5d617600-3bf9-4e82-9a55-f58f84c8c098",
              "type": "0ee3aaa8ed9294a47c6d205da184238d1fc1b9d2",
              "position": {
                "x": 1136,
                "y": 312
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "527502a2-0ba7-492f-8ff6-3d6532bfab26",
              "type": "dde07242c41d646b018e04ae504185860ab8a1da",
              "position": {
                "x": 1352,
                "y": 192
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "16091367-38c6-4bb5-8346-095ae0040a78",
              "type": "basic.info",
              "data": {
                "info": "This block divides the frequency of a clock by 1000\n\nUsefull for measuring the frequency of a fast clock  with a slow logic logic analysers.\n\neg:  a 100Mhz clocks will be transformed to a 100Khz pulse signal\n    the frequency of this one can be measured \"accurately\" with a logic analyser having a sampling rate of 1Mhz \n    \nDISCLAIMER: Do not expect to be able read other fast signals than a simple sqare wave/clock signal! \n            For thaht get a faster logic analyser ;-)",
                "readonly": false
              },
              "position": {
                "x": 696,
                "y": -216
              },
              "size": {
                "width": 928,
                "height": 232
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "5c1d44ed-3cb2-49ed-a674-1f9720b5a90d",
                "port": "constant-out"
              },
              "target": {
                "block": "6ccf019f-a8f9-4961-bf7a-c90d3bb37abe",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "6ccf019f-a8f9-4961-bf7a-c90d3bb37abe",
                "port": "cb7d01a0-6614-492f-85a9-8fff779bcf16"
              },
              "target": {
                "block": "527502a2-0ba7-492f-8ff6-3d6532bfab26",
                "port": "1c3ee14c-c5bc-4a49-8e37-736bd3275230"
              },
              "vertices": [],
              "size": 12
            },
            {
              "source": {
                "block": "5d617600-3bf9-4e82-9a55-f58f84c8c098",
                "port": "4fccb04c-5705-411a-85cb-d1b44e5c7cc7"
              },
              "target": {
                "block": "527502a2-0ba7-492f-8ff6-3d6532bfab26",
                "port": "2dc42a94-8cad-4da2-bf3b-08013ea2a669"
              },
              "vertices": [],
              "size": 12
            },
            {
              "source": {
                "block": "527502a2-0ba7-492f-8ff6-3d6532bfab26",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "5d617600-3bf9-4e82-9a55-f58f84c8c098",
                "port": "2a921d76-1cbd-48fe-82a9-11b0ab4dbc06"
              },
              "vertices": [
                {
                  "x": 1376,
                  "y": 424
                }
              ]
            },
            {
              "source": {
                "block": "527502a2-0ba7-492f-8ff6-3d6532bfab26",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
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
                "block": "5d617600-3bf9-4e82-9a55-f58f84c8c098",
                "port": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6"
              }
            }
          ]
        }
      }
    },
    "b6518b2e928f2ea2b2cc36ab6e1fea3382183031": {
      "package": {
        "name": "12-bits-k-1",
        "version": "0.0.2",
        "description": "Generic: 12-bits k-1 constant (Input values: 1,2,...,4096). It returns the value input by the user minus 1. Outputs: 0,1,2,...,4095",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20width=%22379.943%22%20height=%22248.129%22%20viewBox=%220%200%20356.19654%20232.62089%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20fill=%22green%22%3E%3Cg%20style=%22line-height:0%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%3E%3Cpath%20d=%22M56.012%20146.905q9.055%206.708%2020.459%2017.105%2011.404%2010.062%2022.472%2021.801%2011.403%2011.739%2021.465%2024.149%2010.062%2012.074%2016.1%2022.471h-32.87q-6.372-10.397-15.763-21.13-9.392-11.068-20.124-21.13-10.398-10.062-21.13-18.447-10.398-8.385-18.783-14.086v74.793H0V4.696L27.838%200v141.874q18.447-16.1%2036.894-31.863%2018.447-16.1%2033.204-33.205h32.534q-14.422%2017.106-34.881%2035.217-20.124%2018.112-39.577%2034.882z%22%20style=%22line-height:1.25%22%20font-size=%22335.399%22%20font-weight=%22400%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22/%3E%3C/g%3E%3Cg%20style=%22line-height:1.25%22%20font-size=%22240.378%22%20stroke-width=%226.009%22%3E%3Cpath%20d=%22M127.343%20148.678h70.366v21.41h-70.366zM243.924%20210.427h43.081V61.732l-46.867%209.4V47.11l46.606-9.4h26.371v172.717h43.082v22.194H243.924z%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cb7d01a0-6614-492f-85a9-8fff779bcf16",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 952,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "K",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "294f1eb0-e5cf-4c89-b914-bbb9b8305d64",
              "type": "basic.info",
              "data": {
                "info": "Output: 0,1,2,...,4095",
                "readonly": true
              },
              "position": {
                "x": 960,
                "y": 224
              },
              "size": {
                "width": 192,
                "height": 40
              }
            },
            {
              "id": "83e77c69-25af-4960-9fe3-c1fb07abf203",
              "type": "basic.info",
              "data": {
                "info": "Inputs: 1,2,...,4096",
                "readonly": true
              },
              "position": {
                "x": 728,
                "y": 80
              },
              "size": {
                "width": 184,
                "height": 40
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = VALUE-1;",
                "params": [
                  {
                    "name": "VALUE"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "VALUE"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "cb7d01a0-6614-492f-85a9-8fff779bcf16",
                "port": "in"
              },
              "size": 12
            }
          ]
        }
      }
    },
    "0ee3aaa8ed9294a47c6d205da184238d1fc1b9d2": {
      "package": {
        "name": "syscounter-rst-12bits",
        "version": "0.1",
        "description": "12-bits Syscounter with reset",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22302.843%22%20height=%22186.504%22%20viewBox=%220%200%2080.127205%2049.345746%22%3E%3Cdefs%3E%3Cmarker%20id=%22a%22%20orient=%22auto%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-65.585%20-4.54)%22%3E%3Cpath%20d=%22M138.803%2048.49V16.91%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.806%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2299.747%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%22108.575%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%22108.575%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M100.868%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20rx=%222.807%22%20ry=%222.807%22%20y=%225.289%22%20x=%2266.333%22%20height=%2247.849%22%20width=%2229.538%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%221.497%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20transform=%22scale(.94516%201.05802)%22%20y=%2240.921%22%20x=%2273.223%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%228.982%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%221.497%22%3E%3Ctspan%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2240.921%22%20x=%2273.223%22%20font-weight=%22700%22%20font-size=%2235.656%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M67.454%2030.283h27.764%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222.245%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618592156430
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 216,
                "y": -120
              }
            },
            {
              "id": "0a772657-8018-424d-8f04-75d3ffff3692",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "pins": [
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": 368,
                "y": -120
              }
            },
            {
              "id": "b9359b10-b14f-4dd7-adf9-3f4f22bc65e6",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 384,
                "y": -32
              }
            },
            {
              "id": "01a84767-a9df-4764-8978-70d5f2cb1e3b",
              "type": "basic.outputLabel",
              "data": {
                "name": "q",
                "range": "[11:0]",
                "blockColor": "fuchsia",
                "size": 12
              },
              "position": {
                "x": 1040,
                "y": -32
              }
            },
            {
              "id": "4fccb04c-5705-411a-85cb-d1b44e5c7cc7",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 1216,
                "y": -32
              }
            },
            {
              "id": "88e0e872-0460-4ecc-bf26-8a7a5598a024",
              "type": "basic.output",
              "data": {
                "name": "max"
              },
              "position": {
                "x": 1208,
                "y": 56
              }
            },
            {
              "id": "06c393de-8af4-4b53-852c-b0e0160b5314",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "c"
              },
              "position": {
                "x": 1048,
                "y": 56
              }
            },
            {
              "id": "2a921d76-1cbd-48fe-82a9-11b0ab4dbc06",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 216,
                "y": 56
              }
            },
            {
              "id": "290b5387-64c6-48fa-a027-5cb072e13d57",
              "type": "basic.inputLabel",
              "data": {
                "name": "q",
                "range": "[11:0]",
                "pins": [
                  {
                    "index": "11",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "10",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "9",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "8",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "7",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "6",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "5",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "4",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 704,
                "y": 56
              }
            },
            {
              "id": "cd9b7fce-c943-4b4c-a716-94f2cd21ccda",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "c",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": 856,
                "y": 144
              }
            },
            {
              "id": "a80584cf-ba1c-4ac4-ab48-4e1c2d9e4130",
              "type": "fc56d8201d1149f04370321a87037d2e8b3e1ea8",
              "position": {
                "x": 544,
                "y": 40
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "95d45fcf-9670-438f-a479-e34312278332",
              "type": "13510113faa8170f481c2180b50dad4a69ce8f90",
              "position": {
                "x": 704,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6",
                "port": "out"
              },
              "target": {
                "block": "0a772657-8018-424d-8f04-75d3ffff3692",
                "port": "inlabel"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "95d45fcf-9670-438f-a479-e34312278332",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "cd9b7fce-c943-4b4c-a716-94f2cd21ccda",
                "port": "inlabel"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "b9359b10-b14f-4dd7-adf9-3f4f22bc65e6",
                "port": "outlabel"
              },
              "target": {
                "block": "a80584cf-ba1c-4ac4-ab48-4e1c2d9e4130",
                "port": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6"
              }
            },
            {
              "source": {
                "block": "06c393de-8af4-4b53-852c-b0e0160b5314",
                "port": "outlabel"
              },
              "target": {
                "block": "88e0e872-0460-4ecc-bf26-8a7a5598a024",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a80584cf-ba1c-4ac4-ab48-4e1c2d9e4130",
                "port": "0a9a6e73-6cc8-4c03-a8e3-02baed79e67d",
                "size": 12
              },
              "target": {
                "block": "290b5387-64c6-48fa-a027-5cb072e13d57",
                "port": "inlabel"
              },
              "size": 12
            },
            {
              "source": {
                "block": "01a84767-a9df-4764-8978-70d5f2cb1e3b",
                "port": "outlabel"
              },
              "target": {
                "block": "4fccb04c-5705-411a-85cb-d1b44e5c7cc7",
                "port": "in",
                "size": 12
              },
              "size": 12
            },
            {
              "source": {
                "block": "2a921d76-1cbd-48fe-82a9-11b0ab4dbc06",
                "port": "out"
              },
              "target": {
                "block": "a80584cf-ba1c-4ac4-ab48-4e1c2d9e4130",
                "port": "159f86de-af0f-4f1a-9a93-7e8149d5d322"
              }
            },
            {
              "source": {
                "block": "a80584cf-ba1c-4ac4-ab48-4e1c2d9e4130",
                "port": "0a9a6e73-6cc8-4c03-a8e3-02baed79e67d"
              },
              "target": {
                "block": "95d45fcf-9670-438f-a479-e34312278332",
                "port": "eeb62710-30aa-41b8-ac43-e96d6d8116cc"
              },
              "size": 12
            },
            {
              "source": {
                "block": "95d45fcf-9670-438f-a479-e34312278332",
                "port": "9dadbde1-2747-4b23-afc9-300b6371d65f"
              },
              "target": {
                "block": "a80584cf-ba1c-4ac4-ab48-4e1c2d9e4130",
                "port": "82805ecd-07a6-4b5f-bc65-20e6fd0879a8"
              },
              "vertices": [
                {
                  "x": 840,
                  "y": 280
                }
              ],
              "size": 12
            }
          ]
        }
      }
    },
    "fc56d8201d1149f04370321a87037d2e8b3e1ea8": {
      "package": {
        "name": "DFF-rst-x12",
        "version": "0.1",
        "description": "DFF-rst-x12: 12 D flip-flops in paralell with reset",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22252.294%22%20height=%22220.368%22%20viewBox=%220%200%2066.75283%2058.305748%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M25.682%2041.088L39.29%2057.76l-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M18.298%2033.024L9.066%2013.41l-6.45%203.724-2.07-3.583%2020.905-12.07%202.069%203.584-6.092%203.517%2012.03%2018.223s5.399-2.025%208.535.74c3.137%202.766%202.52%204.92%202.887%204.773L17.192%2045.956s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M42.022%2040.152l13.607%2016.672-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M34.638%2032.088l-9.232-19.613-6.451%203.724-2.07-3.583L37.792.546%2039.86%204.13l-6.093%203.517%2012.03%2018.223s5.4-2.025%208.536.74c3.137%202.766%202.52%204.92%202.887%204.772L33.532%2045.02s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Cg%20transform=%22translate(-38.356%20-17.732)%22%3E%3Crect%20width=%2224.412%22%20height=%2213.185%22%20x=%2280.3%22%20y=%2221.375%22%20ry=%222.247%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%22.794%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:1.25%22%20x=%2282.245%22%20y=%2230.943%22%20font-weight=%22400%22%20font-size=%2210.583%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20x=%2282.245%22%20y=%2230.943%22%20font-weight=%22700%22%3ESys%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618509859237
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -632,
                "y": -264
              }
            },
            {
              "id": "0a772657-8018-424d-8f04-75d3ffff3692",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "pins": [
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": -480,
                "y": -264
              }
            },
            {
              "id": "cf0ec9b2-9d62-4940-aa5c-aeb5598d4206",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -112,
                "y": -216
              }
            },
            {
              "id": "159f86de-af0f-4f1a-9a93-7e8149d5d322",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -624,
                "y": -192
              }
            },
            {
              "id": "eae23d49-1710-4ffb-9162-8c4238e16af9",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": -480,
                "y": -192
              }
            },
            {
              "id": "95c3db7f-827e-4950-8a74-ed4c855b1e80",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -112,
                "y": -144
              }
            },
            {
              "id": "7a94a774-819e-4796-ad92-2b9f0a06e828",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -112,
                "y": -8
              }
            },
            {
              "id": "35ac40b6-de26-493f-b22e-d15895042a60",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -128,
                "y": 72
              }
            },
            {
              "id": "0a9a6e73-6cc8-4c03-a8e3-02baed79e67d",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 576,
                "y": 120
              }
            },
            {
              "id": "82805ecd-07a6-4b5f-bc65-20e6fd0879a8",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -560,
                "y": 152
              }
            },
            {
              "id": "fdb3de4d-1a1f-420d-83f5-652d30cd8ca3",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -128,
                "y": 248
              }
            },
            {
              "id": "719d7e53-bdb2-40e8-8bed-c86a12749e88",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -128,
                "y": 312
              }
            },
            {
              "id": "f071a293-16e9-4c8b-8494-14b7f15033a3",
              "type": "5c75f6e4f841e85f7c34d83b9cc081ef669dd12d",
              "position": {
                "x": 48,
                "y": 352
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "03291097-00e3-48db-9044-3c73ed88eeb8",
              "type": "5c75f6e4f841e85f7c34d83b9cc081ef669dd12d",
              "position": {
                "x": 40,
                "y": 104
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "d0c1a36f-1bb8-46af-a2f8-088defad2415",
              "type": "5c75f6e4f841e85f7c34d83b9cc081ef669dd12d",
              "position": {
                "x": 48,
                "y": -152
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "38c47da2-210c-4319-af47-1d97393e2fcd",
              "type": "eed20e592c9f28c20d4231538c5ea383da2fbe4e",
              "position": {
                "x": -400,
                "y": 136
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "e49629b6-6e46-4ac9-9f34-8e03bc1a1b0d",
              "type": "aa90c2a63a74522e50fe6225d39948632fad9c04",
              "position": {
                "x": 392,
                "y": 104
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6",
                "port": "out"
              },
              "target": {
                "block": "0a772657-8018-424d-8f04-75d3ffff3692",
                "port": "inlabel"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "159f86de-af0f-4f1a-9a93-7e8149d5d322",
                "port": "out"
              },
              "target": {
                "block": "eae23d49-1710-4ffb-9162-8c4238e16af9",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "7a94a774-819e-4796-ad92-2b9f0a06e828",
                "port": "outlabel"
              },
              "target": {
                "block": "03291097-00e3-48db-9044-3c73ed88eeb8",
                "port": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6"
              }
            },
            {
              "source": {
                "block": "35ac40b6-de26-493f-b22e-d15895042a60",
                "port": "outlabel"
              },
              "target": {
                "block": "03291097-00e3-48db-9044-3c73ed88eeb8",
                "port": "159f86de-af0f-4f1a-9a93-7e8149d5d322"
              },
              "vertices": [
                {
                  "x": 0,
                  "y": 112
                }
              ]
            },
            {
              "source": {
                "block": "719d7e53-bdb2-40e8-8bed-c86a12749e88",
                "port": "outlabel"
              },
              "target": {
                "block": "f071a293-16e9-4c8b-8494-14b7f15033a3",
                "port": "159f86de-af0f-4f1a-9a93-7e8149d5d322"
              },
              "vertices": [
                {
                  "x": -8,
                  "y": 376
                }
              ]
            },
            {
              "source": {
                "block": "fdb3de4d-1a1f-420d-83f5-652d30cd8ca3",
                "port": "outlabel"
              },
              "target": {
                "block": "f071a293-16e9-4c8b-8494-14b7f15033a3",
                "port": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6"
              }
            },
            {
              "source": {
                "block": "cf0ec9b2-9d62-4940-aa5c-aeb5598d4206",
                "port": "outlabel"
              },
              "target": {
                "block": "d0c1a36f-1bb8-46af-a2f8-088defad2415",
                "port": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6"
              }
            },
            {
              "source": {
                "block": "95c3db7f-827e-4950-8a74-ed4c855b1e80",
                "port": "outlabel"
              },
              "target": {
                "block": "d0c1a36f-1bb8-46af-a2f8-088defad2415",
                "port": "159f86de-af0f-4f1a-9a93-7e8149d5d322"
              }
            },
            {
              "source": {
                "block": "38c47da2-210c-4319-af47-1d97393e2fcd",
                "port": "d208fe80-3071-4ee1-89c9-ec12035b5c1e"
              },
              "target": {
                "block": "f071a293-16e9-4c8b-8494-14b7f15033a3",
                "port": "26833303-0a1a-4750-8546-b98e2fdfdd82"
              },
              "vertices": [
                {
                  "x": -272,
                  "y": 368
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "38c47da2-210c-4319-af47-1d97393e2fcd",
                "port": "9a0bd20b-0206-4f0e-b07d-e96696b705c5"
              },
              "target": {
                "block": "03291097-00e3-48db-9044-3c73ed88eeb8",
                "port": "26833303-0a1a-4750-8546-b98e2fdfdd82"
              },
              "size": 4
            },
            {
              "source": {
                "block": "38c47da2-210c-4319-af47-1d97393e2fcd",
                "port": "c27cfcab-23e4-450b-9d80-643c1f36a5df"
              },
              "target": {
                "block": "d0c1a36f-1bb8-46af-a2f8-088defad2415",
                "port": "26833303-0a1a-4750-8546-b98e2fdfdd82"
              },
              "vertices": [
                {
                  "x": -160,
                  "y": -16
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "f071a293-16e9-4c8b-8494-14b7f15033a3",
                "port": "571d3fa4-680d-4422-92c6-b3b1dcd4fa8b"
              },
              "target": {
                "block": "e49629b6-6e46-4ac9-9f34-8e03bc1a1b0d",
                "port": "463c185e-9c10-45d2-b6de-312e81e5dbe1"
              },
              "size": 4
            },
            {
              "source": {
                "block": "03291097-00e3-48db-9044-3c73ed88eeb8",
                "port": "571d3fa4-680d-4422-92c6-b3b1dcd4fa8b"
              },
              "target": {
                "block": "e49629b6-6e46-4ac9-9f34-8e03bc1a1b0d",
                "port": "54df6487-c28e-4651-bd86-4d78d64ccf4e"
              },
              "size": 4
            },
            {
              "source": {
                "block": "d0c1a36f-1bb8-46af-a2f8-088defad2415",
                "port": "571d3fa4-680d-4422-92c6-b3b1dcd4fa8b"
              },
              "target": {
                "block": "e49629b6-6e46-4ac9-9f34-8e03bc1a1b0d",
                "port": "10111865-00c6-4ec7-92ab-9514ac16bf8f"
              },
              "vertices": [
                {
                  "x": 208,
                  "y": 24
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "82805ecd-07a6-4b5f-bc65-20e6fd0879a8",
                "port": "out"
              },
              "target": {
                "block": "38c47da2-210c-4319-af47-1d97393e2fcd",
                "port": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0"
              },
              "size": 12
            },
            {
              "source": {
                "block": "e49629b6-6e46-4ac9-9f34-8e03bc1a1b0d",
                "port": "a0fb5a1e-b4ae-46f6-8d7c-3b8e19f6f18b"
              },
              "target": {
                "block": "0a9a6e73-6cc8-4c03-a8e3-02baed79e67d",
                "port": "in"
              },
              "size": 12
            }
          ]
        }
      }
    },
    "5c75f6e4f841e85f7c34d83b9cc081ef669dd12d": {
      "package": {
        "name": "DFF-rst-x04",
        "version": "0.1",
        "description": "DFF-rst-x04: Three D flip-flops in paralell with reset",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22252.294%22%20height=%22220.368%22%20viewBox=%220%200%2066.75283%2058.305748%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M25.682%2041.088L39.29%2057.76l-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M18.298%2033.024L9.066%2013.41l-6.45%203.724-2.07-3.583%2020.905-12.07%202.069%203.584-6.092%203.517%2012.03%2018.223s5.399-2.025%208.535.74c3.137%202.766%202.52%204.92%202.887%204.773L17.192%2045.956s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M42.022%2040.152l13.607%2016.672-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M34.638%2032.088l-9.232-19.613-6.451%203.724-2.07-3.583L37.792.546%2039.86%204.13l-6.093%203.517%2012.03%2018.223s5.4-2.025%208.536.74c3.137%202.766%202.52%204.92%202.887%204.772L33.532%2045.02s-2.848-3.695-2.16-6.795c.688-3.1%203.266-6.137%203.266-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Cg%20transform=%22translate(-38.356%20-17.732)%22%3E%3Crect%20width=%2224.412%22%20height=%2213.185%22%20x=%2280.3%22%20y=%2221.375%22%20ry=%222.247%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%22.794%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:1.25%22%20x=%2282.245%22%20y=%2230.943%22%20font-weight=%22400%22%20font-size=%2210.583%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20x=%2282.245%22%20y=%2230.943%22%20font-weight=%22700%22%3ESys%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618509859237
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "7a94a774-819e-4796-ad92-2b9f0a06e828",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -160,
                "y": -336
              }
            },
            {
              "id": "35ac40b6-de26-493f-b22e-d15895042a60",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -168,
                "y": -280
              }
            },
            {
              "id": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -496,
                "y": -256
              }
            },
            {
              "id": "0a772657-8018-424d-8f04-75d3ffff3692",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "pins": [
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": -344,
                "y": -256
              }
            },
            {
              "id": "fdb3de4d-1a1f-420d-83f5-652d30cd8ca3",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 112,
                "y": -200
              }
            },
            {
              "id": "159f86de-af0f-4f1a-9a93-7e8149d5d322",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -488,
                "y": -184
              }
            },
            {
              "id": "eae23d49-1710-4ffb-9162-8c4238e16af9",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": -344,
                "y": -184
              }
            },
            {
              "id": "719d7e53-bdb2-40e8-8bed-c86a12749e88",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 112,
                "y": -112
              }
            },
            {
              "id": "b9359b10-b14f-4dd7-adf9-3f4f22bc65e6",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 376,
                "y": -8
              }
            },
            {
              "id": "ff33bbea-7f70-4f0f-b74d-6bcb9f41d0ba",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 376,
                "y": 80
              }
            },
            {
              "id": "571d3fa4-680d-4422-92c6-b3b1dcd4fa8b",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 1032,
                "y": 184
              }
            },
            {
              "id": "7f915e41-616b-42d0-b6b3-93e8312f9091",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 528,
                "y": 208
              }
            },
            {
              "id": "26833303-0a1a-4750-8546-b98e2fdfdd82",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -336,
                "y": 224
              }
            },
            {
              "id": "a47f4645-6751-4e16-8293-52d8f8cfc9f1",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "rst",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 520,
                "y": 264
              }
            },
            {
              "id": "48335216-c02f-4e23-8a04-e3d4eaa032ab",
              "type": "c4f23ad05c2010ec9bd213c8814c9238873037ae",
              "position": {
                "x": -168,
                "y": 192
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "ac2e4720-4af2-481e-9d20-d935321e31f2",
              "type": "84f0a15761ee8b753f67079819a7614923939472",
              "position": {
                "x": 848,
                "y": 152
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "0f69a2a7-39f9-4ed1-be11-0e7ee877a076",
              "type": "2be0f80ece8db75007def664695ef5f257f88b99",
              "position": {
                "x": 672,
                "y": 264
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "795fee35-1b0d-4780-afe4-25451dc8b7b3",
              "type": "2be0f80ece8db75007def664695ef5f257f88b99",
              "position": {
                "x": 520,
                "y": 64
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "ef954a48-69f2-4704-9719-698826029980",
              "type": "2be0f80ece8db75007def664695ef5f257f88b99",
              "position": {
                "x": 272,
                "y": -128
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "e76b0273-be54-4e06-ab90-45b1a08d31e4",
              "type": "2be0f80ece8db75007def664695ef5f257f88b99",
              "position": {
                "x": -16,
                "y": -296
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ca7c5f10-efb6-43f9-9364-52d751fc0bc6",
                "port": "out"
              },
              "target": {
                "block": "0a772657-8018-424d-8f04-75d3ffff3692",
                "port": "inlabel"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "b9359b10-b14f-4dd7-adf9-3f4f22bc65e6",
                "port": "outlabel"
              },
              "target": {
                "block": "795fee35-1b0d-4780-afe4-25451dc8b7b3",
                "port": "e5f6cfba-f822-4d53-a924-926407bc4e3f"
              }
            },
            {
              "source": {
                "block": "7f915e41-616b-42d0-b6b3-93e8312f9091",
                "port": "outlabel"
              },
              "target": {
                "block": "0f69a2a7-39f9-4ed1-be11-0e7ee877a076",
                "port": "e5f6cfba-f822-4d53-a924-926407bc4e3f"
              }
            },
            {
              "source": {
                "block": "159f86de-af0f-4f1a-9a93-7e8149d5d322",
                "port": "out"
              },
              "target": {
                "block": "eae23d49-1710-4ffb-9162-8c4238e16af9",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "ff33bbea-7f70-4f0f-b74d-6bcb9f41d0ba",
                "port": "outlabel"
              },
              "target": {
                "block": "795fee35-1b0d-4780-afe4-25451dc8b7b3",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "a47f4645-6751-4e16-8293-52d8f8cfc9f1",
                "port": "outlabel"
              },
              "target": {
                "block": "0f69a2a7-39f9-4ed1-be11-0e7ee877a076",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "719d7e53-bdb2-40e8-8bed-c86a12749e88",
                "port": "outlabel"
              },
              "target": {
                "block": "ef954a48-69f2-4704-9719-698826029980",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "fdb3de4d-1a1f-420d-83f5-652d30cd8ca3",
                "port": "outlabel"
              },
              "target": {
                "block": "ef954a48-69f2-4704-9719-698826029980",
                "port": "e5f6cfba-f822-4d53-a924-926407bc4e3f"
              }
            },
            {
              "source": {
                "block": "7a94a774-819e-4796-ad92-2b9f0a06e828",
                "port": "outlabel"
              },
              "target": {
                "block": "e76b0273-be54-4e06-ab90-45b1a08d31e4",
                "port": "e5f6cfba-f822-4d53-a924-926407bc4e3f"
              }
            },
            {
              "source": {
                "block": "35ac40b6-de26-493f-b22e-d15895042a60",
                "port": "outlabel"
              },
              "target": {
                "block": "e76b0273-be54-4e06-ab90-45b1a08d31e4",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "0f69a2a7-39f9-4ed1-be11-0e7ee877a076",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "ac2e4720-4af2-481e-9d20-d935321e31f2",
                "port": "e4111201-8441-4e7d-bcd2-bcf9d265d043"
              }
            },
            {
              "source": {
                "block": "795fee35-1b0d-4780-afe4-25451dc8b7b3",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "ac2e4720-4af2-481e-9d20-d935321e31f2",
                "port": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8"
              },
              "vertices": [
                {
                  "x": 712,
                  "y": 128
                }
              ]
            },
            {
              "source": {
                "block": "48335216-c02f-4e23-8a04-e3d4eaa032ab",
                "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
              },
              "target": {
                "block": "795fee35-1b0d-4780-afe4-25451dc8b7b3",
                "port": "0da42cdc-7d03-494b-acec-9b2095f8d663"
              }
            },
            {
              "source": {
                "block": "48335216-c02f-4e23-8a04-e3d4eaa032ab",
                "port": "0f7487e5-b070-4277-bba6-acf69934afca"
              },
              "target": {
                "block": "0f69a2a7-39f9-4ed1-be11-0e7ee877a076",
                "port": "0da42cdc-7d03-494b-acec-9b2095f8d663"
              },
              "vertices": [
                {
                  "x": -48,
                  "y": 312
                }
              ]
            },
            {
              "source": {
                "block": "48335216-c02f-4e23-8a04-e3d4eaa032ab",
                "port": "33072210-9ba0-4659-8339-95952b939e6e"
              },
              "target": {
                "block": "ef954a48-69f2-4704-9719-698826029980",
                "port": "0da42cdc-7d03-494b-acec-9b2095f8d663"
              }
            },
            {
              "source": {
                "block": "ef954a48-69f2-4704-9719-698826029980",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "ac2e4720-4af2-481e-9d20-d935321e31f2",
                "port": "346b4ae4-4bb6-4845-9c17-3b25e0dde718"
              },
              "vertices": [
                {
                  "x": 768,
                  "y": 72
                }
              ]
            },
            {
              "source": {
                "block": "26833303-0a1a-4750-8546-b98e2fdfdd82",
                "port": "out"
              },
              "target": {
                "block": "48335216-c02f-4e23-8a04-e3d4eaa032ab",
                "port": "0ebd46a4-769b-45e6-bcaf-e3796264aed3"
              },
              "size": 4
            },
            {
              "source": {
                "block": "ac2e4720-4af2-481e-9d20-d935321e31f2",
                "port": "55180947-6349-4a04-a151-ad69ea2b155e"
              },
              "target": {
                "block": "571d3fa4-680d-4422-92c6-b3b1dcd4fa8b",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "48335216-c02f-4e23-8a04-e3d4eaa032ab",
                "port": "bbe1895b-be8b-4237-b0d1-ae592e3e6208"
              },
              "target": {
                "block": "e76b0273-be54-4e06-ab90-45b1a08d31e4",
                "port": "0da42cdc-7d03-494b-acec-9b2095f8d663"
              }
            },
            {
              "source": {
                "block": "e76b0273-be54-4e06-ab90-45b1a08d31e4",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "ac2e4720-4af2-481e-9d20-d935321e31f2",
                "port": "6c2aa548-5a4c-4e8d-a56c-a70926b19f18"
              }
            }
          ]
        }
      }
    },
    "c4f23ad05c2010ec9bd213c8814c9238873037ae": {
      "package": {
        "name": "Bus4-Split-all",
        "version": "0.1",
        "description": "Bus4-Split-all: Split the 4-bits bus into its wires",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "bbe1895b-be8b-4237-b0d1-ae592e3e6208",
              "type": "basic.output",
              "data": {
                "name": "3"
              },
              "position": {
                "x": 576,
                "y": 80
              }
            },
            {
              "id": "33072210-9ba0-4659-8339-95952b939e6e",
              "type": "basic.output",
              "data": {
                "name": "2"
              },
              "position": {
                "x": 600,
                "y": 144
              }
            },
            {
              "id": "0ebd46a4-769b-45e6-bcaf-e3796264aed3",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 128,
                "y": 184
              }
            },
            {
              "id": "f5a71d7b-de20-4527-80c8-0eb20de0dc77",
              "type": "basic.output",
              "data": {
                "name": "1"
              },
              "position": {
                "x": 592,
                "y": 240
              }
            },
            {
              "id": "0f7487e5-b070-4277-bba6-acf69934afca",
              "type": "basic.output",
              "data": {
                "name": "0"
              },
              "position": {
                "x": 568,
                "y": 296
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o3 = i[3];\nassign o2 = i[2];\nassign o1 = i[1];\nassign o0 = i[0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "o3"
                    },
                    {
                      "name": "o2"
                    },
                    {
                      "name": "o1"
                    },
                    {
                      "name": "o0"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 208,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o1"
              },
              "target": {
                "block": "f5a71d7b-de20-4527-80c8-0eb20de0dc77",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o0"
              },
              "target": {
                "block": "0f7487e5-b070-4277-bba6-acf69934afca",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o2"
              },
              "target": {
                "block": "33072210-9ba0-4659-8339-95952b939e6e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o3"
              },
              "target": {
                "block": "bbe1895b-be8b-4237-b0d1-ae592e3e6208",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "0ebd46a4-769b-45e6-bcaf-e3796264aed3",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "84f0a15761ee8b753f67079819a7614923939472": {
      "package": {
        "name": "Bus4-Join-all",
        "version": "0.1",
        "description": "Bus4-Join-all: Join all the wires into a 4-bits Bus",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M164.218%2077.643L103.07%2016.705C92.386%206.25%2078.036.461%2063.11.5H.5v26.186l61.698.046c8.012-.043%2015.705%203.133%2021.47%208.81l61.448%2061.315a57.292%2057.292%200%200%200%2039.993%2016.139%2057.292%2057.292%200%200%200-39.993%2016.14L83.668%20190.45c-5.765%205.677-13.458%208.853-21.47%208.81L.5%20199.306v26.186h62.612c14.924.039%2029.463-5.9%2040.204-16.28l60.902-60.863a29.857%2029.857%200%200%201%2021.347-8.81l146.53-.113V86.457H185.571a29.884%2029.884%200%200%201-21.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6c2aa548-5a4c-4e8d-a56c-a70926b19f18",
              "type": "basic.input",
              "data": {
                "name": "3",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 64
              }
            },
            {
              "id": "346b4ae4-4bb6-4845-9c17-3b25e0dde718",
              "type": "basic.input",
              "data": {
                "name": "2",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 136
              }
            },
            {
              "id": "55180947-6349-4a04-a151-ad69ea2b155e",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 712,
                "y": 200
              }
            },
            {
              "id": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
              "type": "basic.input",
              "data": {
                "name": "1",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 208
              }
            },
            {
              "id": "e4111201-8441-4e7d-bcd2-bcf9d265d043",
              "type": "basic.input",
              "data": {
                "name": "0",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 272
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i3, i2, i1, i0};\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i3"
                    },
                    {
                      "name": "i2"
                    },
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 344,
                "height": 104
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i1"
              }
            },
            {
              "source": {
                "block": "e4111201-8441-4e7d-bcd2-bcf9d265d043",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "346b4ae4-4bb6-4845-9c17-3b25e0dde718",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i2"
              },
              "vertices": [
                {
                  "x": 200,
                  "y": 176
                }
              ]
            },
            {
              "source": {
                "block": "6c2aa548-5a4c-4e8d-a56c-a70926b19f18",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i3"
              },
              "vertices": [
                {
                  "x": 224,
                  "y": 128
                }
              ]
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o"
              },
              "target": {
                "block": "55180947-6349-4a04-a151-ad69ea2b155e",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "2be0f80ece8db75007def664695ef5f257f88b99": {
      "package": {
        "name": "DFF-rst-x01",
        "version": "0.2",
        "description": "DFF-rst-x01: D Flip flop with reset input. When rst=1, the DFF is 0",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22196.313%22%20height=%22216.83%22%20viewBox=%220%200%2051.941051%2057.369679%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20transform=%22translate(-52.22%20-48.028)%22%3E%3Crect%20width=%2224.412%22%20height=%2213.185%22%20x=%2279.352%22%20y=%2253.67%22%20ry=%222.247%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%22.794%22%20stroke-linecap=%22round%22/%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M77.902%2088.18l13.607%2016.672-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M70.517%2080.116l-9.232-19.613-6.45%203.725-2.07-3.584%2020.905-12.07%202.07%203.584-6.093%203.518%2012.03%2018.222s5.4-2.025%208.536.74c3.136%202.766%202.52%204.92%202.887%204.773L69.412%2093.049s-2.848-3.696-2.16-6.796c.687-3.1%203.265-6.137%203.265-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Ctext%20style=%22line-height:1.25%22%20x=%2281.296%22%20y=%2263.239%22%20font-weight=%22400%22%20font-size=%2210.583%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20x=%2281.296%22%20y=%2263.239%22%20font-weight=%22700%22%3ESys%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E",
        "otid": 1617895961660
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e5f6cfba-f822-4d53-a924-926407bc4e3f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 200,
                "y": -264
              }
            },
            {
              "id": "4b0bae4c-c796-429c-ac44-785afc2f4c89",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "pins": [
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": 352,
                "y": -264
              }
            },
            {
              "id": "4caec7c8-0763-44fc-9b7b-110e0260b74b",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "yellow",
                "name": "clk",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 584,
                "y": -128
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 856,
                "y": -56
              }
            },
            {
              "id": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": -56
              }
            },
            {
              "id": "0da42cdc-7d03-494b-acec-9b2095f8d663",
              "type": "basic.input",
              "data": {
                "name": "d",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 80
              }
            },
            {
              "id": "63e9825a-4f37-4c3c-b118-e2bbd28d5ac7",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 712,
                "y": -160
              }
            },
            {
              "id": "3238f8fb-ade5-4d95-a02d-692defd900d6",
              "type": "basic.info",
              "data": {
                "info": "Reset input: Active high  \nWhen rst = 1, the DFF is reset to 0",
                "readonly": true
              },
              "position": {
                "x": 184,
                "y": -120
              },
              "size": {
                "width": 272,
                "height": 48
              }
            },
            {
              "id": "4d2e11c4-2f46-4c0a-9d1a-b641b417d495",
              "type": "3676a00f3a70e406487ed14b901daf3e4984e63d",
              "position": {
                "x": 360,
                "y": -56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "c5b4454d-c8bc-420b-b7b6-ad21ca8304e0",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 536,
                "y": -40
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ca985673-a11d-42a0-926c-d564fe02b723",
              "type": "basic.info",
              "data": {
                "info": "Data input",
                "readonly": true
              },
              "position": {
                "x": 216,
                "y": 56
              },
              "size": {
                "width": 104,
                "height": 40
              }
            },
            {
              "id": "f36afb1b-0486-4fcf-98ad-a8b6d64ab550",
              "type": "basic.info",
              "data": {
                "info": "System clock",
                "readonly": true
              },
              "position": {
                "x": 208,
                "y": -304
              },
              "size": {
                "width": 144,
                "height": 40
              }
            },
            {
              "id": "9833aab1-3c8e-40a6-859b-ce1960837256",
              "type": "basic.info",
              "data": {
                "info": "Initial default  \nvalue: 0",
                "readonly": true
              },
              "position": {
                "x": 720,
                "y": -200
              },
              "size": {
                "width": 152,
                "height": 64
              }
            },
            {
              "id": "9abbb3b1-2218-4aa2-bb22-add4c00ec265",
              "type": "053dc2e26797e60dd454402e395eb23f388681b9",
              "position": {
                "x": 712,
                "y": -56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e5f6cfba-f822-4d53-a924-926407bc4e3f",
                "port": "out"
              },
              "target": {
                "block": "4b0bae4c-c796-429c-ac44-785afc2f4c89",
                "port": "inlabel"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "4caec7c8-0763-44fc-9b7b-110e0260b74b",
                "port": "outlabel"
              },
              "target": {
                "block": "9abbb3b1-2218-4aa2-bb22-add4c00ec265",
                "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
              }
            },
            {
              "source": {
                "block": "c5b4454d-c8bc-420b-b7b6-ad21ca8304e0",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "9abbb3b1-2218-4aa2-bb22-add4c00ec265",
                "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "4d2e11c4-2f46-4c0a-9d1a-b641b417d495",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "c5b4454d-c8bc-420b-b7b6-ad21ca8304e0",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
                "port": "out"
              },
              "target": {
                "block": "4d2e11c4-2f46-4c0a-9d1a-b641b417d495",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "0da42cdc-7d03-494b-acec-9b2095f8d663",
                "port": "out"
              },
              "target": {
                "block": "c5b4454d-c8bc-420b-b7b6-ad21ca8304e0",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "9abbb3b1-2218-4aa2-bb22-add4c00ec265",
                "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "63e9825a-4f37-4c3c-b118-e2bbd28d5ac7",
                "port": "constant-out"
              },
              "target": {
                "block": "9abbb3b1-2218-4aa2-bb22-add4c00ec265",
                "port": "65194b18-5d2a-41b2-bd86-01be99978ad6"
              }
            }
          ]
        }
      }
    },
    "3676a00f3a70e406487ed14b901daf3e4984e63d": {
      "package": {
        "name": "NOT",
        "version": "2.0",
        "description": "NOT gate (Verilog implementation)",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 112,
                "y": 72
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 72
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- NOT Gate\nassign q = ~a;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 256,
                "height": 104
              }
            },
            {
              "id": "e3bb41e3-1944-4946-9675-c2dbe2e49fcf",
              "type": "basic.info",
              "data": {
                "info": "Input",
                "readonly": true
              },
              "position": {
                "x": 128,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 40
              }
            },
            {
              "id": "8408dd5f-945f-4a89-9790-7752813d4e91",
              "type": "basic.info",
              "data": {
                "info": "Output",
                "readonly": true
              },
              "position": {
                "x": 576,
                "y": 40
              },
              "size": {
                "width": 80,
                "height": 40
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "q"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0": {
      "package": {
        "name": "AND2",
        "version": "1.0.2",
        "description": "Two bits input And gate",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018m184.632-50.034h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 96,
                "y": 56
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 600,
                "y": 96
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 96,
                "y": 128
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- AND gate\n//-- Verilog implementation\n\nassign c = a & b;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 304,
                "height": 152
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "053dc2e26797e60dd454402e395eb23f388681b9": {
      "package": {
        "name": "DFF",
        "version": "2.0",
        "description": "D Flip-flop (verilog implementation)",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22196.313%22%20height=%22216.83%22%20viewBox=%220%200%2051.941051%2057.369679%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20transform=%22translate(-52.22%20-48.028)%22%3E%3Crect%20width=%2224.412%22%20height=%2213.185%22%20x=%2279.352%22%20y=%2253.67%22%20ry=%222.247%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%22.794%22%20stroke-linecap=%22round%22/%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M77.902%2088.18l13.607%2016.672-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M70.517%2080.116l-9.232-19.613-6.45%203.725-2.07-3.584%2020.905-12.07%202.07%203.584-6.093%203.518%2012.03%2018.222s5.4-2.025%208.536.74c3.136%202.766%202.52%204.92%202.887%204.773L69.412%2093.049s-2.848-3.696-2.16-6.796c.687-3.1%203.265-6.137%203.265-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Ctext%20style=%22line-height:1.25%22%20x=%2281.296%22%20y=%2263.239%22%20font-weight=%22400%22%20font-size=%2210.583%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20x=%2281.296%22%20y=%2263.239%22%20font-weight=%22700%22%3ESys%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3943e194-090b-4553-9df3-88bc4b17abc2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 208,
                "y": 160
              }
            },
            {
              "id": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 816,
                "y": 224
              }
            },
            {
              "id": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 208,
                "y": 304
              }
            },
            {
              "id": "65194b18-5d2a-41b2-bd86-01be99978ad6",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 512,
                "y": 64
              }
            },
            {
              "id": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
              "type": "basic.code",
              "data": {
                "code": "//-- Initial value\nreg q = INI;\n\n//-- Capture the input data  \n//-- on the rising edge of  \n//-- the system clock\nalways @(posedge clk)\n  q <= d;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 384,
                "y": 168
              },
              "size": {
                "width": 344,
                "height": 176
              }
            },
            {
              "id": "53d11290-50b3-40fb-b253-222cb296b075",
              "type": "basic.info",
              "data": {
                "info": "Parameter: Initial value",
                "readonly": true
              },
              "position": {
                "x": 488,
                "y": 48
              },
              "size": {
                "width": 208,
                "height": 40
              }
            },
            {
              "id": "c25a29cd-d5ed-435e-b375-e6d5557660d8",
              "type": "basic.info",
              "data": {
                "info": "System clock",
                "readonly": true
              },
              "position": {
                "x": 208,
                "y": 136
              },
              "size": {
                "width": 120,
                "height": 32
              }
            },
            {
              "id": "ecafc6fa-330b-4ba7-aa67-40b3ea48f1f1",
              "type": "basic.info",
              "data": {
                "info": "Input data",
                "readonly": true
              },
              "position": {
                "x": 224,
                "y": 280
              },
              "size": {
                "width": 112,
                "height": 40
              }
            },
            {
              "id": "df95c331-682d-4733-a62d-ad9fcd75f96a",
              "type": "basic.info",
              "data": {
                "info": "Output",
                "readonly": true
              },
              "position": {
                "x": 840,
                "y": 200
              },
              "size": {
                "width": 80,
                "height": 40
              }
            },
            {
              "id": "dd8217df-b56d-49a9-ae94-f5e0c96e1460",
              "type": "basic.info",
              "data": {
                "info": "# D Flip-Flop  \n\nIt stores the input data that arrives at cycle n  \nIts output is shown in the cycle n+1",
                "readonly": true
              },
              "position": {
                "x": 144,
                "y": -136
              },
              "size": {
                "width": 488,
                "height": 104
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3943e194-090b-4553-9df3-88bc4b17abc2",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "q"
              },
              "target": {
                "block": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "65194b18-5d2a-41b2-bd86-01be99978ad6",
                "port": "constant-out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "INI"
              }
            },
            {
              "source": {
                "block": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "d"
              }
            }
          ]
        }
      }
    },
    "eed20e592c9f28c20d4231538c5ea383da2fbe4e": {
      "package": {
        "name": "Bus12-Split-one-third",
        "version": "0.1",
        "description": "Bus12-Split-one-third: Split the 12-bits bus into three buses of equal size",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c27cfcab-23e4-450b-9d80-643c1f36a5df",
              "type": "basic.output",
              "data": {
                "name": "2",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 512,
                "y": -64
              }
            },
            {
              "id": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
              "type": "basic.output",
              "data": {
                "name": "1",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 520,
                "y": 64
              }
            },
            {
              "id": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -32,
                "y": 64
              }
            },
            {
              "id": "d208fe80-3071-4ee1-89c9-ec12035b5c1e",
              "type": "basic.output",
              "data": {
                "name": "0",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 504,
                "y": 160
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "\nassign o2 = i[11:8];\nassign o1 = i[7:4];\nassign o0 = i[3:0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ],
                  "out": [
                    {
                      "name": "o2",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "o1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "o0",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 136,
                "y": 0
              },
              "size": {
                "width": 280,
                "height": 184
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              },
              "size": 12
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o2"
              },
              "target": {
                "block": "c27cfcab-23e4-450b-9d80-643c1f36a5df",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o1"
              },
              "target": {
                "block": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o0"
              },
              "target": {
                "block": "d208fe80-3071-4ee1-89c9-ec12035b5c1e",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "aa90c2a63a74522e50fe6225d39948632fad9c04": {
      "package": {
        "name": "Bus12-Join-one-third",
        "version": "0.1",
        "description": "Bus12-Join-one-third: Join the three buses into an 12-bits Bus",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M164.218%2077.643L103.07%2016.705C92.386%206.25%2078.036.461%2063.11.5H.5v26.186l61.698.046c8.012-.043%2015.705%203.133%2021.47%208.81l61.448%2061.315a57.292%2057.292%200%200%200%2039.993%2016.139%2057.292%2057.292%200%200%200-39.993%2016.14L83.668%20190.45c-5.765%205.677-13.458%208.853-21.47%208.81L.5%20199.306v26.186h62.612c14.924.039%2029.463-5.9%2040.204-16.28l60.902-60.863a29.857%2029.857%200%200%201%2021.347-8.81l146.53-.113V86.457H185.571a29.884%2029.884%200%200%201-21.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "10111865-00c6-4ec7-92ab-9514ac16bf8f",
              "type": "basic.input",
              "data": {
                "name": "2",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 128,
                "y": 136
              }
            },
            {
              "id": "54df6487-c28e-4651-bd86-4d78d64ccf4e",
              "type": "basic.input",
              "data": {
                "name": "1",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 128,
                "y": 232
              }
            },
            {
              "id": "a0fb5a1e-b4ae-46f6-8d7c-3b8e19f6f18b",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 648,
                "y": 232
              }
            },
            {
              "id": "463c185e-9c10-45d2-b6de-312e81e5dbe1",
              "type": "basic.input",
              "data": {
                "name": "0",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 128,
                "y": 320
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i2, i1, i0};\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i2",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i0",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 280,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o"
              },
              "target": {
                "block": "a0fb5a1e-b4ae-46f6-8d7c-3b8e19f6f18b",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "463c185e-9c10-45d2-b6de-312e81e5dbe1",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i0"
              },
              "size": 4
            },
            {
              "source": {
                "block": "54df6487-c28e-4651-bd86-4d78d64ccf4e",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i1"
              },
              "size": 4
            },
            {
              "source": {
                "block": "10111865-00c6-4ec7-92ab-9514ac16bf8f",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i2"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "13510113faa8170f481c2180b50dad4a69ce8f90": {
      "package": {
        "name": "Inc1-12bits",
        "version": "0.1",
        "description": "Inc1-12bit: Increment a 12-bits number by one",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22387.891%22%20height=%22310.09%22%20viewBox=%220%200%20363.64764%20290.70999%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.759%2055.834v79.813h79.508v35.946H115.76v79.813h-36.25v-79.813H-.002v-35.946h79.51V55.834z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3Cpath%20d=%22M196.193%20257.608h64.256V35.828l-69.902%2014.02V14.018L260.06%200h39.332v257.608h64.257v33.102H196.193z%22%20style=%22line-height:1.25%22%20font-size=%22398.777%22%20stroke-width=%229.969%22/%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 624,
                "y": -168
              }
            },
            {
              "id": "eeb62710-30aa-41b8-ac43-e96d6d8116cc",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 280,
                "y": -152
              }
            },
            {
              "id": "9dadbde1-2747-4b23-afc9-300b6371d65f",
              "type": "basic.output",
              "data": {
                "name": "s",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 624,
                "y": -96
              }
            },
            {
              "id": "cd0d6f4d-9898-4114-94a9-0b4b98223c27",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": true
              },
              "position": {
                "x": 456,
                "y": -256
              }
            },
            {
              "id": "06c63b1e-3d61-492d-9dc0-7ca29233aa7a",
              "type": "ab5c5a5df9374bf15f493afaf048b4e11be6516d",
              "position": {
                "x": 456,
                "y": -152
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "06c63b1e-3d61-492d-9dc0-7ca29233aa7a",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "cd0d6f4d-9898-4114-94a9-0b4b98223c27",
                "port": "constant-out"
              },
              "target": {
                "block": "06c63b1e-3d61-492d-9dc0-7ca29233aa7a",
                "port": "e728fdca-755f-4f2d-98e7-0716b1c5258f"
              }
            },
            {
              "source": {
                "block": "eeb62710-30aa-41b8-ac43-e96d6d8116cc",
                "port": "out"
              },
              "target": {
                "block": "06c63b1e-3d61-492d-9dc0-7ca29233aa7a",
                "port": "e4395e0a-8d30-4168-be64-cd6b5153d781"
              },
              "size": 12
            },
            {
              "source": {
                "block": "06c63b1e-3d61-492d-9dc0-7ca29233aa7a",
                "port": "05fbc3ed-bf3a-40dd-9405-5d8371ffa271"
              },
              "target": {
                "block": "9dadbde1-2747-4b23-afc9-300b6371d65f",
                "port": "in"
              },
              "size": 12
            }
          ]
        }
      }
    },
    "ab5c5a5df9374bf15f493afaf048b4e11be6516d": {
      "package": {
        "name": "AdderK-12bits",
        "version": "0.1",
        "description": "AdderK-12bit: Adder of 12-bit operand and 12-bit constant",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.76%200v79.813h79.508v35.946h-79.509v79.813H79.51V115.76H0V79.813h79.508V0z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 624,
                "y": -168
              }
            },
            {
              "id": "e4395e0a-8d30-4168-be64-cd6b5153d781",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 232,
                "y": -80
              }
            },
            {
              "id": "05fbc3ed-bf3a-40dd-9405-5d8371ffa271",
              "type": "basic.output",
              "data": {
                "name": "s",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 624,
                "y": -80
              }
            },
            {
              "id": "e728fdca-755f-4f2d-98e7-0716b1c5258f",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 232,
                "y": -272
              }
            },
            {
              "id": "91fc5f83-0018-4158-ae16-b0dae21a82c8",
              "type": "9447a6f9c9df58b8120a240e59e3560be68f1b11",
              "position": {
                "x": 456,
                "y": -152
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "be3b150d-d292-4e71-bd73-1625f5d978c7",
              "type": "20620a64fa65e6323382a880bc396bc67289e199",
              "position": {
                "x": 232,
                "y": -168
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "91fc5f83-0018-4158-ae16-b0dae21a82c8",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e728fdca-755f-4f2d-98e7-0716b1c5258f",
                "port": "constant-out"
              },
              "target": {
                "block": "be3b150d-d292-4e71-bd73-1625f5d978c7",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            },
            {
              "source": {
                "block": "be3b150d-d292-4e71-bd73-1625f5d978c7",
                "port": "94c83028-98cb-41ad-8727-da16997c19d5"
              },
              "target": {
                "block": "91fc5f83-0018-4158-ae16-b0dae21a82c8",
                "port": "c437179c-ef59-4bfb-abc6-f0ae0ef92860"
              },
              "size": 12
            },
            {
              "source": {
                "block": "e4395e0a-8d30-4168-be64-cd6b5153d781",
                "port": "out"
              },
              "target": {
                "block": "91fc5f83-0018-4158-ae16-b0dae21a82c8",
                "port": "0d9a6aef-b5a5-4ff2-9a98-c3140f6c0b7e"
              },
              "size": 12
            },
            {
              "source": {
                "block": "91fc5f83-0018-4158-ae16-b0dae21a82c8",
                "port": "b0c927b7-2c00-4b50-b12b-1933cbf3c3f7"
              },
              "target": {
                "block": "05fbc3ed-bf3a-40dd-9405-5d8371ffa271",
                "port": "in"
              },
              "size": 12
            }
          ]
        }
      }
    },
    "9447a6f9c9df58b8120a240e59e3560be68f1b11": {
      "package": {
        "name": "Adder-12bits",
        "version": "0.1",
        "description": "Adder-12bits: Adder of two operands of 12 bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.76%200v79.813h79.508v35.946h-79.509v79.813H79.51V115.76H0V79.813h79.508V0z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f9849861-32aa-433d-895d-079ce9529d81",
              "type": "basic.inputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -664
              }
            },
            {
              "id": "2053ae51-a9ab-495b-95f7-4ec8ca6fe2ba",
              "type": "basic.outputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "blockColor": "deeppink",
                "size": 4
              },
              "position": {
                "x": 352,
                "y": -664
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 960,
                "y": -608
              }
            },
            {
              "id": "c437179c-ef59-4bfb-abc6-f0ae0ef92860",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -328,
                "y": -608
              }
            },
            {
              "id": "6736a55c-7818-4da9-9c1a-f57200ad2526",
              "type": "basic.inputLabel",
              "data": {
                "name": "a0",
                "range": "[7:0]",
                "pins": [
                  {
                    "index": "7",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "6",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "5",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "4",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -592
              }
            },
            {
              "id": "de63a145-4ff3-4a23-af80-70f1fe8bbd9e",
              "type": "basic.outputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "blockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 352,
                "y": -584
              }
            },
            {
              "id": "b0c927b7-2c00-4b50-b12b-1933cbf3c3f7",
              "type": "basic.output",
              "data": {
                "name": "s",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 960,
                "y": -544
              }
            },
            {
              "id": "7d042e3c-08e0-4027-ba97-6f6143ac0b7e",
              "type": "basic.outputLabel",
              "data": {
                "name": "a0",
                "range": "[7:0]",
                "blockColor": "deeppink",
                "size": 8
              },
              "position": {
                "x": 184,
                "y": -472
              }
            },
            {
              "id": "41505dd0-b268-4480-b3be-2c8236beab73",
              "type": "basic.inputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 8,
                "y": -472
              }
            },
            {
              "id": "0d9a6aef-b5a5-4ff2-9a98-c3140f6c0b7e",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -328,
                "y": -424
              }
            },
            {
              "id": "a7cd6890-7130-4f25-9966-b5ca1132d597",
              "type": "basic.inputLabel",
              "data": {
                "name": "b0",
                "range": "[7:0]",
                "pins": [
                  {
                    "index": "7",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "6",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "5",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "4",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 8,
                "y": -408
              }
            },
            {
              "id": "7114cf32-af2c-438f-b816-1043a8bd819d",
              "type": "basic.outputLabel",
              "data": {
                "name": "b0",
                "range": "[7:0]",
                "blockColor": "fuchsia",
                "size": 8
              },
              "position": {
                "x": 184,
                "y": -408
              }
            },
            {
              "id": "64c3574b-3227-40ab-ab03-c2e2af710a45",
              "type": "cb23aa3d8a3e95bd194fd9ec9b9c40b36595d893",
              "position": {
                "x": 352,
                "y": -456
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "495a10e5-af0f-4900-8004-2903958491d3",
              "type": "c97ea62c7e57797474a81bca730a1b2bec259617",
              "position": {
                "x": -168,
                "y": -424
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "26a77ca6-3cd7-4e29-b010-b9707772449e",
              "type": "c97ea62c7e57797474a81bca730a1b2bec259617",
              "position": {
                "x": -168,
                "y": -608
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6cd077a8-9985-4727-b404-1c8d7c636cb3",
              "type": "a1ce303b8ce47a06371ea4641c81460f34a1cca9",
              "position": {
                "x": 520,
                "y": -600
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "4a8f5624-26b3-4c03-9f0c-ba25a58b0329",
              "type": "f8299bf4c4820bbb12d9616397182e64485e3442",
              "position": {
                "x": 760,
                "y": -544
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "495a10e5-af0f-4900-8004-2903958491d3",
                "port": "99e7399f-ce06-4f67-ae35-0b9a6785d60e",
                "size": 8
              },
              "target": {
                "block": "a7cd6890-7130-4f25-9966-b5ca1132d597",
                "port": "inlabel"
              },
              "size": 8
            },
            {
              "source": {
                "block": "26a77ca6-3cd7-4e29-b010-b9707772449e",
                "port": "99e7399f-ce06-4f67-ae35-0b9a6785d60e",
                "size": 8
              },
              "target": {
                "block": "6736a55c-7818-4da9-9c1a-f57200ad2526",
                "port": "inlabel"
              },
              "size": 8
            },
            {
              "source": {
                "block": "7114cf32-af2c-438f-b816-1043a8bd819d",
                "port": "outlabel"
              },
              "target": {
                "block": "64c3574b-3227-40ab-ab03-c2e2af710a45",
                "port": "63477487-9493-4058-a7e1-9bab443ec466",
                "size": 8
              },
              "size": 8
            },
            {
              "source": {
                "block": "7d042e3c-08e0-4027-ba97-6f6143ac0b7e",
                "port": "outlabel"
              },
              "target": {
                "block": "64c3574b-3227-40ab-ab03-c2e2af710a45",
                "port": "b4b08c4b-8eb1-4cd3-a1bf-a45bf7177ed3",
                "size": 8
              },
              "size": 8
            },
            {
              "source": {
                "block": "495a10e5-af0f-4900-8004-2903958491d3",
                "port": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
                "size": 4
              },
              "target": {
                "block": "41505dd0-b268-4480-b3be-2c8236beab73",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "26a77ca6-3cd7-4e29-b010-b9707772449e",
                "port": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
                "size": 4
              },
              "target": {
                "block": "f9849861-32aa-433d-895d-079ce9529d81",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "de63a145-4ff3-4a23-af80-70f1fe8bbd9e",
                "port": "outlabel"
              },
              "target": {
                "block": "6cd077a8-9985-4727-b404-1c8d7c636cb3",
                "port": "d192d0af-e7be-4be6-925a-50227d80784c",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "2053ae51-a9ab-495b-95f7-4ec8ca6fe2ba",
                "port": "outlabel"
              },
              "target": {
                "block": "6cd077a8-9985-4727-b404-1c8d7c636cb3",
                "port": "c2d36218-be99-4dd1-bf69-7690c667255b",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "6cd077a8-9985-4727-b404-1c8d7c636cb3",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "64c3574b-3227-40ab-ab03-c2e2af710a45",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "6cd077a8-9985-4727-b404-1c8d7c636cb3",
                "port": "1fb72b69-63b6-47c0-a5bc-e31bd2611c86"
              }
            },
            {
              "source": {
                "block": "64c3574b-3227-40ab-ab03-c2e2af710a45",
                "port": "dc2d9a2c-9ee9-4985-a678-d88c89fd8b74"
              },
              "target": {
                "block": "4a8f5624-26b3-4c03-9f0c-ba25a58b0329",
                "port": "3762795a-6dc6-4ceb-8eff-82f82b0fc4a7"
              },
              "size": 8
            },
            {
              "source": {
                "block": "c437179c-ef59-4bfb-abc6-f0ae0ef92860",
                "port": "out"
              },
              "target": {
                "block": "26a77ca6-3cd7-4e29-b010-b9707772449e",
                "port": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0"
              },
              "size": 12
            },
            {
              "source": {
                "block": "0d9a6aef-b5a5-4ff2-9a98-c3140f6c0b7e",
                "port": "out"
              },
              "target": {
                "block": "495a10e5-af0f-4900-8004-2903958491d3",
                "port": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0"
              },
              "size": 12
            },
            {
              "source": {
                "block": "4a8f5624-26b3-4c03-9f0c-ba25a58b0329",
                "port": "a0fb5a1e-b4ae-46f6-8d7c-3b8e19f6f18b"
              },
              "target": {
                "block": "b0c927b7-2c00-4b50-b12b-1933cbf3c3f7",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "6cd077a8-9985-4727-b404-1c8d7c636cb3",
                "port": "7c4d05e4-b602-456e-9cf2-9bc6f3a44c42"
              },
              "target": {
                "block": "4a8f5624-26b3-4c03-9f0c-ba25a58b0329",
                "port": "72c10b13-332b-49de-a3ed-45c0d8165b55"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "cb23aa3d8a3e95bd194fd9ec9b9c40b36595d893": {
      "package": {
        "name": "Adder-8bits",
        "version": "0.1",
        "description": "Adder-8bits: Adder of two operands of 8 bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.76%200v79.813h79.508v35.946h-79.509v79.813H79.51V115.76H0V79.813h79.508V0z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1c85838b-e269-4a65-a112-0a1bbca9b2a1",
              "type": "basic.inputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink"
              },
              "position": {
                "x": 16,
                "y": -688
              }
            },
            {
              "id": "d01b9c0c-a541-49e6-b5aa-a0c0f21612a0",
              "type": "basic.outputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink",
                "size": 4
              },
              "position": {
                "x": 352,
                "y": -664
              }
            },
            {
              "id": "b4b08c4b-8eb1-4cd3-a1bf-a45bf7177ed3",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -312,
                "y": -632
              }
            },
            {
              "id": "f3b83846-5723-40b3-a598-fd21797f7ce1",
              "type": "basic.inputLabel",
              "data": {
                "name": "a0",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink"
              },
              "position": {
                "x": 16,
                "y": -616
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 960,
                "y": -608
              }
            },
            {
              "id": "fb36b075-bb31-4aa7-8dbd-f0d108126f21",
              "type": "basic.outputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "blockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 352,
                "y": -584
              }
            },
            {
              "id": "dc2d9a2c-9ee9-4985-a678-d88c89fd8b74",
              "type": "basic.output",
              "data": {
                "name": "s",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 960,
                "y": -544
              }
            },
            {
              "id": "6de2e227-2992-41fb-a52e-16e86632cd2c",
              "type": "basic.outputLabel",
              "data": {
                "name": "a0",
                "range": "[3:0]",
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink",
                "size": 4
              },
              "position": {
                "x": 184,
                "y": -472
              }
            },
            {
              "id": "d5b2605b-a224-4d60-896b-d1553fd943e1",
              "type": "basic.inputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 8,
                "y": -440
              }
            },
            {
              "id": "e3beef79-c05d-4705-8dbc-de5b7b94941a",
              "type": "basic.outputLabel",
              "data": {
                "name": "b0",
                "range": "[3:0]",
                "blockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 184,
                "y": -408
              }
            },
            {
              "id": "63477487-9493-4058-a7e1-9bab443ec466",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -320,
                "y": -384
              }
            },
            {
              "id": "df32424c-55e8-45ed-9adc-3d8bb146e3e0",
              "type": "basic.inputLabel",
              "data": {
                "name": "b0",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 8,
                "y": -368
              }
            },
            {
              "id": "6781108b-d67f-4ee8-97a9-79bab2c400b1",
              "type": "6bdcd950abc9b45a5cdd4ffbdeff404a6f44660a",
              "position": {
                "x": -168,
                "y": -384
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ffcdd533-6cad-4ba4-9f88-4b1030d78af8",
              "type": "6bdcd950abc9b45a5cdd4ffbdeff404a6f44660a",
              "position": {
                "x": -152,
                "y": -632
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7b82019f-c8a7-4b8c-baa1-6eb224a95cb2",
              "type": "25966b9480fc28011aea0e17452c30d5ff9d76e8",
              "position": {
                "x": 352,
                "y": -456
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "b8a72421-dc14-4c18-b343-9c3516b37f54",
              "type": "afb28fd5426aea14477d11cbe30a290679f789f8",
              "position": {
                "x": 760,
                "y": -544
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7186727e-33f4-45cd-a73d-e8f1ad0b2cbc",
              "type": "a1ce303b8ce47a06371ea4641c81460f34a1cca9",
              "position": {
                "x": 520,
                "y": -600
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "6781108b-d67f-4ee8-97a9-79bab2c400b1",
                "port": "eb61d084-ca22-4894-b8a2-f936db38f4b1",
                "size": 4
              },
              "target": {
                "block": "df32424c-55e8-45ed-9adc-3d8bb146e3e0",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "6781108b-d67f-4ee8-97a9-79bab2c400b1",
                "port": "637e64f4-0a6b-4037-9a75-89397e078a58",
                "size": 4
              },
              "target": {
                "block": "d5b2605b-a224-4d60-896b-d1553fd943e1",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "ffcdd533-6cad-4ba4-9f88-4b1030d78af8",
                "port": "637e64f4-0a6b-4037-9a75-89397e078a58",
                "size": 4
              },
              "target": {
                "block": "1c85838b-e269-4a65-a112-0a1bbca9b2a1",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "ffcdd533-6cad-4ba4-9f88-4b1030d78af8",
                "port": "eb61d084-ca22-4894-b8a2-f936db38f4b1",
                "size": 4
              },
              "target": {
                "block": "f3b83846-5723-40b3-a598-fd21797f7ce1",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "e3beef79-c05d-4705-8dbc-de5b7b94941a",
                "port": "outlabel"
              },
              "target": {
                "block": "7b82019f-c8a7-4b8c-baa1-6eb224a95cb2",
                "port": "d192d0af-e7be-4be6-925a-50227d80784c",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "6de2e227-2992-41fb-a52e-16e86632cd2c",
                "port": "outlabel"
              },
              "target": {
                "block": "7b82019f-c8a7-4b8c-baa1-6eb224a95cb2",
                "port": "c2d36218-be99-4dd1-bf69-7690c667255b",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "fb36b075-bb31-4aa7-8dbd-f0d108126f21",
                "port": "outlabel"
              },
              "target": {
                "block": "7186727e-33f4-45cd-a73d-e8f1ad0b2cbc",
                "port": "d192d0af-e7be-4be6-925a-50227d80784c",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "d01b9c0c-a541-49e6-b5aa-a0c0f21612a0",
                "port": "outlabel"
              },
              "target": {
                "block": "7186727e-33f4-45cd-a73d-e8f1ad0b2cbc",
                "port": "c2d36218-be99-4dd1-bf69-7690c667255b",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "63477487-9493-4058-a7e1-9bab443ec466",
                "port": "out"
              },
              "target": {
                "block": "6781108b-d67f-4ee8-97a9-79bab2c400b1",
                "port": "f96fa616-e49a-4bb8-b1d0-ddafcc56569e"
              },
              "size": 8
            },
            {
              "source": {
                "block": "b4b08c4b-8eb1-4cd3-a1bf-a45bf7177ed3",
                "port": "out"
              },
              "target": {
                "block": "ffcdd533-6cad-4ba4-9f88-4b1030d78af8",
                "port": "f96fa616-e49a-4bb8-b1d0-ddafcc56569e"
              },
              "size": 8
            },
            {
              "source": {
                "block": "7186727e-33f4-45cd-a73d-e8f1ad0b2cbc",
                "port": "7c4d05e4-b602-456e-9cf2-9bc6f3a44c42"
              },
              "target": {
                "block": "b8a72421-dc14-4c18-b343-9c3516b37f54",
                "port": "a1770adf-e143-4506-9d87-3cb9c870f534"
              },
              "size": 4
            },
            {
              "source": {
                "block": "7b82019f-c8a7-4b8c-baa1-6eb224a95cb2",
                "port": "7c4d05e4-b602-456e-9cf2-9bc6f3a44c42"
              },
              "target": {
                "block": "b8a72421-dc14-4c18-b343-9c3516b37f54",
                "port": "843164ff-f7d8-48b9-bf59-1e0d1135c81f"
              },
              "size": 4
            },
            {
              "source": {
                "block": "b8a72421-dc14-4c18-b343-9c3516b37f54",
                "port": "1269698e-e555-4fcb-a613-cb4c7ff2e598"
              },
              "target": {
                "block": "dc2d9a2c-9ee9-4985-a678-d88c89fd8b74",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "7186727e-33f4-45cd-a73d-e8f1ad0b2cbc",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "7b82019f-c8a7-4b8c-baa1-6eb224a95cb2",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "7186727e-33f4-45cd-a73d-e8f1ad0b2cbc",
                "port": "1fb72b69-63b6-47c0-a5bc-e31bd2611c86"
              }
            }
          ]
        }
      }
    },
    "6bdcd950abc9b45a5cdd4ffbdeff404a6f44660a": {
      "package": {
        "name": "Bus8-Split-half",
        "version": "0.1",
        "description": "Bus8-Split-half: Split the 8-bits bus into two buses of the same size",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "637e64f4-0a6b-4037-9a75-89397e078a58",
              "type": "basic.output",
              "data": {
                "name": "1",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 584,
                "y": 104
              }
            },
            {
              "id": "f96fa616-e49a-4bb8-b1d0-ddafcc56569e",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 120,
                "y": 208
              }
            },
            {
              "id": "eb61d084-ca22-4894-b8a2-f936db38f4b1",
              "type": "basic.output",
              "data": {
                "name": "0",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 584,
                "y": 232
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o1 = i[7:4];\nassign o0 = i[3:0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "o1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "o0",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 272,
                "y": 176
              },
              "size": {
                "width": 240,
                "height": 120
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o1"
              },
              "target": {
                "block": "637e64f4-0a6b-4037-9a75-89397e078a58",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o0"
              },
              "target": {
                "block": "eb61d084-ca22-4894-b8a2-f936db38f4b1",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "f96fa616-e49a-4bb8-b1d0-ddafcc56569e",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "25966b9480fc28011aea0e17452c30d5ff9d76e8": {
      "package": {
        "name": "Adder-4bits",
        "version": "0.1",
        "description": "Adder-4bits: Adder of two operands of 4 bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.76%200v79.813h79.508v35.946h-79.509v79.813H79.51V115.76H0V79.813h79.508V0z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1c9b3962-5793-4e6f-98d4-9ca2113d0823",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a3",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -744
              }
            },
            {
              "id": "161a3e27-de9b-4674-b990-c1e8314a29f3",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a3",
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 576,
                "y": -736
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 920,
                "y": -696
              }
            },
            {
              "id": "73a0a48e-d345-4eda-8603-782e9865d928",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a2",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -688
              }
            },
            {
              "id": "05fb13c5-879a-422f-84a8-56d1db8816da",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b3",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 576,
                "y": -672
              }
            },
            {
              "id": "a30f87da-7077-4ad6-92dd-adbfdd1bed45",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a1",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -632
              }
            },
            {
              "id": "c2d36218-be99-4dd1-bf69-7690c667255b",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -312,
                "y": -632
              }
            },
            {
              "id": "ed7a30bc-17fc-444e-89e5-aa9f83b32e86",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a2",
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 456,
                "y": -584
              }
            },
            {
              "id": "d7d5e8c8-78dd-41a8-aedf-1051b89bfb77",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a0",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 8,
                "y": -576
              }
            },
            {
              "id": "3c8597e6-ca79-494a-9a53-04c284205216",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b2",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 456,
                "y": -528
              }
            },
            {
              "id": "ee992ca6-d586-4901-aaa3-a17d94ddac84",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b3",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -8,
                "y": -448
              }
            },
            {
              "id": "c5dce3e4-5ecc-4fc9-bbf6-7c1adfa1c7ff",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a1",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 328,
                "y": -440
              }
            },
            {
              "id": "fb8bbeb1-5c60-4629-bc13-231545818d0b",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b2",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -8,
                "y": -384
              }
            },
            {
              "id": "d192d0af-e7be-4be6-925a-50227d80784c",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -312,
                "y": -384
              }
            },
            {
              "id": "038a8cb8-35b8-424a-9d14-c320cfcddccf",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b1"
              },
              "position": {
                "x": 328,
                "y": -376
              }
            },
            {
              "id": "7c4d05e4-b602-456e-9cf2-9bc6f3a44c42",
              "type": "basic.output",
              "data": {
                "name": "s",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 1064,
                "y": -368
              }
            },
            {
              "id": "527c9113-e440-454b-b427-182b646c10f5",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b1",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": -16,
                "y": -320
              }
            },
            {
              "id": "f8dceaf6-6020-49e5-b775-ed4821fbd5bd",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a0",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 184,
                "y": -296
              }
            },
            {
              "id": "b652825e-10ba-47cc-9832-e39d73586234",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b0",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -32,
                "y": -264
              }
            },
            {
              "id": "7e5351cc-ea73-4bb2-9dda-0390f005b90b",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b0",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 184,
                "y": -232
              }
            },
            {
              "id": "e7d0a130-cf6b-4220-a06f-42543db0214f",
              "type": "1ea21df64c18f01d8f4b905c437ccf0ca332baf6",
              "position": {
                "x": 320,
                "y": -248
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 464,
                "y": -392
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "887d569f-183e-4cbe-9b43-51d1da7196cd",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 608,
                "y": -544
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
              "type": "c4f23ad05c2010ec9bd213c8814c9238873037ae",
              "position": {
                "x": -168,
                "y": -416
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "57e59301-2919-4f06-ba95-54ce5d99d774",
              "type": "c4f23ad05c2010ec9bd213c8814c9238873037ae",
              "position": {
                "x": -152,
                "y": -664
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "11342001-e6e0-443b-af87-0e5d7ada0227",
              "type": "84f0a15761ee8b753f67079819a7614923939472",
              "position": {
                "x": 896,
                "y": -400
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "72c87c65-b34b-480f-8cde-cd97c0914014",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 744,
                "y": -688
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "038a8cb8-35b8-424a-9d14-c320cfcddccf",
                "port": "outlabel"
              },
              "target": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
              },
              "target": {
                "block": "527c9113-e440-454b-b427-182b646c10f5",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "0f7487e5-b070-4277-bba6-acf69934afca"
              },
              "target": {
                "block": "b652825e-10ba-47cc-9832-e39d73586234",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "7e5351cc-ea73-4bb2-9dda-0390f005b90b",
                "port": "outlabel"
              },
              "target": {
                "block": "e7d0a130-cf6b-4220-a06f-42543db0214f",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "f8dceaf6-6020-49e5-b775-ed4821fbd5bd",
                "port": "outlabel"
              },
              "target": {
                "block": "e7d0a130-cf6b-4220-a06f-42543db0214f",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "0f7487e5-b070-4277-bba6-acf69934afca"
              },
              "target": {
                "block": "d7d5e8c8-78dd-41a8-aedf-1051b89bfb77",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "c5dce3e4-5ecc-4fc9-bbf6-7c1adfa1c7ff",
                "port": "outlabel"
              },
              "target": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
              },
              "target": {
                "block": "a30f87da-7077-4ad6-92dd-adbfdd1bed45",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "33072210-9ba0-4659-8339-95952b939e6e"
              },
              "target": {
                "block": "fb8bbeb1-5c60-4629-bc13-231545818d0b",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "33072210-9ba0-4659-8339-95952b939e6e"
              },
              "target": {
                "block": "73a0a48e-d345-4eda-8603-782e9865d928",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "3c8597e6-ca79-494a-9a53-04c284205216",
                "port": "outlabel"
              },
              "target": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "ed7a30bc-17fc-444e-89e5-aa9f83b32e86",
                "port": "outlabel"
              },
              "target": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "bbe1895b-be8b-4237-b0d1-ae592e3e6208"
              },
              "target": {
                "block": "ee992ca6-d586-4901-aaa3-a17d94ddac84",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "bbe1895b-be8b-4237-b0d1-ae592e3e6208"
              },
              "target": {
                "block": "1c9b3962-5793-4e6f-98d4-9ca2113d0823",
                "port": "inlabel"
              },
              "vertices": [
                {
                  "x": -24,
                  "y": -696
                }
              ]
            },
            {
              "source": {
                "block": "05fb13c5-879a-422f-84a8-56d1db8816da",
                "port": "outlabel"
              },
              "target": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "161a3e27-de9b-4674-b990-c1e8314a29f3",
                "port": "outlabel"
              },
              "target": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "e7d0a130-cf6b-4220-a06f-42543db0214f",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              }
            },
            {
              "source": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8"
              }
            },
            {
              "source": {
                "block": "e7d0a130-cf6b-4220-a06f-42543db0214f",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "e4111201-8441-4e7d-bcd2-bcf9d265d043"
              }
            },
            {
              "source": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              }
            },
            {
              "source": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "346b4ae4-4bb6-4845-9c17-3b25e0dde718"
              },
              "vertices": [
                {
                  "x": 824,
                  "y": -424
                }
              ]
            },
            {
              "source": {
                "block": "d192d0af-e7be-4be6-925a-50227d80784c",
                "port": "out"
              },
              "target": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "0ebd46a4-769b-45e6-bcaf-e3796264aed3"
              },
              "size": 4
            },
            {
              "source": {
                "block": "c2d36218-be99-4dd1-bf69-7690c667255b",
                "port": "out"
              },
              "target": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "0ebd46a4-769b-45e6-bcaf-e3796264aed3"
              },
              "size": 4
            },
            {
              "source": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "55180947-6349-4a04-a151-ad69ea2b155e"
              },
              "target": {
                "block": "7c4d05e4-b602-456e-9cf2-9bc6f3a44c42",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              },
              "vertices": [
                {
                  "x": 728,
                  "y": -552
                }
              ]
            },
            {
              "source": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "6c2aa548-5a4c-4e8d-a56c-a70926b19f18"
              }
            }
          ]
        }
      }
    },
    "1ea21df64c18f01d8f4b905c437ccf0ca332baf6": {
      "package": {
        "name": "Adder-1bit",
        "version": "0.1",
        "description": "Adder-1bit: Adder of two operands of 1 bit",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.76%200v79.813h79.508v35.946h-79.509v79.813H79.51V115.76H0V79.813h79.508V0z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 280,
                "y": -224
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 616,
                "y": -176
              }
            },
            {
              "id": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 280,
                "y": -152
              }
            },
            {
              "id": "c7d2d573-b901-420e-a923-6832e5b18e34",
              "type": "basic.output",
              "data": {
                "name": "s"
              },
              "position": {
                "x": 616,
                "y": -96
              }
            },
            {
              "id": "0ef44beb-f4b1-484c-b15a-dc4431241aee",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 456,
                "y": -168
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "e80cc244-1751-4524-9f77-734a36b24a88",
              "type": "d30ca9ee4f35f6cb76d5e5701447fc2b739bc640",
              "position": {
                "x": 304,
                "y": -64
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba",
                "port": "out"
              },
              "target": {
                "block": "0ef44beb-f4b1-484c-b15a-dc4431241aee",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
                "port": "out"
              },
              "target": {
                "block": "0ef44beb-f4b1-484c-b15a-dc4431241aee",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              },
              "vertices": [
                {
                  "x": 400,
                  "y": -168
                }
              ]
            },
            {
              "source": {
                "block": "e80cc244-1751-4524-9f77-734a36b24a88",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "0ef44beb-f4b1-484c-b15a-dc4431241aee",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              }
            },
            {
              "source": {
                "block": "0ef44beb-f4b1-484c-b15a-dc4431241aee",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "0ef44beb-f4b1-484c-b15a-dc4431241aee",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "c7d2d573-b901-420e-a923-6832e5b18e34",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a": {
      "package": {
        "name": "AdderC-1bit",
        "version": "0.1",
        "description": "AdderC-1bit: Adder of two operands of 1 bit plus the carry in",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.76%200v79.813h79.508v35.946h-79.509v79.813H79.51V115.76H0V79.813h79.508V0z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b28215b2-e375-43cd-96b4-ed5b60418dc6",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a"
              },
              "position": {
                "x": 504,
                "y": -208
              }
            },
            {
              "id": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
              "type": "basic.input",
              "data": {
                "name": "a",
                "clock": false
              },
              "position": {
                "x": 136,
                "y": -192
              }
            },
            {
              "id": "f2c3e9af-37a6-4815-9413-c437d2471b1f",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": 272,
                "y": -192
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 1112,
                "y": -176
              }
            },
            {
              "id": "cdbf1806-fde2-4763-aeae-cd26f3db2a86",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b"
              },
              "position": {
                "x": 504,
                "y": -144
              }
            },
            {
              "id": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba",
              "type": "basic.input",
              "data": {
                "name": "b",
                "clock": false
              },
              "position": {
                "x": 136,
                "y": -120
              }
            },
            {
              "id": "65936289-69ce-4e26-be4e-44f8a3706934",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": 272,
                "y": -120
              }
            },
            {
              "id": "6b7a0fc7-9eeb-4894-98fd-e0122d08cdf0",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "ci",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 648,
                "y": -96
              }
            },
            {
              "id": "5e915366-608a-431a-bf68-8c64fb4c302c",
              "type": "basic.input",
              "data": {
                "name": "ci",
                "clock": false
              },
              "position": {
                "x": 136,
                "y": -40
              }
            },
            {
              "id": "9fca1dd5-3d6c-4321-a1cf-fd35336e41ea",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "navy",
                "name": "ci",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 272,
                "y": -40
              }
            },
            {
              "id": "79149d67-753e-414e-ba2a-49ba4edfe523",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a"
              },
              "position": {
                "x": 480,
                "y": 24
              }
            },
            {
              "id": "c7d2d573-b901-420e-a923-6832e5b18e34",
              "type": "basic.output",
              "data": {
                "name": "s"
              },
              "position": {
                "x": 992,
                "y": 56
              }
            },
            {
              "id": "edf4525b-edd8-40fa-b784-631b102fb907",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b"
              },
              "position": {
                "x": 480,
                "y": 88
              }
            },
            {
              "id": "35a4f7cc-d7ef-4653-af75-fe112a5f5151",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "navy",
                "name": "ci",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 648,
                "y": 120
              }
            },
            {
              "id": "687d4abf-9ce2-408a-8010-c00e2cec2d44",
              "type": "d1240143e1ff7afe57f0f11565da980612b2bb76",
              "position": {
                "x": 648,
                "y": 40
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6756cb54-aa93-40af-a5f3-41ef2b2edec9",
              "type": "d1240143e1ff7afe57f0f11565da980612b2bb76",
              "position": {
                "x": 832,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f7053b6b-9812-48df-9212-cb8dc49d44cd",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 808,
                "y": -80
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "d77ee777-f5ad-4f89-832b-e1f95f0cf9db",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 632,
                "y": -192
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "dd3259d5-99f6-47f2-881c-4e969e324444",
              "type": "873425949b2a80f1a7f66f320796bcd068a59889",
              "position": {
                "x": 960,
                "y": -176
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
                "port": "out"
              },
              "target": {
                "block": "f2c3e9af-37a6-4815-9413-c437d2471b1f",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba",
                "port": "out"
              },
              "target": {
                "block": "65936289-69ce-4e26-be4e-44f8a3706934",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "5e915366-608a-431a-bf68-8c64fb4c302c",
                "port": "out"
              },
              "target": {
                "block": "9fca1dd5-3d6c-4321-a1cf-fd35336e41ea",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "79149d67-753e-414e-ba2a-49ba4edfe523",
                "port": "outlabel"
              },
              "target": {
                "block": "687d4abf-9ce2-408a-8010-c00e2cec2d44",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "edf4525b-edd8-40fa-b784-631b102fb907",
                "port": "outlabel"
              },
              "target": {
                "block": "687d4abf-9ce2-408a-8010-c00e2cec2d44",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "35a4f7cc-d7ef-4653-af75-fe112a5f5151",
                "port": "outlabel"
              },
              "target": {
                "block": "6756cb54-aa93-40af-a5f3-41ef2b2edec9",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "6b7a0fc7-9eeb-4894-98fd-e0122d08cdf0",
                "port": "outlabel"
              },
              "target": {
                "block": "f7053b6b-9812-48df-9212-cb8dc49d44cd",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "b28215b2-e375-43cd-96b4-ed5b60418dc6",
                "port": "outlabel"
              },
              "target": {
                "block": "d77ee777-f5ad-4f89-832b-e1f95f0cf9db",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "cdbf1806-fde2-4763-aeae-cd26f3db2a86",
                "port": "outlabel"
              },
              "target": {
                "block": "d77ee777-f5ad-4f89-832b-e1f95f0cf9db",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "687d4abf-9ce2-408a-8010-c00e2cec2d44",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "6756cb54-aa93-40af-a5f3-41ef2b2edec9",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "6756cb54-aa93-40af-a5f3-41ef2b2edec9",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "c7d2d573-b901-420e-a923-6832e5b18e34",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "687d4abf-9ce2-408a-8010-c00e2cec2d44",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "f7053b6b-9812-48df-9212-cb8dc49d44cd",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "f7053b6b-9812-48df-9212-cb8dc49d44cd",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "dd3259d5-99f6-47f2-881c-4e969e324444",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "d77ee777-f5ad-4f89-832b-e1f95f0cf9db",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "dd3259d5-99f6-47f2-881c-4e969e324444",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "dd3259d5-99f6-47f2-881c-4e969e324444",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "d1240143e1ff7afe57f0f11565da980612b2bb76": {
      "package": {
        "name": "XOR2",
        "version": "1.0.2",
        "description": "XOR gate: two bits input xor gate",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22193.047%22%20width=%22383.697%22%20version=%221%22%3E%3Cpath%20d=%22M175.56%20189.047H84.527s30.345-42.538%2031.086-94.03c.743-51.49-31.821-90.294-31.821-90.294l92.317-.394c46.445%201.948%20103.899%2053.44%20123.047%2093.678-32.601%2067.503-92.158%2089.79-123.596%2091.04z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2047.62h99.605M4.883%20145.497h100.981M298.57%2099.219h81.07%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20x=%22129.011%22%20y=%22115.285%22%20font-size=%2258.24%22%20font-weight=%22400%22%20style=%22line-height:125%25%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%20transform=%22translate(0%20.329)%22%3E%3Ctspan%20x=%22129.011%22%20y=%22115.285%22%20font-weight=%22700%22%3EXOR%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M54.321%20188.368s30.345-42.538%2031.086-94.03c.742-51.49-31.821-90.294-31.821-90.294%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 120,
                "y": 48
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 72
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 120,
                "y": 104
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- XOR gate\n//-- Verilog implementation\n\nassign c = a ^ b;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 272,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "873425949b2a80f1a7f66f320796bcd068a59889": {
      "package": {
        "name": "OR2",
        "version": "1.0.2",
        "description": "OR2: Two bits input OR gate",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22192.718%22%20width=%22383.697%22%20version=%221%22%3E%3Cpath%20d=%22M175.56%20188.718H84.527s30.345-42.538%2031.086-94.03c.743-51.49-31.821-90.294-31.821-90.294L176.109%204c46.445%201.948%20103.899%2053.44%20123.047%2093.678-32.601%2067.503-92.158%2089.79-123.596%2091.04z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2047.292h99.605M4.883%20145.168h100.981M298.57%2098.89h81.07%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2266.317%22%20y=%22121.28%22%20x=%22131.572%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20font-weight=%22700%22%20y=%22121.28%22%20x=%22131.572%22%3EOR%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 112,
                "y": 40
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 72
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 112,
                "y": 96
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- OR Gate\n//-- Verilog implementation\n\nassign c = a | b;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 312,
                "height": 104
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "d30ca9ee4f35f6cb76d5e5701447fc2b739bc640": {
      "package": {
        "name": "bit-0",
        "version": "0.2",
        "description": "Constant bit 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22125.776%22%20height=%22197.727%22%20viewBox=%220%200%20110.54641%20173.78236%22%3E%3Cpath%20d=%22M69.664%20107.353l13.494%2029.374L70.719%20168.5l13.788%204.283m-42.761-62.916S38.148%20136.825%2033.22%20139C28.298%20141.18%201%20161.403%201%20161.403l8.729%2010.636%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cg%20style=%22line-height:0%25%22%3E%3Cpath%20d=%22M65.536%2024.562q-9.493%200-15.876%208.251-6.303%208.156-8.855%2023.604-2.553%2015.448%201.037%2023.7%203.59%208.155%2013.084%208.155%209.334%200%2015.636-8.155%206.383-8.252%208.936-23.7%202.553-15.448-1.037-23.604-3.59-8.251-12.925-8.251zm4.07-24.564q23.056%200%2033.507%2014.969%2010.53%2014.968%206.143%2041.45-4.388%2026.482-19.865%2041.45-15.478%2014.968-38.534%2014.968-23.136%200-33.667-14.968Q6.659%2082.9%2011.047%2056.417q4.387-26.482%2019.865-41.45Q46.469-.002%2069.605-.002z%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%20font-size=%22179.184%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 456,
                "y": 120
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Constant bit-0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 248,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "afb28fd5426aea14477d11cbe30a290679f789f8": {
      "package": {
        "name": "Bus8-Join-half",
        "version": "0.1",
        "description": "Bus8-Join-half: Join the two same halves into an 8-bits Bus",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M164.218%2077.643L103.07%2016.705C92.386%206.25%2078.036.461%2063.11.5H.5v26.186l61.698.046c8.012-.043%2015.705%203.133%2021.47%208.81l61.448%2061.315a57.292%2057.292%200%200%200%2039.993%2016.139%2057.292%2057.292%200%200%200-39.993%2016.14L83.668%20190.45c-5.765%205.677-13.458%208.853-21.47%208.81L.5%20199.306v26.186h62.612c14.924.039%2029.463-5.9%2040.204-16.28l60.902-60.863a29.857%2029.857%200%200%201%2021.347-8.81l146.53-.113V86.457H185.571a29.884%2029.884%200%200%201-21.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a1770adf-e143-4506-9d87-3cb9c870f534",
              "type": "basic.input",
              "data": {
                "name": "1",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 128,
                "y": 168
              }
            },
            {
              "id": "1269698e-e555-4fcb-a613-cb4c7ff2e598",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 640,
                "y": 200
              }
            },
            {
              "id": "843164ff-f7d8-48b9-bf59-1e0d1135c81f",
              "type": "basic.input",
              "data": {
                "name": "0",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 128,
                "y": 224
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i1, i0};\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i0",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 272,
                "height": 104
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o"
              },
              "target": {
                "block": "1269698e-e555-4fcb-a613-cb4c7ff2e598",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "a1770adf-e143-4506-9d87-3cb9c870f534",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i1"
              },
              "size": 4
            },
            {
              "source": {
                "block": "843164ff-f7d8-48b9-bf59-1e0d1135c81f",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i0"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "a1ce303b8ce47a06371ea4641c81460f34a1cca9": {
      "package": {
        "name": "AdderC-4bits",
        "version": "0.1",
        "description": "AdderC-4bits: Adder of two operands of 4 bits and Carry in",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M115.76%200v79.813h79.508v35.946h-79.509v79.813H79.51V115.76H0V79.813h79.508V0z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%224.441%22/%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618560481898
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1c9b3962-5793-4e6f-98d4-9ca2113d0823",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a3",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -744
              }
            },
            {
              "id": "161a3e27-de9b-4674-b990-c1e8314a29f3",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a3",
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 576,
                "y": -736
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": "c"
              },
              "position": {
                "x": 920,
                "y": -696
              }
            },
            {
              "id": "73a0a48e-d345-4eda-8603-782e9865d928",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a2",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -688
              }
            },
            {
              "id": "05fb13c5-879a-422f-84a8-56d1db8816da",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b3",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 576,
                "y": -672
              }
            },
            {
              "id": "a30f87da-7077-4ad6-92dd-adbfdd1bed45",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a1",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 8,
                "y": -632
              }
            },
            {
              "id": "c2d36218-be99-4dd1-bf69-7690c667255b",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -312,
                "y": -632
              }
            },
            {
              "id": "ed7a30bc-17fc-444e-89e5-aa9f83b32e86",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a2",
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 456,
                "y": -584
              }
            },
            {
              "id": "d7d5e8c8-78dd-41a8-aedf-1051b89bfb77",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a0",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 8,
                "y": -576
              }
            },
            {
              "id": "3c8597e6-ca79-494a-9a53-04c284205216",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b2",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 456,
                "y": -528
              }
            },
            {
              "id": "ee992ca6-d586-4901-aaa3-a17d94ddac84",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b3",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -8,
                "y": -448
              }
            },
            {
              "id": "c5dce3e4-5ecc-4fc9-bbf6-7c1adfa1c7ff",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a1",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 328,
                "y": -440
              }
            },
            {
              "id": "fb8bbeb1-5c60-4629-bc13-231545818d0b",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b2",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -8,
                "y": -384
              }
            },
            {
              "id": "d192d0af-e7be-4be6-925a-50227d80784c",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -312,
                "y": -384
              }
            },
            {
              "id": "038a8cb8-35b8-424a-9d14-c320cfcddccf",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b1"
              },
              "position": {
                "x": 328,
                "y": -376
              }
            },
            {
              "id": "7c4d05e4-b602-456e-9cf2-9bc6f3a44c42",
              "type": "basic.output",
              "data": {
                "name": "s",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 1064,
                "y": -368
              }
            },
            {
              "id": "527c9113-e440-454b-b427-182b646c10f5",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b1",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": -16,
                "y": -320
              }
            },
            {
              "id": "f8dceaf6-6020-49e5-b775-ed4821fbd5bd",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "a0",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 184,
                "y": -296
              }
            },
            {
              "id": "b652825e-10ba-47cc-9832-e39d73586234",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b0",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": -32,
                "y": -264
              }
            },
            {
              "id": "7e5351cc-ea73-4bb2-9dda-0390f005b90b",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "b0",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 184,
                "y": -232
              }
            },
            {
              "id": "1fb72b69-63b6-47c0-a5bc-e31bd2611c86",
              "type": "basic.input",
              "data": {
                "name": "ci",
                "clock": false
              },
              "position": {
                "x": -296,
                "y": -168
              }
            },
            {
              "id": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 464,
                "y": -392
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "887d569f-183e-4cbe-9b43-51d1da7196cd",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 608,
                "y": -544
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
              "type": "c4f23ad05c2010ec9bd213c8814c9238873037ae",
              "position": {
                "x": -168,
                "y": -416
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "57e59301-2919-4f06-ba95-54ce5d99d774",
              "type": "c4f23ad05c2010ec9bd213c8814c9238873037ae",
              "position": {
                "x": -152,
                "y": -664
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "11342001-e6e0-443b-af87-0e5d7ada0227",
              "type": "84f0a15761ee8b753f67079819a7614923939472",
              "position": {
                "x": 896,
                "y": -400
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "72c87c65-b34b-480f-8cde-cd97c0914014",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 744,
                "y": -688
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "db8ddf46-4d59-46ec-90bc-2ae7ccc59ce0",
              "type": "ad119ba8cc72b122da03cd3d251ffce5e8dc6e9a",
              "position": {
                "x": 320,
                "y": -248
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "038a8cb8-35b8-424a-9d14-c320cfcddccf",
                "port": "outlabel"
              },
              "target": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
              },
              "target": {
                "block": "527c9113-e440-454b-b427-182b646c10f5",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "0f7487e5-b070-4277-bba6-acf69934afca"
              },
              "target": {
                "block": "b652825e-10ba-47cc-9832-e39d73586234",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "7e5351cc-ea73-4bb2-9dda-0390f005b90b",
                "port": "outlabel"
              },
              "target": {
                "block": "db8ddf46-4d59-46ec-90bc-2ae7ccc59ce0",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "f8dceaf6-6020-49e5-b775-ed4821fbd5bd",
                "port": "outlabel"
              },
              "target": {
                "block": "db8ddf46-4d59-46ec-90bc-2ae7ccc59ce0",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "0f7487e5-b070-4277-bba6-acf69934afca"
              },
              "target": {
                "block": "d7d5e8c8-78dd-41a8-aedf-1051b89bfb77",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "c5dce3e4-5ecc-4fc9-bbf6-7c1adfa1c7ff",
                "port": "outlabel"
              },
              "target": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
              },
              "target": {
                "block": "a30f87da-7077-4ad6-92dd-adbfdd1bed45",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "33072210-9ba0-4659-8339-95952b939e6e"
              },
              "target": {
                "block": "fb8bbeb1-5c60-4629-bc13-231545818d0b",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "33072210-9ba0-4659-8339-95952b939e6e"
              },
              "target": {
                "block": "73a0a48e-d345-4eda-8603-782e9865d928",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "3c8597e6-ca79-494a-9a53-04c284205216",
                "port": "outlabel"
              },
              "target": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "ed7a30bc-17fc-444e-89e5-aa9f83b32e86",
                "port": "outlabel"
              },
              "target": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "bbe1895b-be8b-4237-b0d1-ae592e3e6208"
              },
              "target": {
                "block": "ee992ca6-d586-4901-aaa3-a17d94ddac84",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "bbe1895b-be8b-4237-b0d1-ae592e3e6208"
              },
              "target": {
                "block": "1c9b3962-5793-4e6f-98d4-9ca2113d0823",
                "port": "inlabel"
              },
              "vertices": [
                {
                  "x": -24,
                  "y": -696
                }
              ]
            },
            {
              "source": {
                "block": "05fb13c5-879a-422f-84a8-56d1db8816da",
                "port": "outlabel"
              },
              "target": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "c25ede2a-5b9b-43af-bd6b-0ac539a135ba"
              }
            },
            {
              "source": {
                "block": "161a3e27-de9b-4674-b990-c1e8314a29f3",
                "port": "outlabel"
              },
              "target": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "db8ddf46-4d59-46ec-90bc-2ae7ccc59ce0",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              }
            },
            {
              "source": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8"
              }
            },
            {
              "source": {
                "block": "db8ddf46-4d59-46ec-90bc-2ae7ccc59ce0",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "e4111201-8441-4e7d-bcd2-bcf9d265d043"
              }
            },
            {
              "source": {
                "block": "dc4b3359-4017-40dd-9c0b-a1afde43f9e1",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              }
            },
            {
              "source": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "346b4ae4-4bb6-4845-9c17-3b25e0dde718"
              },
              "vertices": [
                {
                  "x": 824,
                  "y": -424
                }
              ]
            },
            {
              "source": {
                "block": "d192d0af-e7be-4be6-925a-50227d80784c",
                "port": "out"
              },
              "target": {
                "block": "b21b50b9-8a60-4df4-9c1a-8d3a287fae68",
                "port": "0ebd46a4-769b-45e6-bcaf-e3796264aed3"
              },
              "size": 4
            },
            {
              "source": {
                "block": "c2d36218-be99-4dd1-bf69-7690c667255b",
                "port": "out"
              },
              "target": {
                "block": "57e59301-2919-4f06-ba95-54ce5d99d774",
                "port": "0ebd46a4-769b-45e6-bcaf-e3796264aed3"
              },
              "size": 4
            },
            {
              "source": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "55180947-6349-4a04-a151-ad69ea2b155e"
              },
              "target": {
                "block": "7c4d05e4-b602-456e-9cf2-9bc6f3a44c42",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "887d569f-183e-4cbe-9b43-51d1da7196cd",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              },
              "vertices": [
                {
                  "x": 728,
                  "y": -552
                }
              ]
            },
            {
              "source": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "72c87c65-b34b-480f-8cde-cd97c0914014",
                "port": "c7d2d573-b901-420e-a923-6832e5b18e34"
              },
              "target": {
                "block": "11342001-e6e0-443b-af87-0e5d7ada0227",
                "port": "6c2aa548-5a4c-4e8d-a56c-a70926b19f18"
              }
            },
            {
              "source": {
                "block": "1fb72b69-63b6-47c0-a5bc-e31bd2611c86",
                "port": "out"
              },
              "target": {
                "block": "db8ddf46-4d59-46ec-90bc-2ae7ccc59ce0",
                "port": "5e915366-608a-431a-bf68-8c64fb4c302c"
              }
            }
          ]
        }
      }
    },
    "c97ea62c7e57797474a81bca730a1b2bec259617": {
      "package": {
        "name": "Bus12-Split-4-8",
        "version": "0.1",
        "description": "Bus12-Split-4-8: Split the 12-bits bus into two buses of 4 and 8 wires",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
              "type": "basic.output",
              "data": {
                "name": "1",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 496,
                "y": 16
              }
            },
            {
              "id": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -32,
                "y": 64
              }
            },
            {
              "id": "99e7399f-ce06-4f67-ae35-0b9a6785d60e",
              "type": "basic.output",
              "data": {
                "name": "0",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 504,
                "y": 104
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "\nassign o1 = i[11:8];\nassign o0 = i[7:0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ],
                  "out": [
                    {
                      "name": "o1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "o0",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 136,
                "y": 0
              },
              "size": {
                "width": 280,
                "height": 184
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o1"
              },
              "target": {
                "block": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              },
              "size": 12
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o0"
              },
              "target": {
                "block": "99e7399f-ce06-4f67-ae35-0b9a6785d60e",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "f8299bf4c4820bbb12d9616397182e64485e3442": {
      "package": {
        "name": "Bus12-Join-4-8",
        "version": "0.1",
        "description": "Bus12-Join-4-8: Join the two buses into an 12-bits Bus",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M164.218%2077.643L103.07%2016.705C92.386%206.25%2078.036.461%2063.11.5H.5v26.186l61.698.046c8.012-.043%2015.705%203.133%2021.47%208.81l61.448%2061.315a57.292%2057.292%200%200%200%2039.993%2016.139%2057.292%2057.292%200%200%200-39.993%2016.14L83.668%20190.45c-5.765%205.677-13.458%208.853-21.47%208.81L.5%20199.306v26.186h62.612c14.924.039%2029.463-5.9%2040.204-16.28l60.902-60.863a29.857%2029.857%200%200%201%2021.347-8.81l146.53-.113V86.457H185.571a29.884%2029.884%200%200%201-21.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "72c10b13-332b-49de-a3ed-45c0d8165b55",
              "type": "basic.input",
              "data": {
                "name": "1",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 120,
                "y": 192
              }
            },
            {
              "id": "a0fb5a1e-b4ae-46f6-8d7c-3b8e19f6f18b",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 648,
                "y": 232
              }
            },
            {
              "id": "3762795a-6dc6-4ceb-8eff-82f82b0fc4a7",
              "type": "basic.input",
              "data": {
                "name": "0",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 120,
                "y": 328
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i1, i0};\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i0",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 280,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o"
              },
              "target": {
                "block": "a0fb5a1e-b4ae-46f6-8d7c-3b8e19f6f18b",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "3762795a-6dc6-4ceb-8eff-82f82b0fc4a7",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i0"
              },
              "size": 8
            },
            {
              "source": {
                "block": "72c10b13-332b-49de-a3ed-45c0d8165b55",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i1"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "20620a64fa65e6323382a880bc396bc67289e199": {
      "package": {
        "name": "12-bits-gen-constant",
        "version": "0.0.2",
        "description": "Generic: 12-bits generic constant (0-4095)",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Cg%20style=%22line-height:0%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%3E%3Cpath%20d=%22M56.012%20146.905q9.055%206.708%2020.459%2017.105%2011.404%2010.062%2022.472%2021.8%2011.403%2011.74%2021.465%2024.15%2010.062%2012.074%2016.1%2022.471h-32.87q-6.372-10.397-15.763-21.13-9.392-11.068-20.124-21.13-10.398-10.062-21.13-18.447-10.398-8.385-18.783-14.087v74.794H0V4.695L27.838%200v141.874q18.447-16.1%2036.894-31.863%2018.447-16.1%2033.205-33.205h32.533q-14.422%2017.106-34.881%2035.217-20.124%2018.112-39.577%2034.882z%22%20style=%22line-height:1.25%22%20font-size=%22335.399%22%20font-weight=%22400%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "94c83028-98cb-41ad-8727-da16997c19d5",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 968,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = VALUE;",
                "params": [
                  {
                    "name": "VALUE"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[11:0]",
                      "size": 12
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "VALUE"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "94c83028-98cb-41ad-8727-da16997c19d5",
                "port": "in"
              },
              "size": 12
            }
          ]
        }
      }
    },
    "dde07242c41d646b018e04ae504185860ab8a1da": {
      "package": {
        "name": "comp2-12bits",
        "version": "0.1",
        "description": "Comp2-12bit: Comparator of two 12-bit numbers",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22312.756%22%20height=%22168.82%22%20viewBox=%220%200%20293.20803%20158.26888%22%3E%3Cg%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20stroke-width=%22.057%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M0%200h293.209v53.747H-.001zm0%20104.064h293.209v54.205H-.001z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2296.3%22%20fill=%22#00f%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618594740929
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "738ae80e-c170-438b-bce7-59fab67c6e4c",
              "type": "basic.inputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 696,
                "y": 0
              }
            },
            {
              "id": "1c3ee14c-c5bc-4a49-8e37-736bd3275230",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 368,
                "y": 56
              }
            },
            {
              "id": "f1ec9a74-0d32-45d1-bf72-90535d0be165",
              "type": "basic.inputLabel",
              "data": {
                "name": "a0",
                "range": "[7:0]",
                "pins": [
                  {
                    "index": "7",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "6",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "5",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "4",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 696,
                "y": 72
              }
            },
            {
              "id": "106ddd51-311e-4f56-9774-f16e12200d7c",
              "type": "basic.outputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "blockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 888,
                "y": 96
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 1408,
                "y": 168
              }
            },
            {
              "id": "764af6fd-ce7e-4eb9-b4f6-dd3b61172c2b",
              "type": "basic.outputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "blockColor": "deeppink",
                "oldBlockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 888,
                "y": 168
              }
            },
            {
              "id": "a5882e7b-8c95-406c-8b31-038df5b4050c",
              "type": "basic.outputLabel",
              "data": {
                "name": "a0",
                "range": "[7:0]",
                "blockColor": "deeppink",
                "size": 8
              },
              "position": {
                "x": 888,
                "y": 264
              }
            },
            {
              "id": "6e00004c-20d3-49b2-b620-1f1e89ecbea2",
              "type": "basic.outputLabel",
              "data": {
                "name": "b0",
                "range": "[7:0]",
                "blockColor": "deeppink",
                "size": 8
              },
              "position": {
                "x": 888,
                "y": 336
              }
            },
            {
              "id": "008568d9-c44c-46b2-9d56-0e82da048a9a",
              "type": "basic.inputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink"
              },
              "position": {
                "x": 688,
                "y": 376
              }
            },
            {
              "id": "2dc42a94-8cad-4da2-bf3b-08013ea2a669",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": 352,
                "y": 432
              }
            },
            {
              "id": "57f9a324-2e6e-4123-a79e-ad69ca9c3e2f",
              "type": "basic.inputLabel",
              "data": {
                "name": "b0",
                "range": "[7:0]",
                "pins": [
                  {
                    "index": "7",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "6",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "5",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "4",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink"
              },
              "position": {
                "x": 688,
                "y": 448
              }
            },
            {
              "id": "2df886b0-4697-49ce-a8dd-2ffa9ede33a7",
              "type": "basic.info",
              "data": {
                "info": "A",
                "readonly": true
              },
              "position": {
                "x": 408,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 32
              }
            },
            {
              "id": "fa5825ce-289b-4004-84f5-12ee322cae15",
              "type": "basic.info",
              "data": {
                "info": "B",
                "readonly": true
              },
              "position": {
                "x": 392,
                "y": 408
              },
              "size": {
                "width": 80,
                "height": 32
              }
            },
            {
              "id": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 1264,
                "y": 168
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
              "type": "438230b563d82c3a000686cd1030f4bfa85c5cc0",
              "position": {
                "x": 1040,
                "y": 152
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "b07ba936-e154-4abf-b463-08a7b7a25582",
              "type": "c97ea62c7e57797474a81bca730a1b2bec259617",
              "position": {
                "x": 512,
                "y": 432
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "42ae6083-a9fd-4787-acb9-0713f66e90ad",
              "type": "c97ea62c7e57797474a81bca730a1b2bec259617",
              "position": {
                "x": 528,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "45eb3900-c7a0-4816-b901-c139f1401a23",
              "type": "b2762a8f01edc037b9273378035d64a7172f3187",
              "position": {
                "x": 1040,
                "y": 320
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b07ba936-e154-4abf-b463-08a7b7a25582",
                "port": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
                "size": 4
              },
              "target": {
                "block": "008568d9-c44c-46b2-9d56-0e82da048a9a",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "42ae6083-a9fd-4787-acb9-0713f66e90ad",
                "port": "9a0bd20b-0206-4f0e-b07d-e96696b705c5",
                "size": 4
              },
              "target": {
                "block": "738ae80e-c170-438b-bce7-59fab67c6e4c",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "764af6fd-ce7e-4eb9-b4f6-dd3b61172c2b",
                "port": "outlabel"
              },
              "target": {
                "block": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
                "port": "806f7064-dcd7-48b4-8b61-52a7d96f4c83",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "106ddd51-311e-4f56-9774-f16e12200d7c",
                "port": "outlabel"
              },
              "target": {
                "block": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
                "port": "c8393e7e-9307-4e02-85c5-6ce83d07623c",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "b07ba936-e154-4abf-b463-08a7b7a25582",
                "port": "99e7399f-ce06-4f67-ae35-0b9a6785d60e",
                "size": 8
              },
              "target": {
                "block": "57f9a324-2e6e-4123-a79e-ad69ca9c3e2f",
                "port": "inlabel"
              },
              "size": 8
            },
            {
              "source": {
                "block": "42ae6083-a9fd-4787-acb9-0713f66e90ad",
                "port": "99e7399f-ce06-4f67-ae35-0b9a6785d60e",
                "size": 8
              },
              "target": {
                "block": "f1ec9a74-0d32-45d1-bf72-90535d0be165",
                "port": "inlabel"
              },
              "size": 8
            },
            {
              "source": {
                "block": "6e00004c-20d3-49b2-b620-1f1e89ecbea2",
                "port": "outlabel"
              },
              "target": {
                "block": "45eb3900-c7a0-4816-b901-c139f1401a23",
                "port": "ab9bcc04-115a-4689-8d9c-b191681a3dde",
                "size": 8
              },
              "size": 8
            },
            {
              "source": {
                "block": "a5882e7b-8c95-406c-8b31-038df5b4050c",
                "port": "outlabel"
              },
              "target": {
                "block": "45eb3900-c7a0-4816-b901-c139f1401a23",
                "port": "44eeec20-79b3-40e8-a9b9-df85c51cec3c",
                "size": 8
              },
              "size": 8
            },
            {
              "source": {
                "block": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "45eb3900-c7a0-4816-b901-c139f1401a23",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "1c3ee14c-c5bc-4a49-8e37-736bd3275230",
                "port": "out"
              },
              "target": {
                "block": "42ae6083-a9fd-4787-acb9-0713f66e90ad",
                "port": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0"
              },
              "size": 12
            },
            {
              "source": {
                "block": "2dc42a94-8cad-4da2-bf3b-08013ea2a669",
                "port": "out"
              },
              "target": {
                "block": "b07ba936-e154-4abf-b463-08a7b7a25582",
                "port": "46011ec6-127b-4e6b-83ca-aed5b18ae4d0"
              },
              "size": 12
            }
          ]
        }
      }
    },
    "438230b563d82c3a000686cd1030f4bfa85c5cc0": {
      "package": {
        "name": "comp2-4bits",
        "version": "0.1",
        "description": "Comp2-4bit: Comparator of two 4-bit numbers",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22312.756%22%20height=%22168.82%22%20viewBox=%220%200%20293.20803%20158.26888%22%3E%3Cg%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20stroke-width=%22.057%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M0%200h293.209v53.747H-.001zm0%20104.064h293.209v54.205H-.001z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2296.3%22%20fill=%22#00f%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618594740929
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8d9e1163-514b-4843-b376-7d2d6b44c982",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a3",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 904,
                "y": -160
              }
            },
            {
              "id": "a8c3b8e1-f3f5-4383-acf3-9a3a02b36983",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b3",
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 904,
                "y": -88
              }
            },
            {
              "id": "a1ed3ef4-e069-4db5-b0cb-13fd1a9ba914",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a3",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 704,
                "y": -32
              }
            },
            {
              "id": "45c3d2b2-e136-4bca-b556-b2501f1a8482",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a2",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 904,
                "y": 0
              }
            },
            {
              "id": "7979c265-4d7d-4368-b94a-3028a47786ed",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a2",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 704,
                "y": 32
              }
            },
            {
              "id": "c8393e7e-9307-4e02-85c5-6ce83d07623c",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 360,
                "y": 48
              }
            },
            {
              "id": "b4e1aae5-0fbb-4125-bc5a-456e317fa412",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b2",
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 904,
                "y": 72
              }
            },
            {
              "id": "25f65bf2-2b31-4d76-b9bd-84ff1b998937",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a1",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": 704,
                "y": 88
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 1464,
                "y": 136
              }
            },
            {
              "id": "1f5e56e7-4cd3-475b-83f3-1dc18426d519",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a0",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true
              },
              "position": {
                "x": 696,
                "y": 144
              }
            },
            {
              "id": "a0a4c11b-a761-4d55-b015-960f4f9b6b7a",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a1"
              },
              "position": {
                "x": 904,
                "y": 176
              }
            },
            {
              "id": "e6731ce7-9973-4f75-98e3-402603db9bdb",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b3",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 696,
                "y": 232
              }
            },
            {
              "id": "6dcb1d08-9555-4083-8290-e9223f9e7c91",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b1",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 904,
                "y": 248
              }
            },
            {
              "id": "7fc635b1-cee0-4069-adf6-6e95c0f4ee11",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b2",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "deeppink"
              },
              "position": {
                "x": 688,
                "y": 312
              }
            },
            {
              "id": "806f7064-dcd7-48b4-8b61-52a7d96f4c83",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 368,
                "y": 328
              }
            },
            {
              "id": "9eab6815-4005-453c-8f24-68951cced197",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "fuchsia",
                "name": "a0",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 904,
                "y": 344
              }
            },
            {
              "id": "2c9f3256-fa6d-417a-a97c-1739cf8e7de4",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b1",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 688,
                "y": 376
              }
            },
            {
              "id": "999ddefc-fc54-4ed2-8382-f2ebc7681344",
              "type": "basic.outputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b0",
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 904,
                "y": 416
              }
            },
            {
              "id": "8923c254-dcbe-45a5-8b41-d331eb8d7447",
              "type": "basic.inputLabel",
              "data": {
                "blockColor": "deeppink",
                "name": "b0",
                "pins": [
                  {
                    "index": "0",
                    "name": "NULL",
                    "value": "NULL"
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia"
              },
              "position": {
                "x": 672,
                "y": 448
              }
            },
            {
              "id": "c4d089d2-0978-4308-a6ab-8de0220ed9a0",
              "type": "23b15b7d7a1bc7327fad365412864b15e4edf835",
              "position": {
                "x": 1056,
                "y": 400
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "60f06ba4-1549-43a9-9104-27d82904430d",
              "type": "23b15b7d7a1bc7327fad365412864b15e4edf835",
              "position": {
                "x": 1056,
                "y": 232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2df886b0-4697-49ce-a8dd-2ffa9ede33a7",
              "type": "basic.info",
              "data": {
                "info": "A",
                "readonly": true
              },
              "position": {
                "x": 408,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 32
              }
            },
            {
              "id": "fa5825ce-289b-4004-84f5-12ee322cae15",
              "type": "basic.info",
              "data": {
                "info": "B",
                "readonly": true
              },
              "position": {
                "x": 408,
                "y": 304
              },
              "size": {
                "width": 80,
                "height": 32
              }
            },
            {
              "id": "398207eb-18f3-43a4-b4e5-481480023848",
              "type": "23b15b7d7a1bc7327fad365412864b15e4edf835",
              "position": {
                "x": 1056,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6b26d5c5-22b2-407b-9848-52eee26cf712",
              "type": "c4f23ad05c2010ec9bd213c8814c9238873037ae",
              "position": {
                "x": 528,
                "y": 16
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "09a2d839-a3c6-49f3-820b-3a16aa58bcb7",
              "type": "c4f23ad05c2010ec9bd213c8814c9238873037ae",
              "position": {
                "x": 528,
                "y": 296
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "ffa87956-5518-42b1-ba1e-0994141ed5e9",
              "type": "23b15b7d7a1bc7327fad365412864b15e4edf835",
              "position": {
                "x": 1056,
                "y": -104
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "67416698-29e8-4490-beed-0d317a4363e8",
              "type": "effd4240644b745e4d10082904b7e4fd01079074",
              "position": {
                "x": 1320,
                "y": 104
              },
              "size": {
                "width": 96,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "6b26d5c5-22b2-407b-9848-52eee26cf712",
                "port": "0f7487e5-b070-4277-bba6-acf69934afca"
              },
              "target": {
                "block": "1f5e56e7-4cd3-475b-83f3-1dc18426d519",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "6b26d5c5-22b2-407b-9848-52eee26cf712",
                "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
              },
              "target": {
                "block": "25f65bf2-2b31-4d76-b9bd-84ff1b998937",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "09a2d839-a3c6-49f3-820b-3a16aa58bcb7",
                "port": "f5a71d7b-de20-4527-80c8-0eb20de0dc77"
              },
              "target": {
                "block": "2c9f3256-fa6d-417a-a97c-1739cf8e7de4",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "09a2d839-a3c6-49f3-820b-3a16aa58bcb7",
                "port": "0f7487e5-b070-4277-bba6-acf69934afca"
              },
              "target": {
                "block": "8923c254-dcbe-45a5-8b41-d331eb8d7447",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "a0a4c11b-a761-4d55-b015-960f4f9b6b7a",
                "port": "outlabel"
              },
              "target": {
                "block": "60f06ba4-1549-43a9-9104-27d82904430d",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "6dcb1d08-9555-4083-8290-e9223f9e7c91",
                "port": "outlabel"
              },
              "target": {
                "block": "60f06ba4-1549-43a9-9104-27d82904430d",
                "port": "b1eb7708-a6a0-424d-bc2f-fab922974446"
              }
            },
            {
              "source": {
                "block": "9eab6815-4005-453c-8f24-68951cced197",
                "port": "outlabel"
              },
              "target": {
                "block": "c4d089d2-0978-4308-a6ab-8de0220ed9a0",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              }
            },
            {
              "source": {
                "block": "999ddefc-fc54-4ed2-8382-f2ebc7681344",
                "port": "outlabel"
              },
              "target": {
                "block": "c4d089d2-0978-4308-a6ab-8de0220ed9a0",
                "port": "b1eb7708-a6a0-424d-bc2f-fab922974446"
              }
            },
            {
              "source": {
                "block": "09a2d839-a3c6-49f3-820b-3a16aa58bcb7",
                "port": "33072210-9ba0-4659-8339-95952b939e6e"
              },
              "target": {
                "block": "7fc635b1-cee0-4069-adf6-6e95c0f4ee11",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "6b26d5c5-22b2-407b-9848-52eee26cf712",
                "port": "33072210-9ba0-4659-8339-95952b939e6e"
              },
              "target": {
                "block": "7979c265-4d7d-4368-b94a-3028a47786ed",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "45c3d2b2-e136-4bca-b556-b2501f1a8482",
                "port": "outlabel"
              },
              "target": {
                "block": "398207eb-18f3-43a4-b4e5-481480023848",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "b4e1aae5-0fbb-4125-bc5a-456e317fa412",
                "port": "outlabel"
              },
              "target": {
                "block": "398207eb-18f3-43a4-b4e5-481480023848",
                "port": "b1eb7708-a6a0-424d-bc2f-fab922974446"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "09a2d839-a3c6-49f3-820b-3a16aa58bcb7",
                "port": "bbe1895b-be8b-4237-b0d1-ae592e3e6208"
              },
              "target": {
                "block": "e6731ce7-9973-4f75-98e3-402603db9bdb",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "6b26d5c5-22b2-407b-9848-52eee26cf712",
                "port": "bbe1895b-be8b-4237-b0d1-ae592e3e6208"
              },
              "target": {
                "block": "a1ed3ef4-e069-4db5-b0cb-13fd1a9ba914",
                "port": "inlabel"
              }
            },
            {
              "source": {
                "block": "8d9e1163-514b-4843-b376-7d2d6b44c982",
                "port": "outlabel"
              },
              "target": {
                "block": "ffa87956-5518-42b1-ba1e-0994141ed5e9",
                "port": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "a8c3b8e1-f3f5-4383-acf3-9a3a02b36983",
                "port": "outlabel"
              },
              "target": {
                "block": "ffa87956-5518-42b1-ba1e-0994141ed5e9",
                "port": "b1eb7708-a6a0-424d-bc2f-fab922974446"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "67416698-29e8-4490-beed-0d317a4363e8",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c8393e7e-9307-4e02-85c5-6ce83d07623c",
                "port": "out"
              },
              "target": {
                "block": "6b26d5c5-22b2-407b-9848-52eee26cf712",
                "port": "0ebd46a4-769b-45e6-bcaf-e3796264aed3"
              },
              "size": 4
            },
            {
              "source": {
                "block": "806f7064-dcd7-48b4-8b61-52a7d96f4c83",
                "port": "out"
              },
              "target": {
                "block": "09a2d839-a3c6-49f3-820b-3a16aa58bcb7",
                "port": "0ebd46a4-769b-45e6-bcaf-e3796264aed3"
              },
              "size": 4
            },
            {
              "source": {
                "block": "c4d089d2-0978-4308-a6ab-8de0220ed9a0",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "67416698-29e8-4490-beed-0d317a4363e8",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "60f06ba4-1549-43a9-9104-27d82904430d",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "67416698-29e8-4490-beed-0d317a4363e8",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 1208,
                  "y": 208
                }
              ]
            },
            {
              "source": {
                "block": "398207eb-18f3-43a4-b4e5-481480023848",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "67416698-29e8-4490-beed-0d317a4363e8",
                "port": "8a2e42bb-ed17-409e-a1a3-861b358eac89"
              },
              "vertices": [
                {
                  "x": 1200,
                  "y": 128
                }
              ]
            },
            {
              "source": {
                "block": "ffa87956-5518-42b1-ba1e-0994141ed5e9",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "67416698-29e8-4490-beed-0d317a4363e8",
                "port": "17810eed-56f8-44b3-8076-d411a5011a8e"
              },
              "vertices": [
                {
                  "x": 1272,
                  "y": 32
                }
              ]
            }
          ]
        }
      }
    },
    "23b15b7d7a1bc7327fad365412864b15e4edf835": {
      "package": {
        "name": "comp2-1bit",
        "version": "0.1",
        "description": "Comp2-1bit: Comparator of two 1-bit numbers",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22312.756%22%20height=%22168.82%22%20viewBox=%220%200%20293.20803%20158.26888%22%3E%3Cg%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20stroke-width=%22.057%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M0%200h293.209v53.747H-.001zm0%20104.064h293.209v54.205H-.001z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2296.3%22%20fill=%22#00f%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618594740929
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 368,
                "y": 280
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 832,
                "y": 296
              }
            },
            {
              "id": "b1eb7708-a6a0-424d-bc2f-fab922974446",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 368,
                "y": 344
              }
            },
            {
              "id": "8839b104-b532-421e-a2da-a1272176ff9c",
              "type": "d1240143e1ff7afe57f0f11565da980612b2bb76",
              "position": {
                "x": 544,
                "y": 296
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "dffad53f-6e57-4c33-8436-42e238b64966",
              "type": "3676a00f3a70e406487ed14b901daf3e4984e63d",
              "position": {
                "x": 680,
                "y": 296
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8839b104-b532-421e-a2da-a1272176ff9c",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "dffad53f-6e57-4c33-8436-42e238b64966",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "adf3a6ae-71e2-43dd-b504-c2cdbc14dab7",
                "port": "out"
              },
              "target": {
                "block": "8839b104-b532-421e-a2da-a1272176ff9c",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "dffad53f-6e57-4c33-8436-42e238b64966",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "b1eb7708-a6a0-424d-bc2f-fab922974446",
                "port": "out"
              },
              "target": {
                "block": "8839b104-b532-421e-a2da-a1272176ff9c",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            }
          ]
        }
      }
    },
    "effd4240644b745e4d10082904b7e4fd01079074": {
      "package": {
        "name": "AND4",
        "version": "1.0.2",
        "description": "Three bits input And gate",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018m184.632-50.034h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "17810eed-56f8-44b3-8076-d411a5011a8e",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 104,
                "y": -128
              }
            },
            {
              "id": "8a2e42bb-ed17-409e-a1a3-861b358eac89",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 104,
                "y": -40
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 584,
                "y": -16
              }
            },
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 96,
                "y": 56
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 96,
                "y": 128
              }
            },
            {
              "id": "1174ea8c-b44a-49a3-9fdd-23fcfa814380",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 280,
                "y": 72
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "0a2ec5ef-f237-4895-acf8-245b5102cafe",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 272,
                "y": -112
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ec5c0b57-d5bb-4795-8e19-67c71d367786",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 432,
                "y": -16
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "1174ea8c-b44a-49a3-9fdd-23fcfa814380",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "17810eed-56f8-44b3-8076-d411a5011a8e",
                "port": "out"
              },
              "target": {
                "block": "0a2ec5ef-f237-4895-acf8-245b5102cafe",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "8a2e42bb-ed17-409e-a1a3-861b358eac89",
                "port": "out"
              },
              "target": {
                "block": "0a2ec5ef-f237-4895-acf8-245b5102cafe",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "1174ea8c-b44a-49a3-9fdd-23fcfa814380",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "ec5c0b57-d5bb-4795-8e19-67c71d367786",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "0a2ec5ef-f237-4895-acf8-245b5102cafe",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "ec5c0b57-d5bb-4795-8e19-67c71d367786",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "1174ea8c-b44a-49a3-9fdd-23fcfa814380",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "ec5c0b57-d5bb-4795-8e19-67c71d367786",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            }
          ]
        }
      }
    },
    "b2762a8f01edc037b9273378035d64a7172f3187": {
      "package": {
        "name": "comp2-8bits",
        "version": "0.1",
        "description": "Comp2-8bit: Comparator of two 8-bit numbers",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22312.756%22%20height=%22168.82%22%20viewBox=%220%200%20293.20803%20158.26888%22%3E%3Cg%20font-weight=%22400%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20stroke-width=%22.057%22%3E%3Cg%20style=%22line-height:125%25%22%3E%3Cpath%20d=%22M0%200h293.209v53.747H-.001zm0%20104.064h293.209v54.205H-.001z%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20font-size=%2296.3%22%20fill=%22#00f%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E",
        "otid": 1618594740929
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "738ae80e-c170-438b-bce7-59fab67c6e4c",
              "type": "basic.inputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 696,
                "y": 0
              }
            },
            {
              "id": "44eeec20-79b3-40e8-a9b9-df85c51cec3c",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 368,
                "y": 56
              }
            },
            {
              "id": "779b44f4-c1dd-479c-8fc3-fce1c1ba8d03",
              "type": "basic.inputLabel",
              "data": {
                "name": "a0",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "fuchsia"
              },
              "position": {
                "x": 696,
                "y": 72
              }
            },
            {
              "id": "106ddd51-311e-4f56-9774-f16e12200d7c",
              "type": "basic.outputLabel",
              "data": {
                "name": "a1",
                "range": "[3:0]",
                "blockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 888,
                "y": 96
              }
            },
            {
              "id": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 1408,
                "y": 168
              }
            },
            {
              "id": "764af6fd-ce7e-4eb9-b4f6-dd3b61172c2b",
              "type": "basic.outputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "blockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 888,
                "y": 168
              }
            },
            {
              "id": "ac2ecc0a-3e9b-4845-a180-e65bb628cfa9",
              "type": "basic.outputLabel",
              "data": {
                "name": "a0",
                "range": "[3:0]",
                "blockColor": "fuchsia",
                "size": 4
              },
              "position": {
                "x": 888,
                "y": 264
              }
            },
            {
              "id": "b0d3a80f-c569-4eea-82c9-7b8edc436870",
              "type": "basic.outputLabel",
              "data": {
                "name": "b0",
                "range": "[3:0]",
                "blockColor": "deeppink",
                "size": 4
              },
              "position": {
                "x": 888,
                "y": 336
              }
            },
            {
              "id": "008568d9-c44c-46b2-9d56-0e82da048a9a",
              "type": "basic.inputLabel",
              "data": {
                "name": "b1",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "oldBlockColor": "fuchsia",
                "blockColor": "deeppink"
              },
              "position": {
                "x": 688,
                "y": 376
              }
            },
            {
              "id": "ab9bcc04-115a-4689-8d9c-b191681a3dde",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 352,
                "y": 432
              }
            },
            {
              "id": "a67d9666-98ba-40d6-b2f5-9b871f7164e5",
              "type": "basic.inputLabel",
              "data": {
                "name": "b0",
                "range": "[3:0]",
                "pins": [
                  {
                    "index": "3",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "2",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "1",
                    "name": "",
                    "value": ""
                  },
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": true,
                "blockColor": "deeppink"
              },
              "position": {
                "x": 688,
                "y": 448
              }
            },
            {
              "id": "2df886b0-4697-49ce-a8dd-2ffa9ede33a7",
              "type": "basic.info",
              "data": {
                "info": "A",
                "readonly": true
              },
              "position": {
                "x": 408,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 32
              }
            },
            {
              "id": "fa5825ce-289b-4004-84f5-12ee322cae15",
              "type": "basic.info",
              "data": {
                "info": "B",
                "readonly": true
              },
              "position": {
                "x": 392,
                "y": 408
              },
              "size": {
                "width": 80,
                "height": 32
              }
            },
            {
              "id": "d9e92ad2-16c1-40b0-8e05-ecbd39a75142",
              "type": "438230b563d82c3a000686cd1030f4bfa85c5cc0",
              "position": {
                "x": 1040,
                "y": 320
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 1264,
                "y": 168
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "9fc7487b-36b1-45df-b103-ed97ccb8df29",
              "type": "6bdcd950abc9b45a5cdd4ffbdeff404a6f44660a",
              "position": {
                "x": 512,
                "y": 432
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "607aefdf-b411-405a-83e5-79097e66da92",
              "type": "6bdcd950abc9b45a5cdd4ffbdeff404a6f44660a",
              "position": {
                "x": 528,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
              "type": "438230b563d82c3a000686cd1030f4bfa85c5cc0",
              "position": {
                "x": 1040,
                "y": 152
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9fc7487b-36b1-45df-b103-ed97ccb8df29",
                "port": "eb61d084-ca22-4894-b8a2-f936db38f4b1",
                "size": 4
              },
              "target": {
                "block": "a67d9666-98ba-40d6-b2f5-9b871f7164e5",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "607aefdf-b411-405a-83e5-79097e66da92",
                "port": "eb61d084-ca22-4894-b8a2-f936db38f4b1",
                "size": 4
              },
              "target": {
                "block": "779b44f4-c1dd-479c-8fc3-fce1c1ba8d03",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "b0d3a80f-c569-4eea-82c9-7b8edc436870",
                "port": "outlabel"
              },
              "target": {
                "block": "d9e92ad2-16c1-40b0-8e05-ecbd39a75142",
                "port": "806f7064-dcd7-48b4-8b61-52a7d96f4c83",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "ac2ecc0a-3e9b-4845-a180-e65bb628cfa9",
                "port": "outlabel"
              },
              "target": {
                "block": "d9e92ad2-16c1-40b0-8e05-ecbd39a75142",
                "port": "c8393e7e-9307-4e02-85c5-6ce83d07623c",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "9fc7487b-36b1-45df-b103-ed97ccb8df29",
                "port": "637e64f4-0a6b-4037-9a75-89397e078a58",
                "size": 4
              },
              "target": {
                "block": "008568d9-c44c-46b2-9d56-0e82da048a9a",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "607aefdf-b411-405a-83e5-79097e66da92",
                "port": "637e64f4-0a6b-4037-9a75-89397e078a58",
                "size": 4
              },
              "target": {
                "block": "738ae80e-c170-438b-bce7-59fab67c6e4c",
                "port": "inlabel"
              },
              "size": 4
            },
            {
              "source": {
                "block": "764af6fd-ce7e-4eb9-b4f6-dd3b61172c2b",
                "port": "outlabel"
              },
              "target": {
                "block": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
                "port": "806f7064-dcd7-48b4-8b61-52a7d96f4c83",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "106ddd51-311e-4f56-9774-f16e12200d7c",
                "port": "outlabel"
              },
              "target": {
                "block": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
                "port": "c8393e7e-9307-4e02-85c5-6ce83d07623c",
                "size": 4
              },
              "size": 4
            },
            {
              "source": {
                "block": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "4e8afe74-8f38-4873-97ee-f7585d99a4aa",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "2b918e10-3e34-4a4d-a5c2-35ab1565ce1f",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "d9e92ad2-16c1-40b0-8e05-ecbd39a75142",
                "port": "4e8afe74-8f38-4873-97ee-f7585d99a4aa"
              },
              "target": {
                "block": "a6e4a9ab-5dfe-45c1-8cd9-3972a43cf7ce",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "44eeec20-79b3-40e8-a9b9-df85c51cec3c",
                "port": "out"
              },
              "target": {
                "block": "607aefdf-b411-405a-83e5-79097e66da92",
                "port": "f96fa616-e49a-4bb8-b1d0-ddafcc56569e"
              },
              "size": 8
            },
            {
              "source": {
                "block": "ab9bcc04-115a-4689-8d9c-b191681a3dde",
                "port": "out"
              },
              "target": {
                "block": "9fc7487b-36b1-45df-b103-ed97ccb8df29",
                "port": "f96fa616-e49a-4bb8-b1d0-ddafcc56569e"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "ec534d360469ec819ca951838e686682255a7c07": {
      "package": {
        "name": "PLL 25 to 12 Mhz",
        "version": "1.0.0",
        "description": "",
        "author": "Fernando Mosquera",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6cd1b3df-3bb7-41b4-8e20-c13ce727a71e",
              "type": "basic.output",
              "data": {
                "name": "clkout"
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
      }
    }
  }
}