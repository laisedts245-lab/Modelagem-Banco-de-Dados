USE EventTableManager;

-- Inserindo Grupos Sociais
INSERT INTO Grupo_Social (ID_Grupo, Nome_Grupo) VALUES (1, 'Família do Noivo');
INSERT INTO Grupo_Social (ID_Grupo, Nome_Grupo) VALUES (2, 'Amigos da Faculdade');
INSERT INTO Grupo_Social (ID_Grupo, Nome_Grupo) VALUES (3, 'Trabalho');

-- Inserindo Tipos de Restrição
INSERT INTO Restricao (ID_Restricao, Tipo) VALUES (1, 'Vegano');
INSERT INTO Restricao (ID_Restricao, Tipo) VALUES (2, 'Sem Glúten');
INSERT INTO Restricao (ID_Restricao, Tipo) VALUES (3, 'Cadeirante');

-- Inserindo Eventos
INSERT INTO Evento (ID_Evento, Nome, Data, Local) VALUES (10, 'Casamento Ana e João', '2025-12-15', 'Salão Cristal');
INSERT INTO Evento (ID_Evento, Nome, Data, Local) VALUES (20, 'Formatura Medicina', '2026-01-20', 'Centro de Eventos');

-- Inserindo Convidados
INSERT INTO Convidado (ID_Convidado, Nome, Email, Status_RSVP, ID_Grupo) VALUES (100, 'Carlos Silva', 'carlos@email.com', 'Confirmado', 1);
INSERT INTO Convidado (ID_Convidado, Nome, Email, Status_RSVP, ID_Grupo) VALUES (101, 'Mariana Souza', 'mari@email.com', 'Confirmado', 2);
INSERT INTO Convidado (ID_Convidado, Nome, Email, Status_RSVP, ID_Grupo) VALUES (102, 'Roberto Lima', 'beto@email.com', 'Pendente', 3);

-- Inserindo Mesas
INSERT INTO Mesa (Numero_Mesa, Capacidade, Localizacao_Salao, ID_Evento) VALUES (1, 8, 'Perto do Palco', 10);
INSERT INTO Mesa (Numero_Mesa, Capacidade, Localizacao_Salao, ID_Evento) VALUES (2, 8, 'Fundo do Salão', 10);

-- Vinculando Restrições
INSERT INTO Convidado_Restricao (ID_Convidado, ID_Restricao) VALUES (100, 2); 
INSERT INTO Convidado_Restricao (ID_Convidado, ID_Restricao) VALUES (101, 1);

-- Alocando Convidados
INSERT INTO Alocacao (ID_Alocacao, ID_Convidado, Numero_Mesa, ID_Evento) VALUES (500, 100, 1, 10);
INSERT INTO Alocacao (ID_Alocacao, ID_Convidado, Numero_Mesa, ID_Evento) VALUES (501, 101, 1, 10);