module matriz(A,B,C,D,E,S1,S2,S3,S4,S5);
	input A,B,C,D,E;
	output S1,S2,S3,S4,S5;
	wire F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16, F17, F18, F19, F20, F21, F22, F23, F24, F25;
	
//Controle das colunas da matriz

//coluna 1
	and (F1, A, B, !C, !D, !E);
	and (F2 ,!C,!D,E);
	and (F3, C,!D,!E);
	and (F4, !C,D,!E);
	or  (F5, F2,F3,F4);
	and (F6, F5, A,!B);
	or (S1,F1, F6 );

//coluna 2
	and (F7, F5, !A,B);
	or (S2, F1,F7);
 
//coluna 3
	and (F8, A, !B, C, !D, !E);
	and (F9, !B, D, !E);
	and (F10, !B, !D, E);
	and (F11, B, !D, !E);
	or  (F12, F9, F10, F11);
	and (F13, F12, !A, C);
	or (S3, F13, F8);

//coluna 4
	and (F14, !B, !C, E);
	and (F15, !B, C, !E);
	and (F16, B, !C, !E);
	or (F17, F14, F15, F16);
	and (F18, F17, !A, D);
	and (F19, A, !B, !C, D, !E);
	or (S4, F18, F19);

//coluna 5
	and (F20, A, !B, !C, !D, E);
	and (F21, !B, !C, D);
	and (F22, !B, C, !D);
	and (F23, B, !C, !D);
	or (F24, F21, F22, F23);
	and (F25, !A, E, F24);
	or (S5, F25, F20);
	
endmodule 