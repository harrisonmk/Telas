#include "TOTVS.CH"

//u_TWBroLeg
//cria um TWBROWSE com legendas

// U_TWBroLeg()
User Function TWBroLeg()


	Local oOK := LoadBitmap(GetResources(),'br_verde')
	Local oNO := LoadBitmap(GetResources(),'br_vermelho')

	DEFINE DIALOG oDlg TITLE "Tela Customizada" FROM 180,180 TO 550,700 PIXEL

	oBrowse := TWBrowse():New( 01 , 01, 260,184,,{'','Codigo','Fantasia','Razao Social'},{20,30,30},;
		oDlg,,,,,{||},,,,,,,.F.,,.T.,,.F.,,, )

	aBrowse   := {{.T.,'000001','CLIENTE 1','NOME 1'},;
		          {.F.,'000002','CLIENTE 2','NOME 2'},;
	              {.T.,'000003','CLIENTE 3','NOME 3'},;
                  {.T.,'000004','CLIENTE 4','NOME 4'} }

	oBrowse:SetArray(aBrowse)

	oBrowse:bLine := {||{If(aBrowse[oBrowse:nAt,01],oOK,oNO),aBrowse[oBrowse:nAt,02],;
		aBrowse[oBrowse:nAt,03],aBrowse[oBrowse:nAt,04] } }


// Troca a imagem no duplo click do mouse    
	oBrowse:bLDblClick := {|| aBrowse[oBrowse:nAt][1] := !aBrowse[oBrowse:nAt][1],;
		oBrowse:DrawSelect()}

    //Cria o botão com a funcao de fechar a tela
	@ 160, 180 BUTTON "Botão Para Sair" SIZE 070, 020 PIXEL OF oDlg ACTION (oDlg:End())      

	
	ACTIVATE DIALOG oDlg CENTERED
Return
