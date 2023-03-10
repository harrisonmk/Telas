#include "TOTVS.CH"

// u_TWBrowse
//cria um TWBROWSE Padrao
User Function TWBrowse()

	local oDlg as object
	local oBrowse as object
	local aBrowse as array



//TDialog():New( [ nTop ], [ nLeft ], [ nBottom ], [ nRight ], [ cCaption ], [ uParam6 ], [ uParam7 ], [ uParam8 ], [ uParam9 ], [ nClrText ], [ nClrBack ], [ uParam12 ], [ oWnd ], [ lPixel ], [ uParam15 ], [ uParam16 ], [ uParam17 ], [ nWidth ], [ nHeight ], [ lTransparent ] )
	oDlg = TDialog():New( 180, 180, 550, 700, "Tela Customizada",,, .F.,,,,,, .T.,,,,, )

//TWBrowse(): New ( [ nRow], [ nCol], [ nWidth], [ nHeight], [ bLine], [ aHeaders], [ aColSizes], [ oDlg], [ cField], [ uValue1], [ uValue2], [ bChange], [ bLDblClick], [ bRClick], [ oFont], [ oCursor], [ nClrFore], [ nClrBack], [ cMsg], [ uParam20], [ cAlias], [ lPixel], [ bWhen], [ uParam24], [ bValid], [ lHScroll], [ lVScroll] )
	oBrowse := TWBrowse():New(01, 01, 260, 184,,,, oDlg,,,,,,,,,,,, .F.,, .T.,, .F.,,,)

	aBrowse := {{"000001", "Cliente 1", "Nome 1"}, { "000002",  "Cliente 2", "Nome 2"}, {"000003", "Cliente 3", "Nome 3"},{"000004", "Cliente 4", "Nome 4"} }

	oBrowse:setArray(aBrowse)

//TCColumn():New( < cTitulo >, < bData >, [ cPicture ], [ uParam4 ], [ uParam5 ], [ cAlinhamento ], [ nLargura ], [ lBitmap ], [ lEdit ], [ uParam10 ], [ bValid ], [ uParam12 ], [ uParam13 ], [ uParam14 ] )

	oBrowse:addColumn( TCColumn():New("Codigo", {||aBrowse[oBrowse:nAt,01]},             /*cPicture*/ ,,, "CENTER"  , 50, .F., .F.,,,,,) )
	oBrowse:addColumn( TCColumn():New("Fantasia",   {||aBrowse[oBrowse:nAt,02]},,,, "CENTER" , 50, .F., .F.,,,,,) )
	oBrowse:addColumn( TCColumn():New("Razao Social",   {||aBrowse[oBrowse:nAt,03]},,,, "CENTER" , 10, .F., .F.,,,,,) )

	oBrowse:bLDblClick := {|| aBrowse[oBrowse:nAt][1] := !aBrowse[oBrowse:nAt][1], oBrowse:drawSelect() }

	@ 150, 180 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())

//Activate( [ uParam1 ], [ uParam2 ], [ uParam3 ], [ lCentered ], [ bValid ], [ uParam6 ], [ bInit ], [ uParam8 ], [ uParam9 ] )
	oDlg:Activate(,,,.T.,,,,,)


Return
