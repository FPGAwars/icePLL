

# icepll Collection

[![Icestudio][icestudio-image]][icestudio-url]
![Version][version-image]


Working with PLLs (Phase Locked Loops)
## Documentation
Find all the information on the [WIKI page](https://github.com/FPGAwars/icePLL/wiki)  


## License

Licensed under [LGPL-3.0](https://opensource.org/licenses/LGPL-3.0).

## Install

For installing and using this collection in Icestudio follow these steps:

* Download the collection: [stable](https://github.com/FPGAwars/icePLL/archive/refs/tags/v0.1.0.zip) or [development](https://github.com/FPGAwars/icePLL/archive/refs/heads/main.zip)
* Install the collection: *Tools > Collections > Add*
* Select the collection: *Select > Collection*

## Usage for ice40 chip series

In the collection manager the icePLL-main menu should now be visible. Here you can find PLL blocks for the ice40 and ECP5 chips.
For the ice40 LP/HX the PLL's are located at I/O bank 2, see the ice40 [datasheet](https://datasheet.lcsc.com/lcsc/2201180600_Lattice-ICE40HX4K-TQ144_C1521989.pdf) under "Architecture Overview. 
For other chipset checkout their datasheet's, fx via octopart.
The PLL's can use a reference clk directly, if the clk is connected to an GBIN on I/O bank 2, in the case of the ice40 LP/HX series. Otherwise the reference clk can be used in-directly.
This results in longer routing, leading to a potionel issue at higher freqencies although not yet confirmed.

If a clk is connected directly to the PLL's, then the pll40_pad should be used. If clk is not directly connected then pll40_core.


## Usage for ECP5

* TODO

## Authors
* [Carlos Venegas](https://github.com/cavearr)

## Contributors
* [Obijuan](https://github.com/Obijuan)


-------
![](https://github.com/FPGAwars/icestudio-wiki/raw/main/Logos/fgpawars-banner.svg)


<!-- Badges -->
[icestudio-image]: https://img.shields.io/badge/collection-icestudio-blue.svg
[icestudio-url]: https://github.com/FPGAwars/icestudio
[version-image]: https://img.shields.io/badge/version-v0.1.0-orange.svg
