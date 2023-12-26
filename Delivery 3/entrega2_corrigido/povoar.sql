--PRAGMA foreign_keys = ON;

-- Table: Pessoa
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50456,'Joao Tomas Mata','2000-12-10','Estónia','Porto, Rua da Paz 45',938654589);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50458,'Lourenco da Silva','1989-07-09','Arménia','Braga, Rua do Paraiso ',912345678);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50460,'Alba Garcia','1990-01-25','Espanha','Madrid, Gran Via',911896393);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50461,'Ana Maria Almeida','1991-03-20','Portugal','Porto, Rua de Tras 92',939003269);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78991,'Napet','1973-04-10','San Marino', 'Marie Curie 70',938464879);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78992,'Linda Ines Rodrigues','2002-08-10','Portugal','Lisboa, Rua Alexandre Braga 33',965786472);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78993,'Raquel Reis','2001-05-28','Mónaco','Coimbra, Rua da Alegria 67',923457893);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78994,'Rita Branco','1978-05-16','Espanha', 'Sevilha, Calhe de Alcala 728',914655789);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78995,'Pedro Azevedo','1973-08-13','Portugal', 'Algarve, Rua do Casal 82',961234568);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78996,'Nadja Santos','2002-05-14','San Marino', 'Sevilha, Avenida de Canillejas 55',914541510);

INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78997,'Floresta Assassina','1988-07-08','Portugal', 'Bragança, Rua da Mata 100',932154879);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78998,'Pablo Morales','2002-12-10','Espanha', 'Barcelona, La Rambla 102',918468412);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78999,'Luciana Marques','2001-12-10','Portugal', 'Aveiro, Rua Jose Estevao 90', 932154879);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (79000,'Gatilho Marques','2001-12-10','Portugal', 'Aveiro, Rua Jose Estevao 90', 938794871);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (79001,'Trigger Marques','2001-12-11','Portugal', 'Aveiro, Rua Jose Estevao 90', 934879212);

-- Table: Funcionario
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50456,'gestor');
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50458,'gestor');
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50460,'servico de apoio ao cliente');
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50461,'servico de apoio ao cliente');

-- Table: Jogador
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78991,'computador','LucNap01','lucppet01','lucpet01@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78992,'computador','LindaRod89','linda_rod','lindarod89@gmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78993,'telemovel','Raquel_reis','raqreis99','raquelreis@gmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78994,'telemovel','RBranco78','rita1978','rbranco78@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78995,'computador','PedroAZ3','pazevedo73','pedroaz23@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78996,'tablet','Nadja02','nadsantos2','nadja02@hotmail.com');

INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78997,'computador','floresta01','assassina01','paz01@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78998,'tablet','PblMoral','pablo1012','pblmoral@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78999,'computador','LucMar01','marques01','lucmar01@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (79000,'tablet','Gatilho','marques01','gatmar01@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (79001,'telemovel','trigger1','marques01','triggermar01@hotmail.com');


-- Table: Promocao
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (67,'boasVindas');
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (68,'boasFestas');
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (13,'codigoPromocao');
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (14,'entregasFelizes');
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (66,'BonsExames');
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (80,'BonsVicios');


-- Table: PromocaoJogador
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78992,13);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78998,13);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78995,66);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78991,14);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78992,14);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78997,14);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78993,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78994,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78999,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78992,68);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78996,68);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78998,68);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78995,80);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (79000,80);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (79001,80);

--Table: Patrocinio
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (562,'NOS',10100,'2021-12-12','2022-12-12');
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (523,'Sporting Clube Portugal',30500,'2020-10-02','2021-10-02');
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (529,'Futebol Clube do Porto',20800,'2021-08-07','2023-08-07');

INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (514,'Futebol Clube do Penafiel',1000,'2020-12-07','2022-12-07');
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (524,'Padre Américo FC',800,'2022-01-01','2024-01-01');
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (559,'Envagélicos dos DZRT',15000,'2020-09-07','2022-09-07');

--Table: PromocaoPatrocinio
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (68,523);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (67,529);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (13,562);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (14,524);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (66,514);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (80,523);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (13,524);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (13,529);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (66,562);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (80,559);

-- Table: Conta
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354878, 101, -1000,980, 78991);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354474, 15, 1000, 43, 78992);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354560, 10, 30, 72.50, 78993);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354120, 25, 2000, 40, 78994);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354678, 20, -100, 5730, 78995);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354589, 5, 30, 10.50, 78996);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354590, 56, -70, 200, 78997);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354988, 50, 3000, 70014, 78998);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354227, 5, 0.10, 34, 78999);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354211, 12.50, 0.10, 115, 79000);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354228, 1.50, 100, 3605, 79001);

