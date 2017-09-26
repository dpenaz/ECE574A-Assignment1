Group members:
	- Dillon Pena (dpena94)
	- Reginald Glenn (rrg1)
	- Jeffrey Burton (jeffreyb1)
	- Devan Roper (dpr32)

Using Xilinx Vivado 2017.2

Target FPGA: Artix-7 xc7a200tfbg676-3
Speed Grade: 3

How the critical path was calculated:
Go through each line of the netlist, and calculate the time until that operation is complete, by adding the critical delay of the component to the delay of the input with the largest delay. No wire delay estimation.
For example (circuit1):
>>> add8 = 6.744
>>> comp8 = 7.621
>>> mux8 = 6.063
>>> mul16 = 9.658
>>> sub16 = 7.648
>>> reg16 = 4.284
>>> d = add8
>>> e = add8
>>> g = comp8 + max(d,e)
>>> z = mux8 + max(g,d,e)
>>> f = mul16
>>> xwire = sub16 + max(f,d)
>>> x = reg16 + xwire
>>> x
21.589999999999996