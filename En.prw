#Include 'TOTVS.CH'

User Function Cho

Local oDlg 
Local lF3
Local lMemoria
Local lColumn
Local caTela
Local lNoFolder
Local lProperty

Local cAlias
Local nReg := 1
Local nOpc := 1
Local aPos
Local aAlterEnch
Local nModelo

Private aCpoEnch := {"A1_COD","A1_NOME"}

Enchoice(cAlias, nReg, nOpc, /*aCRA*/, /*cLetra*/, /*cTexto*/, aCpoEnch, aPos, aAlterEnch,nModelo,/*nColMens*/,/* cMensagem*/,/* cTudoOk*/, oDlg, lF3,lMemoria, lColumn, caTela, lNoFolder, lProperty)

Return