-- Table: MetodoLevantamento
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7624,'Paypal','euro');
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7669,'ATM','bitcoin');
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7688,'Transferência Bancaria','euro');
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7620,'Apple Pay','euro');
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7610,'VISA','euro');
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7670,'MASTERCARD','euro');

-- Table: ContaMetodoLevantamento
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7624,354560);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7669,354474);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7688,354988);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7620,354878);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7620,354988);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7670,354590);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7669,354211);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7669,354227);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7688,354678);

-- Table: Aposta
INSERT INTO Aposta (idAposta, tipoAposta, limite) VALUES (23,'simples', NULL);
INSERT INTO Aposta (idAposta, tipoAposta, limite) VALUES (24,'multiplas',250);
INSERT INTO Aposta (idAposta, tipoAposta, limite) VALUES (25,'desportivas',500);

--Table: Estudio
INSERT INTO Estudio (idEstudio, origem) VALUES (671,'Mónaco');
INSERT INTO Estudio (idEstudio, origem) VALUES (672,'Portugal');
INSERT INTO Estudio (idEstudio, origem) VALUES (673,'San Marinho');
INSERT INTO Estudio (idEstudio, origem) VALUES (674,'Arménia');
INSERT INTO Estudio (idEstudio, origem) VALUES (677,'Espanha');
INSERT INTO Estudio (idEstudio, origem) VALUES (679,'Estónia');

-- Table: Jogo
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (10,'O objetivo do jogo é ser o primeiro a chegar, o mais depressa possível à pontuacao indicada em cada ronda do jogo',100,672);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (11,'Pontuacao máxima do jogo é 2000',2000,672);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (12,'Os jogadores recebem 5 BARBIE cartas e quem tiver a maior pontuação ímpar nas cartas ganha',199,672);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (13,'O limite de apostas neste jogo é de 200 euros',88,677);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (14,'O objetivo é prever o lançamento dos dados em cada nível do jogo',150,673);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (15,'O jogador escolhe 3 símbolos e se corresponderem aos 3 símbolos sorteados pelo computador vence a quantia apostada ',NULL,671);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (16,'O objetivo é ficar sem cartas primeiro',NULL,674);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (17,'Este jogo não tem limite de apostas',500,679);

--Table:Modalidade
INSERT INTO Modalidade (idModalidade, tipoJogo,nivel) VALUES (45,'multiplayer', 500);
INSERT INTO Modalidade (idModalidade, tipoJogo,nivel) VALUES (59,'computador', 2000);

-- Table: JogoModalidade
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (10,45);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (11,45);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (12,45);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (13,45);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (14,59);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (15,59);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (16,59);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (17,59);

--Table:ApoioCliente
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78992,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50460,78993,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50460,78994,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50460,78995,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78996,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78998,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78999,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');

--Table: JogadorApostaJogo
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78991, 23, 11, 905, '2021-05-04');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78991, 24, 17, 55, '2021-06-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78991, 23, 10, 15, '2021-11-03');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78992, 25, 13, 23, '2021-07-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78992, 23, 11, 20, '2021-09-08');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78993, 24, 12, 62, '2021-03-09');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78994, 23, 12, 40, '2020-08-04');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78995, 25, 17, 5, '2021-02-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78995, 24, 17, 5700, '2021-07-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78995, 24, 10, 25, '2021-12-21');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78996, 24, 11, 10.50, '2020-04-22');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78997, 24, 12, 20, '2021-08-08');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 23, 16, 678, '2021-01-13');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 23, 14, 5, '2021-01-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 24, 10, 12345, '2021-01-31');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 25, 10, 554, '2021-02-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 23, 11, 50002, '2021-02-28');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 24, 13, 250, '2021-02-12');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 25, 15, 155, '2021-03-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 24, 16, 25, '2021-03-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 24, 17, 53, '2021-04-01');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 25, 11, 5, '2021-05-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 25, 16, 5889, '2021-08-14');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 23, 13, 53, '2021-12-25');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78999, 23, 11, 34, '2021-03-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (79000, 25, 12, 5, '2021-10-10');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (79000, 24, 12, 110, '2021-12-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (79001, 24, 11, 553, '2021-01-13');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (79001, 24, 12, 3000, '2021-01-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (79001, 25, 15, 52, '2021-05-24');