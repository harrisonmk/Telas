#Include 'TOTVS.CH'

User Function BOTAO
Local oDlg 

DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 0,0 TO 400,600 PIXEL 


@ 160, 220 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

ACTIVATE MsDialog oDlg CENTER 

RETURN


