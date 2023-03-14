#Include 'TOTVS.CH'

//U_ComboBox()
User Function ComboBox()

// cria um array com os intens do combobox
Local aItems:= {'Item1','Item2','Item3','Item4','Item5'}

// Cria a tela principal 
DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL


 //Campo de texto
@ 020,010 SAY "Escolha uma Opcao:" SIZE 55, 07 OF oDlg PIXEL 

   // Usando New
         cCombo1:= aItems[1]
        oCombo1 := TComboBox():New(20,065,{|u|if(PCount()>0,cCombo1:=u,cCombo1)},;
        aItems,60,120,oDlg,,{||Alert('Mudou item da combo')};
        ,,,,.T.,,,,,,,,,'cCombo1')



//Cria o botão com a funcao de fechar a tela
@ 160, 180 BUTTON "Botao Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

ACTIVATE MsDialog oDlg CENTERED


return
