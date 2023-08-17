--DML Data Manipulation Language

USE Manha_HealthClinic;

INSERT INTO Clinica (AbertoEm, FechaEm, NomeFantasia, CNPJ, RazaoSocial)
VALUES 
('09:00:00', '17:00:00', 'Cl�nica Sa�de Total', '12.345.678/0001-01', 'Sa�de Total Consult�rios M�dicos Ltda'),
('07:45:00', '17:45:00', 'Cl�nica Bem-Estar', '23.456.789/0001-02', 'Bem-Estar Servi�os M�dicos S.A.'),
('08:00:00', '18:00:00', 'Cl�nica Vida Saud�vel', '34.567.890/0001-03', 'Vida Saud�vel Assist�ncia M�dica EIRELI')

SELECT * FROM Clinica

INSERT INTO Endereco (IdClinica, Endereco)
VALUES
('1', 'Rua das Flores, 123, Centro, S�o Paulo, SP, 01234-567'),
('2', 'Avenida da Sa�de, 456, Jardins, Rio de Janeiro, RJ, 23456-789'),
('3', 'Rua da Paz, 789, Vila Esperan�a, Belo Horizonte, MG, 34567-890')

SELECT * FROM Endereco

INSERT INTO Usuario (CPF, Nome, Nascimento)
VALUES
('123.456.789-01', 'Jo�o da Silva', '1985-03-10'),
('234.953.890-12', 'Maria Oliveira', '1990-08-25'),
('345.246.901-23', 'Pedro Santos', '1978-01-05'),
('456.789.012-34', 'Ana Rodrigues', '1992-06-15'),
('567.890.123-45', 'Lucas Almeida', '1988-09-28'),
('678.901.234-56', 'Isabela Ferreira', '1995-12-03'),
('789.012.345-67', 'Rafael Lima', '1982-04-20'),
('890.123.456-78', 'Larissa Costa', '1998-07-12'),
('901.234.567-89', 'Thiago Oliveira', '1987-10-30'),
('012.345.678-90', 'Mariana Silva', '1993-02-08'),
('123.777.789-01', 'Carlos Santos', '1975-11-18'),
('234.567.890-12', 'Fernanda Oliveira', '1991-03-27'),
('345.678.901-23', 'Andr� Ferreira', '1989-08-05')

SELECT * FROM Usuario

--O comando abaixo reseta o Id da Primary key de uma tabela
--Deu certo, por isso vou manter para mim lembrar depois

DBCC CHECKIDENT ('Perfil', RESEED, 0);

INSERT INTO Especialidade(Especialidade)
VALUES
('Cardiologia'),
('Dermatologia'),
('Ortopedia')

SELECT * FROM Especialidade

INSERT INTO Perfil (IdUsuario, Email, Senha, Telefone)
VALUES
('1', 'joao.silva@email.com', 'Senha123', '(11) 98765-4321'),
('2', 'maria.oliveira@email.com', 'Oliveira456', '(21) 87654-3210'),
('3', 'pedro.santos@email.com', 'Santos789', '(31) 76543-2109'),
('4', 'ana.rodrigues@email.com', 'Ana1234', '(11) 5555-1234'),
('5', 'lucas.almeida@email.com', 'Lucas5678', '(21) 7777-2345'),
('6', 'isabela.ferreira@email.com', 'IsaFer123', '(31) 8888-3456'),
('7', 'rafael.lima@email.com', 'Rafa1982', '(41) 9999-4567'),
('8', 'larissa.costa@email.com', 'Larissa12', '(51) 8888-5678'),
('9', 'thiago.oliveira@email.com', 'Thiago789', '(61) 7777-6789'),
('10', 'mariana.silva@email.com', 'Mari12345', '(71) 5555-7890'),
('11', 'carlos.santos@email.com', 'Carlos1975', '(81) 6666-8901'),
('12', 'fernanda.oliveira@email.com', 'Fernanda27', '(91) 7777-9012'),
('13', 'andre.ferreira@email.com', 'Andre1989', '(99) 8888-0123')

SELECT * FROM Perfil

INSERT INTO Medico (IdPerfil, IdEspecialidade)
VALUES
('1', '3'),
('2', '2'),
('3', '1')

SELECT * FROM Medico

