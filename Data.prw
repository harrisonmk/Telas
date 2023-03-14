#Include 'TOTVS.CH'


//U_Data()
User Function Data()

//Variaveis
Local oDlg, oGet1
Local cGet1 := DATE() //Adiciona a data no campo de input

// Cria a tela principal 
DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL


 
@ 020,010 SAY "Informe a Data:" SIZE 55, 07 OF oDlg PIXEL 
// Cria o Objeto tGet usando o comando @ .. GET
@ 15,055 GET oGet1 VAR cGet1 SIZE 60,10 OF oDlg PIXEL 


//Cria o botão com a funcao de fechar a tela
@ 160, 180 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

ACTIVATE MsDialog oDlg CENTERED

Return
