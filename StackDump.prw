#Include "Totvs.ch"
/*/{Protheus.doc} StackDump
Gera aquivos texto com a pilha de chamadas

@type function
@version 1.0
@license MIT License

@author Denis Tofoli (denis.tofoli@gmail.com)
@since 13/01/2022

@param cPath, character, Caminho para geração do arquivo, se vazio gerará no system
@param cFile, character, Nome do arquivo (Com extensão), se vazio gerará um nome (data e hora)
/*/
User Function StackDump(cPath,cFile)
    Local   n     := 0
    Local   nHdl  := 0
    Default cPath := "\system\"
    Default cFile := "stack_dump_" + dtos(date()) + "_" + StrTran(Time(),":") + ".txt"

    cPath := AllTrim(cPath)
    If Right(cPath,1) <> "\"
        cPath += "\"
    EndIf

    cFile := cPath + cFile
    nHdl := fCreate(cFile)

    If nHdl > 0
        While !Empty(ProcName(n))
            fWrite(nHdl,StrZero(n,3) + " - " + ProcName(n) + CRLF)
            n++
        EndDo
    EndIf
     
    fClose(nHdl)
Return nil
