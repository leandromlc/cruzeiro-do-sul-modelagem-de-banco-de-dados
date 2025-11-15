CREATE TABLE ESPECIE (
    id_especie INT AUTO_INCREMENT PRIMARY KEY,
    nome_especie VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE VETERINARIO (
    id_veterinario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) NOT NULL UNIQUE,
    especialidade VARCHAR(100)
);

CREATE TABLE VACINA (
    id_vacina INT AUTO_INCREMENT PRIMARY KEY,
    nome_vacina VARCHAR(100) NOT NULL UNIQUE,
    tipo VARCHAR(50),
    doses_recomendadas INT DEFAULT 1
);

CREATE TABLE DONO (
    id_dono INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE,
    endereco VARCHAR(255)
);

CREATE TABLE RACA (
    id_raca INT AUTO_INCREMENT PRIMARY KEY,
    nome_raca VARCHAR(100) NOT NULL,
    id_especie INT NOT NULL,

    FOREIGN KEY (id_especie) REFERENCES ESPECIE(id_especie)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE ANIMAL (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    sexo CHAR(1), 
    id_dono INT NOT NULL,
    id_raca INT NOT NULL,

    FOREIGN KEY (id_dono) REFERENCES DONO(id_dono)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    FOREIGN KEY (id_raca) REFERENCES RACA(id_raca)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);

CREATE TABLE CONSULTA (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'Agendada',
    id_animal INT NOT NULL,
    id_veterinario INT NOT NULL,

    FOREIGN KEY (id_animal) REFERENCES ANIMAL(id_animal)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    FOREIGN KEY (id_veterinario) REFERENCES VETERINARIO(id_veterinario)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);

CREATE TABLE ATENDIMENTO (
    id_atendimento INT AUTO_INCREMENT PRIMARY KEY,
    sintomas TEXT,
    diagnostico TEXT,
    tratamento_prescrito TEXT,
    id_consulta INT NOT NULL UNIQUE,

    FOREIGN KEY (id_consulta) REFERENCES CONSULTA(id_consulta)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE ATENDIMENTO_VACINA (
    id_atendimento INT NOT NULL,
    id_vacina INT NOT NULL,
    data_aplicacao DATE NOT NULL,
    lote_vacina VARCHAR(50),
    
    PRIMARY KEY (id_atendimento, id_vacina),

    FOREIGN KEY (id_atendimento) REFERENCES ATENDIMENTO(id_atendimento)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (id_vacina) REFERENCES VACINA(id_vacina)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);