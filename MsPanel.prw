#Include 'TOTVS.CH'

User function MsPanel()

Local oDlg    
Local oPanel1,oPanel2
     
DEFINE DIALOG oDlg TITLE "Tela Customizada" FROM 0,0 TO 300,400 PIXEL
 
@ 10,10 MSPANEL oPanel1 COLORS CLR_BLACK,CLR_HGRAY SIZE 90, 120 OF oDlg
@ 50,35 SAY "Painel 1" OF oPanel1 PIXEL
        
@ 10,105 MSPANEL oPanel2 COLORS CLR_BLACK,CLR_HGRAY SIZE 90, 120 OF oDlg RAISED
@ 50,35 SAY "Painel 2" OF oPanel2 PIXEL


ACTIVATE DIALOG oDlg CENTER
 
Return
