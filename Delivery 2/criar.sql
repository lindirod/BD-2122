PRAGMA foreign_keys=ON;

--Table: Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa(
    idPessoa       INTEGER PRIMARY KEY,
    nome           CHAR(50) NOT NULL,
    dataNascimento DATE NOT NULL,
    pais           CHAR(50) NOT NULL,
    enderecoCasa   VARCHAR(100) NOT NULL,
    telefone       INTEGER NOT NULL
);


--Table: Funcionario
DROP TABLE IF EXISTS Funcionario;

CREATE TABLE Funcionario(
    idPessoa   INTEGER PRIMARY KEY CONSTRAINT funcionario_idPessoa REFERENCES Pessoa(idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    ocupacao   VARCHAR(50)
);

--Table: Jogador
DROP TABLE IF EXISTS Jogador;

CREATE TABLE Jogador(
    idPessoa        INTEGER PRIMARY KEY CONSTRAINT jogador_idPessoa REFERENCES Pessoa(idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    tipoDispositivo VARCHAR(50) NOT NULL CONSTRAINT n_tipoDispositivo CHECK((tipoDispositivo = 'telemovel') OR (tipoDispositivo = 'computador') OR (tipoDispositivo = 'tablet')),
    nomeUtilizador  CHAR(12) NOT NULL CONSTRAINT lengthnomeUtilizador CHECK (length(nomeUtilizador) >= 6 AND length(nomeUtilizador) <= 12),
    palavraPasse    CHAR(15) NOT NULL CONSTRAINT lengthpalavraPasse CHECK(length(palavraPasse) >= 8 AND length(palavraPasse) <= 15),
    email           VARCHAR(320) NOT NULL
);

--table: Promocao
DROP TABLE IF EXISTS Promocao;

CREATE TABLE Promocao(
    idPromocao     INTEGER PRIMARY KEY,
    tipoPromocoes  VARCHAR(50) CONSTRAINT n_tipoPromocoes CHECK((tipoPromocoes = 'codigoPromocao') OR (tipoPromocoes = 'boasVindas'))
);

--table: PromocaoJogador
DROP TABLE IF EXISTS PromocaoJogador;

CREATE TABLE PromocaoJogador(
    idJogador   INTEGER CONSTRAINT promocao_jogador REFERENCES Jogador(idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idPromocao  INTEGER CONSTRAINT promocao_jogadorid REFERENCES Promocao(idPromocao) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idJogador,idPromocao)
);

--table: Patrocinio
DROP TABLE IF EXISTS Patrocinio;

CREATE TABLE Patrocinio(
    idPatrocinio  INTEGER PRIMARY KEY,
    entidade      CHAR(50),
    montante      REAL NOT NULL,
    dataInicio    DATE NOT NULL,
    dataFim       DATE NOT NULL,
    CONSTRAINT dataInicioFim CHECK (dataFim > dataInicio)
);

--table: PromocaoPatrocinio
DROP TABLE IF EXISTS PromocaoPatrocinio;

CREATE TABLE PromocaoPatrocinio(
    idPromocao   INTEGER CONSTRAINT propat_idpromocao REFERENCES Promocao(idPromocao) ON DELETE CASCADE ON UPDATE CASCADE,
    idPatrocinio INTEGER CONSTRAINT propat_idpatrocinio REFERENCES Patrocinio(idPatrocinio) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idPromocao,idPatrocinio)
);

--table: Conta
DROP TABLE IF EXISTS Conta;

CREATE TABLE Conta(
    idConta           INTEGER PRIMARY KEY,
    depositoInicial   REAL,
    saldo             REAL,
    investimentoTotal REAL,
    idJogador         INTEGER CONSTRAINT idjogador_conta REFERENCES Jogador(idPessoa) ON DELETE CASCADE ON UPDATE CASCADE
    CONSTRAINT investimentoDeposito CHECK (investimentoTotal >= depositoInicial)
);

--table: MetodoLevantamento
DROP TABLE IF EXISTS MetodoLevantamento;

CREATE TABLE MetodoLevantamento(
    idLevantamento    INTEGER PRIMARY KEY,
    tipoLevantamento  VARCHAR(50),
    moeda             VARCHAR(10) CONSTRAINT tipomoeda CHECK ((moeda = 'euro') OR (moeda = 'bitcoin'))
);

--table: ContaMetodoLevantamento
DROP TABLE IF EXISTS ContaMetodoLevantamento;

CREATE TABLE ContaMetodoLevantamento(
    idConta         INTEGER CONSTRAINT idconta_met REFERENCES Conta(idConta) ON DELETE CASCADE ON UPDATE CASCADE,
    idLevantamento  INTEGER CONSTRAINT idlevant_met REFERENCES MetodoLevantamento(idLevantamento) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idConta,idLevantamento)
);