INSERT INTO Prontuario (Descricao)
VALUES
('2023-08-15, Dor de cabe�a persistente, Enxaqueca, Repouso, Paracetamol conforme necess�rio, Recomendar evitar alimentos desencadeantes'),
('2023-08-15, Dor no joelho esquerdo ap�s exerc�cio, Les�o no ligamento, Repouso, Gelo, Anti-inflamat�rio, Encaminhamento para fisioterapia, Agendar consulta de acompanhamento em 2 semanas'),
('2023-08-15, Irrita��o na pele e coceira, Dermatite de contato, Creme anti-histam�nico, Evitar contato com irritantes, Acompanhamento em 1 semana se n�o houver melhora'),
('2023-08-15, Febre alta e dores no corpo, Infec��o viral, Repouso, Hidrata��o, Analg�sicos, Observar sinais de piora, Retorno em caso de piora dos sintomas ou persist�ncia'),
('2023-08-15, Tosse persistente e falta de ar, Bronquite asm�tica, Broncodilatadores, Corticosteroides, Evitar al�rgenos, Acompanhamento para ajuste de medica��o ap�s 1 semana'),
('2023-08-15, Dor no peito durante exerc�cio, Exame de ECG normal, possivelmente relacionado a esfor�o, Encaminhamento para teste ergom�trico, Avaliar resultados do teste para diagn�stico mais preciso'),
('2023-08-15, Gripe com febre e dor de garganta, Infec��o respirat�ria aguda, Repouso, Hidrata��o, Analg�sicos, Gargarejos com �gua morna e sal, Retorno em caso de piora ou persist�ncia dos sintomas'),
('2023-08-15, Dor lombar constante, Dor lombar cr�nica, Fisioterapia, Exerc�cios de alongamento, Analg�sicos conforme necess�rio, Iniciar acompanhamento com especialista em dor'),
('2023-08-15, Irrita��o nos olhos e lacrimejamento, Conjuntivite al�rgica, Col�rio antial�rgico, Evitar exposi��o a al�rgenos, Retorno em 1 semana para avaliar melhora'),
('2023-08-15, Ins�nia e dificuldade para dormir, Ins�nia leve, Higiene do sono, Relaxamento antes de dormir, Retorno ap�s 2 semanas para avaliar progresso')

SELECT * FROM Prontuario

INSERT INTO Paciente (IdProntuario, IdPerfil, Convenio)
VALUES
('1', '4', '1'),
('2', '5', '1'),
('3', '6', '1'),
('4', '7', '1'),
('5', '8', '1'),
('6', '9', '1'),
('7', '10', '1'),
('8', '11', '1'),
('9', '12', '0'),
('10', '13', '0')

SELECT * FROM Paciente

INSERT INTO Feedback (IdPaciente, Comentario)
VALUES
('1', 'A consulta com a Dra. Silva foi muito esclarecedora. Ela ouviu minhas preocupa��es com a dor de cabe�a e explicou os sintomas da enxaqueca. A prescri��o de repouso e paracetamol me ajudou a lidar melhor com o desconforto.'),
('2', 'O Dr. Pereira foi muito atencioso durante a consulta. Ele examinou meu joelho e explicou sobre a les�o no ligamento. A prescri��o de repouso, gelo e fisioterapia me deixou confiante de que estou no caminho certo para a recupera��o.'),
('3', 'A Dra. Oliveira foi gentil ao ouvir sobre a irrita��o na minha pele. Ela diagnosticou a dermatite de contato e explicou como o creme anti-histam�nico funcionaria. As instru��es para evitar irritantes tamb�m foram �teis.'),
('4', 'O Dr. Santos foi �timo em avaliar minha febre e dores. Ele explicou que se trata de uma infec��o viral e me orientou sobre os cuidados. A prescri��o de repouso e hidrata��o me ajudou a me sentir melhor.'),
('5', 'A Dra. Rodrigues foi paciente ao ouvir minha tosse e falta de ar. Ela explicou sobre a bronquite asm�tica e os tratamentos. A prescri��o de broncodilatadores e corticosteroides melhorou muito meus sintomas.'),
('6', 'O Dr. Pereira me tranquilizou em rela��o � dor no peito durante o exerc�cio. Ele me encaminhou para um teste ergom�trico e explicou o processo. Estou confiante de que encontraremos uma solu��o.'),
('7', 'O Dr. Mendes me ajudou a entender minha gripe e dor de garganta. Ele recomendou repouso e hidrata��o, al�m de gargarejos. Sua aten��o aos detalhes e cuidados foram apreciados.'),
('8', 'O Dr. Fernandes compreendeu minha dor lombar cr�nica. Ele prescreveu fisioterapia e alongamentos, e tamb�m discutiu op��es para gerenciar a dor. Sinto que estou em boas m�os.'),
('9', 'A Dra. Almeida foi clara em rela��o � minha conjuntivite al�rgica. O col�rio antial�rgico ajudou a aliviar a irrita��o nos meus olhos. Estou grata por sua orienta��o.'),
('10', 'O Dr. Martins me deu conselhos �teis sobre minha ins�nia. Suas dicas de higiene do sono e relaxamento s�o pr�ticas. Estou ansioso para implement�-las.')

SELECT * FROM Feedback

INSERT INTO Consulta (IdFeedback, IdPaciente, IdMedico, IdEndereco, Horario, Agendamento, Estado)
VALUES
('1', '1', '3', '2', '10:00:00', '2023-08-15', '1'),
('2', '2', '2', '2', '11:30:00', '2023-08-15', '1'),
('3', '3', '1', '3', '14:15:00', '2023-08-15', '1'),
('4', '4', '1', '1', '15:45:00', '2023-08-15', '1'),
('5', '5', '3', '3', '09:30:00', '2023-08-15', '1'),
('6', '6', '3', '1', '13:00:00', '2023-08-15', '1'),
('7', '7', '1', '2', '16:30:00', '2023-08-15', '1'),
('8', '8', '2', '3', '08:45:00', '2023-08-15', '1'),
('9', '9', '1', '1', '12:15:00', '2023-08-15', '1'),
('10', '10', '3', '2', '17:00:00', '2023-08-15', '1')


INSERT INTO Consulta (IdPaciente, IdMedico, IdEndereco, Horario, Agendamento, Estado)
VALUES
('5', '3', '2', '17:00:00', '2023-08-15', '0')

SELECT * FROM Consulta