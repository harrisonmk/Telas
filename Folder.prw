#Include 'TOTVS.CH'

User Function tFolder1()
Local oDlg    
Local oFolder
     
DEFINE DIALOG oDlg TITLE "Tela Customizada" FROM 0,0 TO 600,800 PIXEL
 
@ 10,15 FOLDER oFolder SIZE 260, 200 OF oDlg  PIXEL
 
// adiciona as abas
oFolder:AddItem("Pasta 01",.T.)
oFolder:AddItem("Pasta 02",.T.)
oFolder:AddItem("Pasta 03",.T.)
oFolder:AddItem("Pasta 04",.T.)
oFolder:AddItem("Pasta 05",.T.)
 
@ 10,10 SAY "Texto na Aba 01" OF oFolder:aDialogs[1] PIXEL
@ 10,10 SAY "Texto na Aba 02" OF oFolder:aDialogs[2] PIXEL
@ 10,10 SAY "Texto na Aba 03" OF oFolder:aDialogs[3] PIXEL
@ 10,10 SAY "Texto na Aba 04" OF oFolder:aDialogs[4] PIXEL
@ 10,10 SAY "Texto na Aba 05" OF oFolder:aDialogs[5] PIXEL
         
oFolder:SetOption(1)

@ 160, 180 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())
 
ACTIVATE DIALOG oDlg CENTER


 
Return
 
 
User Function tFolder2()
Local oDlg    
Local oFolder
     
DEFINE DIALOG oDlg TITLE "Exemplo de FOLDER" FROM 0,0 TO 600,800 PIXEL
 
@ 10,15 FOLDER oFolder PROMPTS 'Aba 01','Aba 02' SIZE 260, 200 OF oDlg  PIXEL
 
@ 10,10 SAY "Texto na Aba 01" OF oFolder:aDialogs[1] PIXEL
@ 10,10 SAY "Texto na Aba 02" OF oFolder:aDialogs[2] PIXEL
 
ACTIVATE DIALOG oDlg CENTER
 
Return