--table: Aposta
DROP TABLE IF EXISTS Aposta;

CREATE TABLE Aposta(
    idAposta    INTEGER PRIMARY KEY,
    tipoAposta  CHAR(50) CONSTRAINT n_tipoAposta CHECK ((tipoAposta = 'simples') OR (tipoAposta = 'multiplas') OR (tipoAposta = 'desportivas')),
    limite      INTEGER
);

--table: Estudio
DROP TABLE IF EXISTS Estudio;

CREATE TABLE Estudio(
    idEstudio  INTEGER PRIMARY KEY,
    origem     CHAR(50)
);

--table: Jogo
DROP TABLE IF EXISTS Jogo;

CREATE TABLE Jogo(
    idJogo          INTEGER PRIMARY KEY,
    regulamentacao  VARCHAR(255),
    pontuacao       INTEGER,
    idEstudio       INTEGER CONSTRAINT est_jogo REFERENCES Estudio(idEstudio) ON DELETE SET NULL ON UPDATE CASCADE
);

--table: Modalidade
DROP TABLE IF EXISTS Modalidade;

CREATE TABLE Modalidade(
    idModalidade INTEGER PRIMARY KEY,
    tipoJogo     CHAR(15) CONSTRAINT n_tipoJogo CHECK ((tipoJogo = "multiplayer") OR (tipoJogo = "computador")),
    nivel        INTEGER
);

--table: JogoModalidade
DROP TABLE IF EXISTS JogoModalidade;

CREATE TABLE JogoModalidade(
    idJogo       INTEGER CONSTRAINT jogo_mod REFERENCES Jogo(idJogo) ON DELETE CASCADE ON UPDATE CASCADE,
    idModalidade INTEGER CONSTRAINT mod_jogo REFERENCES Modalidade(idModalidade) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idJogo,idModalidade)
);

--table: ApoioCliente
DROP TABLE IF EXISTS ApoioCliente;

CREATE TABLE ApoioCliente(
    idFuncionario    INTEGER CONSTRAINT func_apoio REFERENCES Funcionario(idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idJogador        INTEGER CONSTRAINT jog_apoio REFERENCES Jogador(idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    liveChat         VARCHAR(1000) NOT NULL,
    email            CHAR(30) NOT NULL,
    telefone         INTEGER NOT NULL,
    correspondencia  CHAR(30) NOT NULL,
    PRIMARY KEY(idFuncionario,idJogador)
);

--table: JogadorApostaJogo
DROP TABLE IF EXISTS JogadorApostaJogo;

CREATE TABLE JogadorApostaJogo(
    idJogador    INTEGER CONSTRAINT jogador_nary REFERENCES Jogador(idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idAposta     INTEGER CONSTRAINT aposta_nary REFERENCES Aposta(idAposta) ON DELETE CASCADE ON UPDATE CASCADE,
    idJogo       INTEGER CONSTRAINT jogo_nary REFERENCES Jogo(idJogo) ON DELETE CASCADE ON UPDATE CASCADE,
    valorAposta  REAL NOT NULL,
    dateTime     TIME NOT NULL,
    PRIMARY KEY(idJogador,idAposta,idJogo)
);
