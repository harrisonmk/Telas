#Include 'TOTVS.CH'



User Function Get()

Local oDlg, oGet1, oGet2 
Local cGet1 := Space(20)
Local cGet2 := Space(20)

DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL


 
@ 020,010 SAY "Informe o nome:" SIZE 55, 07 OF oDlg PIXEL 
// Cria o Objeto tGet usando o comando @ .. GET
@ 15,055 GET oGet1 VAR cGet1 SIZE 40,10 OF oDlg PIXEL 

@ 070,010 SAY "Informe a senha:" SIZE 55, 07 OF oDlg PIXEL 
// Cria o Objeto tGet usando o comando @ .. GET
@ 65,055 GET oGet2 VAR cGet2 SIZE 40,10 OF oDlg PIXEL VALID !empty(cGet2) PASSWORD


@ 160, 180 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

ACTIVATE MsDialog oDlg CENTERED

Return
