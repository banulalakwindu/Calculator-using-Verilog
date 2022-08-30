# Calculator-using-Verilog
<p>
|*****************************************************************************************|
  </br>
|====================   Verilog Calculator   ======================|
</br>
|_________________________________________________________________________________________|
</br>
</p>
<h3>Created by, Banula Lakwindu</h3>
<p>
*******************************************************************************************
  </br>
 Required Softwear :- Quatrus Prime 20.1                                                 
</br>
*******************************************************************************************
</br>
								</br>							
 */ Please read readme carefuly before use calculator /*						
</br>										</br>				
	#### Input Details ####		</br>									
							</br>								
	-> General			</br>										
	KEY1 - Reset		</br>										
	SW9 - Change the mode (0 - Input Mode / 1- Operation Mode)</br>					
	SW8 - Change the input (0 - Number A / 1 - Number B)	</br>					
	SW7 - Enable input (0 - Disable / 1 - Enable)		</br>					
													</br>		
	-> Input Mode				</br>								
	SW6 to SW0 - Number Inputs	</br>									
								</br>							
	-> Operation Mode		</br>										
	SW0 - Add				</br>										
	SW1 - Subtract			</br>									
	SW2 - Multipli			</br>									
	SW3 - Divide 			</br>									
							</br>							
	#### Output Details ####	</br>									
								</br>							
	HEX5,HEX4 - Number A		</br>									
	HEX3,HEX2 - Number B		</br>									
	HEX1,HEX0 - Answer			</br>								
	LEDR0 - Add Operation		</br>									
	LEDR1 - Subtract Operation	</br>									
	LEDR2 - Multipli Operation		</br>								
	LEDR3 - Divide Operation		</br>								
									</br>						
									</br>						
	#### Calculator Instructions ####			</br>						
											</br>				
	-> Run DE10_LITE_Golden_Top.qpf inside Golden_Top folder.	</br>				
														</br>	
	-> Push KEY1 to reset calculator.					</br>				
														</br>	
	-> Switch on SW7 to enable number A.				</br>				
														</br>	
	-> Input number A using SW6 to SW0.					</br>				
	(Your input will show in HEX5 and HEX4)				</br>				
														</br>	
	-> Switch off SW7 to store number A.				</br>				
														</br>	
	-> Switch off all switches.							</br>			
														</br>	
	-> Switch on SW8 to input number B.					</br>				
														</br>	
	-> Switch on SW7 to enable number B.				</br>				
														</br>	
	-> Input number B using SW6 to SW0.					</br>				
	(Your input will show in HEX3 and HEX2)				</br>				
														</br>	
	-> Switch off SW7 to store number B.				</br>				
														</br>	
	-> Switch off all switches.							</br>			
														</br>	
	-> Switch on SW9 to switch to the operation mode.	</br>					
														</br>	
	-> Switch on, SW0 to A + B							</br>			
		     	  SW1 to A - B							</br>			
		        SW2 to A * B							</br>			
		        SW3 to A / B							</br>			
														</br>	
	-> Answer will show in HEX1 and HEX0.				</br>				
														</br>	
	Reset calculator before use again...				</br>				
														</br>	
-------------------------------------------------------------------------------------------
</p>
