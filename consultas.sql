USE EventTableManager;

-- 1. Listar todos os convidados confirmados
SELECT * FROM Convidado WHERE Status_RSVP = 'Confirmado';

-- 2. Ver quem está sentado na Mesa 1 (Usa JOIN para juntar as tabelas)
SELECT A.Numero_Mesa, C.Nome 
FROM Alocacao A
JOIN Convidado C ON A.ID_Convidado = C.ID_Convidado
WHERE A.Numero_Mesa = 1;

-- 3. Contar quantos convidados existem por Grupo Social
SELECT G.Nome_Grupo, COUNT(C.ID_Convidado) as Total
FROM Grupo_Social G
JOIN Convidado C ON G.ID_Grupo = C.ID_Grupo
GROUP BY G.Nome_Grupo;