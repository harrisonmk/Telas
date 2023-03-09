#Include 'TOTVS.CH'

// u_ConsuPa()    

User Function ConsuPa()

	DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL

	@ 020,010 SAY "Pesquisa:" SIZE 55, 07 OF oDlg PIXEL
	@ 15,055 MSGET oTGet1 VAR cNome F3 "SA1" PICTURE "@!" SIZE 50, 009 OF oPanel PIXEL HASBUTTON

	@ 160, 180 BUTTON "Botao Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

	ACTIVATE DIALOG oDlg CENTER

Return


