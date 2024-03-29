#Include 'TOTVS.CH'
#INCLUDE 'PROThEUS.CH'
#INCLUDE 'RWMAKE.CH'

// U_AxCad()
USER FUNCTION AxCad()



	PRIVATE cAlisas := "SA2" //tabela de fornecedores
	PRIVATE cCadastro  := "Cadastro Fornecedores Teste" //titulo da tela
	PRIVATE cFunExc := "U_exclusao()" //funcao de exclusao
	PRIVATE cFunAlt := "U_altera()" //funcao de alteracao e inclusao



	//busca o cadastro de fornececores
	AxCadastro(cAlisas, OemToAnsi(cCadastro), cFunExc,cFunAlt)



Return

user Function exclusao()

//Texto da caixa
//titulo da caixa
//para aparecer dois botoes com as opcoes de YES ou NO
	LOCAL lret := MsgBox("Tem certeza que deseja excluir o registro selecionado ?","Confirmacao","YESNO")

//retorna true .T. ou false .F. dependendo da escolha do usuario
return lret


//Altera alguma informacao da tabela ou adiciona
user Function altera()

	LOCAL lret1 := .F.
	LOCAL cMsg := ""

	//INCLUI variavel padrao do proteus
    //Verifica se e inclusao de registro ou alteracao
	If INCLUI
		cMsg := "Confirma a inclusao do Registro ?"
	Else
		cMsg := "Confirma a alteracao do Registro ?"

	ENDIF

	lret1 := MsgBox(cMsg,"Confirmacao","YESNO")

return lret1
