USE EventTableManager;

-- --- COMANDOS DE ATUALIZAÇÃO (UPDATE) ---

-- 1. Mudar o Status do Roberto para Confirmado
UPDATE Convidado SET Status_RSVP = 'Confirmado' WHERE ID_Convidado = 102;

-- 2. Corrigir a capacidade da Mesa 2 para 10 lugares
UPDATE Mesa SET Capacidade = 10 WHERE Numero_Mesa = 2;

-- 3. Alterar o local do evento 10
UPDATE Evento SET Local = 'Salão Diamante' WHERE ID_Evento = 10;


-- --- COMANDOS DE REMOÇÃO (DELETE) ---

-- 1. Remover uma alocação (tirar alguém da mesa)
DELETE FROM Alocacao WHERE ID_Alocacao = 501;

-- 2. Remover uma restrição de um convidado
DELETE FROM Convidado_Restricao WHERE ID_Convidado = 100 AND ID_Restricao = 2;

-- 3. Remover um convidado (Roberto)
DELETE FROM Convidado WHERE ID_Convidado = 102;