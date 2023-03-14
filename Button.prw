#Include 'TOTVS.CH'

//U_BOTAO
User Function BOTAO
Local oDlg 

// Cria a tela principal
DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 0,0 TO 400,600 PIXEL 

//Cria o botão com a funcao de fechar a tela
@ 160, 220 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

ACTIVATE MsDialog oDlg CENTER 

RETURN


