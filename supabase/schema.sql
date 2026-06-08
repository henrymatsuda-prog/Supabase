CREATE TABLE equipes (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE participantes (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome TEXT NOT NULL,
    equipe_id BIGINT REFERENCES equipes(id)
);

CREATE TABLE registros (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    participante_id BIGINT UNIQUE REFERENCES participantes(id)
);

CREATE TABLE modalidades (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE participantes_modalidades (
    participante_id BIGINT REFERENCES participantes(id),
    modalidade_id BIGINT REFERENCES modalidades(id),
    PRIMARY KEY (participante_id, modalidade_id)
);
