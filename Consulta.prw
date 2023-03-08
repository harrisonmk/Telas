#include "TOTVS.CH"


User Function Consul()

	@ nPos2 + 040, 195 BTNBMP oBtn2 RESOURCE "PESQUISA" SIZE 025, 025 OF oDlg_MudaStatus ACTION cGet_Motivo := ChamaConsulta("SB1",cGet_Motivo) PIXEL
Return




Static Function ChamaConsulta(consulta,campo)
	if ConPad1(NIL,NIL,NIL,consulta)
		campo    := aCpoRet[1]
	endif
Return campo
