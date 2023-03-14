#Include 'TOTVS.CH'


// U_Cho
User Function Cho

   //Variaveis
	Local oDlg
	Local lF3
	Local lMemoria
	Local lColumn
	Local caTela
	Local lNoFolder
	Local lProperty

	Local cAlias
	Local nReg := 1
	Local nOpc := 1
	Local aPos
	Local aAlterEnch
	Local nModelo

    // Cria a tela principal   
	DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL

    //Array com o codigo e o nome
	Private aCpoEnch := {"A1_COD","A1_NOME"}


    //cria uma enchoice com as informações do codigo e nome do cliente
	Enchoice(cAlias, nReg, nOpc, /*aCRA*/, /*cLetra*/, /*cTexto*/, aCpoEnch, aPos, aAlterEnch,nModelo,/*nColMens*/,/* cMensagem*/,/* cTudoOk*/, oDlg, lF3,lMemoria, lColumn, caTela, lNoFolder, lProperty)

    //Cria o botão com a funcao de fechar a tela
	@ 160, 180 BUTTON "Botao Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

	ACTIVATE DIALOG oDlg CENTER

Return
