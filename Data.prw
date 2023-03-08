#Include 'TOTVS.CH'



User Function Data()

Local oDlg, oGet1
Local cGet1 := DATE()


DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL


 
@ 020,010 SAY "Informe a Data:" SIZE 55, 07 OF oDlg PIXEL 
// Cria o Objeto tGet usando o comando @ .. GET
@ 15,055 GET oGet1 VAR cGet1 SIZE 60,10 OF oDlg PIXEL 



@ 160, 180 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

ACTIVATE MsDialog oDlg CENTERED

Return
