#include "protheus.ch"




User Function Radio()

	DEFINE MsDialog oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL


	nRadio := 1
	aItems := {'Item 1','Item 2','Item 3'}
	oRadio := TRadMenu():New (01,01,aItems,,oDlg,,,,,,,,100,12,,,,.T.)
	oRadio:bSetGet := {|u|Iif (PCount()==0,nRadio,nRadio:=u)}


	@ 160, 180 BUTTON "Botao Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

	ACTIVATE MsDialog oDlg CENTERED

Return
