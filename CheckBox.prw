#include "TOTVS.CH"

User Function CheckBox()


 DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL

   lCheck := .T.    // Usando New   
   oCheck1 := TCheckBox():New(01,01,'CheckBox 1',{||lCheck},oDlg,100,210,,,,,,,,.T.,,,)
   oCheck2 := TCheckBox():New(11,01,'CheckBox 2',{||lCheck},oDlg,100,210,,,,,,,,.T.,,,)
   oCheck3 := TCheckBox():New(21,01,'CheckBox 3',,oDlg,100,210,,,,,,,,.T.,,,)

   @ 160, 180 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())
   

 ACTIVATE DIALOG oDlg CENTERED
Return
