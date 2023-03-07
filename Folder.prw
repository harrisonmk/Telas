#Include 'TOTVS.CH'

User Function tFolder1()
Local oDlg    
Local oFolder
     
DEFINE DIALOG oDlg TITLE "Exemplo de FOLDER" FROM 0,0 TO 600,800 PIXEL
 
@ 10,15 FOLDER oFolder SIZE 260, 200 OF oDlg  PIXEL
 
oFolder:AddItem("Aba 01",.T.)
oFolder:AddItem("Aba 02",.T.)
 
@ 10,10 SAY "Texto na Aba 01" OF oFolder:aDialogs[1] PIXEL
@ 10,10 SAY "Texto na Aba 02" OF oFolder:aDialogs[2] PIXEL
         
oFolder:SetOption(1)
 
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
