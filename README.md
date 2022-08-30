# Calculator-using-Verilog
<p>
|*****************************************************************************************|
  </br>
|==============================   Verilog Calculator   ===================================|
</br>
|_________________________________________________________________________________________|
</br>
</p>
<h3>Created by, Group Banula Lakwindu</h3>
<p>
*******************************************************************************************
  </br>
| Required Softwear :- Quatrus Prime 20.1                                                 |
</br>
*******************************************************************************************
</br>
|															|
| */ Please read readme carefuly before use calculator /*						|
|															|
|	#### Input Details ####											|
|															|
|	-> General													|
|	KEY1 - Reset												|
|	SW9 - Change the mode (0 - Input Mode / 1- Operation Mode)					|
|	SW8 - Change the input (0 - Number A / 1 - Number B)						|
|	SW7 - Enable input (0 - Disable / 1 - Enable)							|
|															|
|	-> Input Mode												|
|	SW6 to SW0 - Number Inputs										|
|															|
|	-> Operation Mode												|
|	SW0 - Add													|	
|	SW1 - Subtract												|
|	SW2 - Multipli												|
|	SW3 - Divide 												|
|															|
|	#### Output Details ####										|
|															|
|	HEX5,HEX4 - Number A											|
|	HEX3,HEX2 - Number B											|
|	HEX1,HEX0 - Answer											|
|	LEDR0 - Add Operation											|
|	LEDR1 - Subtract Operation										|
|	LEDR2 - Multipli Operation										|
|	LEDR3 - Divide Operation										|
|															|
|															|
|	#### Calculator Instructions ####									|
|															|
|	-> Run DE10_LITE_Golden_Top.qpf inside Golden_Top folder.					|
|															|
|	-> Push KEY1 to reset calculator.									|
|															|
|	-> Switch on SW7 to enable number A.								|
|															|
|	-> Input number A using SW6 to SW0.									|
|	(Your input will show in HEX5 and HEX4)								|
|															|
|	-> Switch off SW7 to store number A.								|
|															|
|	-> Switch off all switches.										|
|															|
|	-> Switch on SW8 to input number B.									|
|															|
|	-> Switch on SW7 to enable number B.								|
|															|
|	-> Input number B using SW6 to SW0.									|
|	(Your input will show in HEX3 and HEX2)								|
|															|
|	-> Switch off SW7 to store number B.								|
|															|
|	-> Switch off all switches.										|
|															|
|	-> Switch on SW9 to switch to the operation mode.						|
|															|
|	-> Switch on, SW0 to A + B										|
|		     	  SW1 to A - B										|
|		        SW2 to A * B										|
|		        SW3 to A / B										|
|															|
|	-> Answer will show in HEX1 and HEX0.								|
|															|
|	Reset calculator before use again...								|
|															|
-------------------------------------------------------------------------------------------
</p>
