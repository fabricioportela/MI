module display(A,B,C,D,E,DA,DB,DC,DD,DE,DF,DG,DP);

	input A,B,C,D,E;
	output DA,DB,DC,DD,DE,DF,DG,DP;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10, w11, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36;

//Controle dos segmentos do display

// Segmento A:
	and (w1,!A,!B, C, !D, E );
	and (w2, !A, B, !C, D, !E);
	or (DA, w1,w2);
	
// Segmento B:
	and (w3, !B, !C, !D);
	and (w4, B, C);
	and (w5, A, E);
	and (w6, B, D, E);
	and (w7, A, B, D);
	and (w8, A, C, D);
	and (w10, C, D, E);
	and (w11, !A, !D, !E);
	and (w13, !A, !B, !C, !E);
	or (w30, w3,w4,w5,w6);
	or (w31, w7,w8,w10);
	or (w32, w11,w13);
	or (DB, w30, w31, w32);
	
// Segmento C:
	and (w14, !A, !B, !C, !D);
	and (w15, !B, !C, !D, !E);
	and (w16, A, B, E);
	and (w17, A, B, C);
	and (w9, A, C, E);
	and (w18, C, D);
	and (w19, !A, !B, !E);
	and (w20, B, C, E);
	and (w21, B, D, E);
	and (w22, !A, !C, !D, !E);
	and (w23, A, D, E);
	or (w33,w9,w7, w14, w15);
	or (w34,w16, w17, w18, w19);
	or (w35, w20, w21, w22, w23);
	or (DC, w33, w34, w35);
	
// Segmento D:
	and (w24, A, !B, !C, D, !E);
	or (DD, w1, w2, w24);

// Segmento E:
	and (w25, A, B, !C, !D, !E);
	and (w26, !A, B, !C, !D, E);
	and (w27, !A, B, C, !D, !E);
	or (w36,w24, w25, w26, w27);
	or (DE, w1, w2, w36);
	
//	Segmento F:
	and (w28, !A, !B, C, D, !E);
	or (DF, w1, w24, w26, w28);
	
// Segmento G:
	and (w29, !A, !B, !C, D, E);	
	or (DG, w1, w24, w29);
	
// Ponto:
	or (DP, A, !A);
	
endmodule 