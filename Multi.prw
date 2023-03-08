#Include 'TOTVS.CH'

User Function Multi()

    
    Local aArea         := FWGetArea()
    Local nCorFundo     := RGB(238, 238, 238)
    Local nJanAltura    := 308
    Local nJanLargur    := 635 
    Local cJanTitulo    := 'Tela Customizada'
    Local lDimPixels    := .T. 
    Local lCentraliz    := .T. 
    Local nObjLinha     := 0
    Local nObjColun     := 0
    Local nObjLargu     := 0
    Local nObjAltur     := 0
    Private cFontNome   := 'Tahoma'
    Private oFontPadrao := TFont():New(cFontNome, , -12)
    Private oDialogPvt 
    Private bBlocoIni   := {|| /*fSuaFuncao()*/ } //Aqui voce pode acionar funcoes customizadas que irao ser acionadas ao abrir a dialog 
    //objeto0 
    Private oSayObj0 
    Private cSayObj0    := 'Label'  
    //objeto1 
    Private oMulObj1 
    Private cMulObj1    := "linha 1" + Chr(13) + Chr(10) + "linha 2"+ Chr(13) + Chr(10) + "linha 3"+ Chr(13) + Chr(10) +"linha 4" + Chr(13) + Chr(10) + "linha 5" 
    //objeto2 

    
    //Cria a dialog
    oDialogPvt := TDialog():New(0, 0, nJanAltura, nJanLargur, cJanTitulo, , , , , , nCorFundo, , , lDimPixels)
    
        //objeto0 - usando a classe TSay
        nObjLinha := 31
        nObjColun := 22
        nObjLargu := 25
        nObjAltur := 6
        oSayObj0  := TSay():New(nObjLinha, nObjColun, {|| cSayObj0}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //objeto1 - usando a classe TMultiGet
        nObjLinha := 21
        nObjColun := 50
        nObjLargu := 65
        nObjAltur := 100
        oMulObj1  := TMultiGet():New(nObjLinha, nObjColun, {|u| Iif(PCount() > 0 , cMulObj1 := u, cMulObj1)}, oDialogPvt, nObjLargu, nObjAltur, oFontPadrao, , , , , lDimPixels, , , /*bWhen*/, , , /*lReadOnly*/, /*bValid*/, , , /*lNoBorder*/, .T.)

        //objeto2 - usando a classe TButton
        nObjLinha := 125
        nObjColun := 213
        nObjLargu := 100
        nObjAltur := 20
        @ nObjLinha, nObjColun BUTTON "Botão Para Sair" SIZE nObjLargu, nObjAltur PIXEL OF oDialogPvt ACTION (oDialogPvt:End())
    
    //Ativa e exibe a janela
    oDialogPvt:Activate(, , , lCentraliz, , , bBlocoIni)
    
    FWRestArea(aArea)
Return
