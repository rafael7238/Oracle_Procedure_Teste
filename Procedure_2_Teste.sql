create or replace PROCEDURE Consulta_Aluno
( pCodigo        IN  TALUNO.Cod_Aluno%TYPE,
  pNome          OUT TALUNO.Nome%TYPE,
  pCep           OUT TALUNO.Cep%TYPE,
  pCidade        OUT TALUNO.Cidade%TYPE,
  pCidade2        OUT TALUNO.Cidade%TYPE)
IS
BEGIN
  SELECT nome, Cep, cidade
  INTO   pNome, pCep, pCidade
  FROM   taluno
  WHERE  cod_aluno = pCodigo;
  UPDATE TALUNO SET cidade = 'NADA' WHERE COD_ALUNO=500;
  UPDATE TALUNO SET cidade = 'NADA' WHERE COD_ALUNO=500;
  EXCEPTION
    WHEN OTHERS THEN
      
      DBMS_OUTPUT.PUT_LINE('tESTE');
      DBMS_OUTPUT.PUT_LINE('tESTE');
END;