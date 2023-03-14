#Include 'TOTVS.CH'

//U_MsPanel()
User function MsPanel()

//Variaveis
Local oDlg    
Local oPanel1,oPanel2
     
// Cria a tela principal     
DEFINE DIALOG oDlg TITLE "Tela Customizada" FROM 0,0 TO 300,400 PIXEL
 
// Cria a MS Panel 1 
@ 10,10 MSPANEL oPanel1 COLORS CLR_BLACK,CLR_HGRAY SIZE 90, 120 OF oDlg
@ 50,35 SAY "Painel 1" OF oPanel1 PIXEL

// Cria a MS Panel 2         
@ 10,105 MSPANEL oPanel2 COLORS CLR_BLACK,CLR_HGRAY SIZE 90, 120 OF oDlg RAISED
@ 50,35 SAY "Painel 2" OF oPanel2 PIXEL


ACTIVATE DIALOG oDlg CENTER
 
Return
