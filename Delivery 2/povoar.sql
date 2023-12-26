PRAGMA foreign_keys = ON;

-- Table: Pessoa
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50456,'Joao Tomas Mata','2000-12-10','Portugal','Porto, Rua da Paz 45',938654589);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50458,'Lourenco da Silva','1989-07-09','Portugal','Braga, Rua do Paraiso ',912345678);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50460,'Alba Garcia','1990-01-25','Espanha','Madrid, Gran Via',911896393);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (50461,'Ana Maria Almeida','1991-03-20','Portugal','Porto, Rua de Tras 92',939003269);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78992,'Linda Ines Rodrigues','Portugal','2002-08-10','Lisboa, Rua Alexandre Braga 33',965786472);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78993,'Raquel Reis','1999-05-28','Portugal','Coimbra, Rua da Alegria 67',923457893);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78994,'Rita Branco','1978-05-16','Espanha', 'Sevilha, Calhe de Alcala 728',914655789);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78995,'Pedro Azevedo','1973-08-13','Portugal', 'Algarve, Rua do Casal 82',961234568);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78996,'Nadja Santos','2002-05-14','Espanha', 'Sevilha, Avenida de Canillejas 55',914541510);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78998,'Pablo Morales','2002-12-10','Espanha', 'Barcelona, La Rambla 102',918468412);
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, pais, enderecoCasa, telefone) VALUES (78999,'Luciano Marques','2001-12-10','Portugal', 'Aveiro, Rua Jose Estevao 90',932154879);


-- Table: Funcionario
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50456,'gestor');
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50458,'gestor');
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50460,'servico de apoio ao cliente');
INSERT INTO Funcionario (idPessoa, ocupacao) VALUES (50461,'servico de apoio ao cliente');

-- Table: Jogador
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78992,'computador','LindaRod89','linda_rod','lindarod89@gmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78993,'telemovel','Raquel_reis','raqreis99','raquelreis@gmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78994,'telemovel','RBranco78','rita1978','rbranco78@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78995,'computador','PedroAZ3','pazevedo73','pedroaz23@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78996,'tablet','Nadja02','nadsantos2','nadja02@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78998,'tablet','PblMoral','pablo1012','pblmoral@hotmail.com');
INSERT INTO Jogador (idPessoa, tipoDispositivo, nomeUtilizador, palavraPasse, email) VALUES (78999,'computador','LucMar01','marques01','lucmar01@hotmail.com');

-- Table: Promocao
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (67,'boasVindas');
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (68,'boasVindas');
INSERT INTO Promocao(idPromocao, tipoPromocoes) VALUES (13,'codigoPromocao');

-- Table: PromocaoJogador
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78992,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78993,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78998,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78994,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78999,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78996,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78995,67);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78998,13);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78992,13);
INSERT INTO PromocaoJogador (idJogador,idPromocao) VALUES (78995,13);


--Table: Patrocinio
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (562,'NOS',10100,2021-12-12,2022-12-12);
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (523,'Sporting Clube Portugal',30500,2020-10-02,2021-10-02);
INSERT INTO Patrocinio (idPatrocinio, entidade, montante, dataInicio, dataFim) VALUES (529,'Futebol Clube do Porto',20800,2021-08-07,2023-08-07);

--Table: PromocaoPatrocinio
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (68,523);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (67,529);
INSERT INTO PromocaoPatrocinio (idPromocao, idPatrocinio) VALUES (13,562);

-- Table: Conta
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354560, 10.50, 50, 100, 78993);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354474, 15, 1000, 60, 78992);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354988, 50, 3000, 4000, 78998);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354678, 20, -100, 3500, 78995);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354589, 5, 30, 40.60, 78996);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354120, 25, 2000, 1000, 78994);
INSERT INTO Conta (idConta, depositoInicial, saldo, investimentoTotal, idJogador) VALUES (354227, 12.50, 0.10, 40, 78999);

-- Table: MetodoLevantamento
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7624,'Paypal','euro');
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7669,'ATM','bitcoin');
INSERT INTO MetodoLevantamento (idLevantamento, tipoLevantamento, moeda) VALUES (7688,'Transferencia Bancaria','euro');

-- Table: ContaMetodolevantamento
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7624,354560);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7669,354474);
INSERT INTO ContaMetodoLevantamento (idLevantamento, idConta) VALUES (7688,354988);

-- Table: Aposta
INSERT INTO Aposta (idAposta, tipoAposta, limite) VALUES (23,'simples', NULL);
INSERT INTO Aposta (idAposta, tipoAposta, limite) VALUES (24,'multiplas',100);
INSERT INTO Aposta (idAposta, tipoAposta, limite) VALUES (25,'desportivas',250);

--Table: Estudio
INSERT INTO Estudio (idEstudio, origem) VALUES (672,'Portugal');
INSERT INTO Estudio (idEstudio, origem) VALUES (677,'Espanha');

-- Table: Jogo
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (10,'O objetivo do jogo é ser o primeiro a chegar, o mais depressa possível à pontuacao indicada em cada ronda do jogo',100,672);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (11,'Pontuacao máxima do jogo é 2000',250,672);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (12,'O objetivo é prever o lançamento dos dados em cada nível do jogo',88,677);

--Table:Modalidade
INSERT INTO Modalidade (idModalidade, tipoJogo,nivel) VALUES (45,'multiplayer', 500);
INSERT INTO Modalidade (idModalidade, tipoJogo,nivel) VALUES (59,'computador', 2000);

-- Table: JogoModalidade
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (10,45);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (11,45);
INSERT INTO JogoModalidade (idJogo, idModalidade) VALUES (12,59);

--Table:ApoioCliente
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78992,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50460,78993,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78998,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50460,78995,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78999,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50460,78994,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');
INSERT INTO ApoioCliente (idFuncionario, idJogador, liveChat, email, telefone, correspondencia) VALUES (50461,78996,'disponivel 24h','apoioaocliente@casino2021.com',225678543,'Porto, Rua do Jogo 39');

--Table: JogadorApostaJogo
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78992, 23, 10, 15, 2021-11-03);
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78994, 23, 11, 20, 2021-09-08);
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78995, 23, 12, 4, 2020-08-04);
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78996, 24, 10, 25, 2021-11-21);
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78999, 24, 11, 10, 2020-04-22);
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78993, 24, 12, 20, 2021-08-08);
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 25, 11, 5, 2021-05-24);

