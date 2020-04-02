		LOC	Data_Segment
NL 		IS	#0A
BWait    IS    #13

		GREG	@		


		LOC	#100
	
Main	TRAP  0,BWait,0
		TRAP	0,Halt,0