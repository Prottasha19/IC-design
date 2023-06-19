# IC-design

Design for test and generation of test patterns.

These steps are followed:

	a. Modify the design
	b. Integrate the scan architecture into the design
	c. Automatic Test Pattern Generation (ATPG)
	d. Simulating the design using the generated patterns
	
Here, the Design Compiler tool from Synopsys as well as INNOVUS from Cadence are used.

To configure the DFT there are many options which should be set to configure the DFT. Among all options, we usually set the clock, test period, type of scan cells, the reset, scan input and output, Scan enable and test mode. There are three widly used scan cells, Muxed-D Scan Cell, Clocked Scan Cell and LSSD Scan Cell. Here, we use MUXED-D scan cells.
