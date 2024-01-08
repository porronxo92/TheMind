-- Crear la tabla de Partidas
CREATE TABLE Partidas (
    id_partida VARCHAR(50) PRIMARY KEY,
    num_jugadores INT,
    estado VARCHAR(50)
);

-- Crear la tabla de Jugadores
CREATE TABLE Jugadores (
    id_jugador VARCHAR(50) PRIMARY KEY,
    id_partida VARCHAR(50) REFERENCES Partidas(id_partida),
    nombre VARCHAR(50)
);

-- Crear la tabla de Turnos
CREATE TABLE Turnos (
    id_turno VARCHAR(50) PRIMARY KEY,
    id_partida VARCHAR(50) REFERENCES Partidas(id_partida),
    num_turno INT
);

-- Crear la tabla de Cartas
CREATE TABLE Cartas (
    id_carta VARCHAR(50) PRIMARY KEY,
    valor INT,
    tipo_carta INT, -- 0 tipo numero, 1 tipo vida, 2 tipo enseñar
    id_turno VARCHAR(50) REFERENCES Turnos(id_turno),
    id_jugador VARCHAR(50) REFERENCES Jugadores(id_jugador)
);
