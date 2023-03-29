module saidas(A,B,C,D,E,S1,S2,S3,S4,S5,A1,B1,C1,L1,L2,L3,L4,L5,L6,L7,D1,D2,D3,D4,DA,DB,DC,DD,DE,DF,DG,DP);
	input A,B,C,D,E,A1,B1,C1;
	output S1,S2,S3,S4,S5,L1,L2,L3,L4,L5,L6,L7,D1,D2,D3,D4,DA,DB,DC,DD,DE,DF,DG,DP; 
   
	matriz(A,B,C,D,E,S1,S2,S3,S4,S5);
	display(A,B,C,D,E,DA,DB,DC,DD,DE,DF,DG,DP);
	
//Controle das linhas da matriz e digitos do display
   or (L1, A1, B1,!C1);
	or (L2, A1, !B1, C1);
	or (L3, A1, !B1, !C1);
	or (L4, !A1, B1, C1);
	or (L5, !A1, B1, !C1);
	or (L6, !A1, !B1, C1);
	or (L7, !A1, !B1, !C1);
	or (D1, A1, B1, C1);
	or (D2, A, !A);
	or (D3, A, !A);
	or (D4, A, !A);

endmodule 