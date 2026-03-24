CREATE DATABASE wfm_db;
USE wfm_db;

CREATE TABLE agents (
iD_agent INT PRIMARY KEY,
nombre VARCHAR(50),
equipo VARCHAR(50)
);

CREATE TABLE calls (
iD_call int PRIMARY KEY,
agent_id INT, 
duration INT,
date_call DATE
);

INSERT INTO agents VALUES
(1, 'Ana', 'Soporte'),
(2, 'Luis', 'Ventas'),
(3, 'Carlos', 'Soporte');

INSERT INTO calls VALUES
(1, 1, 300, '2026-03-01'),
(2, 1, 200, '2026-03-01'),
(3, 2, 400, '2026-03-01'),
(4, 3, 150, '2026-03-02'),
(5, 2, 350, '2026-03-02');

SELECT * FROM calls
WHERE agent_id = 1;

SELECT agent_id, COUNT(*) AS cantidad_llamadas
FROM calls
GROUP BY agent_id;

SELECT agent_id, AVG(duration) AS average
FROM calls
GROUP BY agent_id;

# que agente tiene más llamadas?
SELECT agent_id, COUNT(*) AS cantidad_llamadas
FROM calls
GROUP BY agent_id
ORDER BY cantidad_llamadas DESC
LIMIT 2;
#Respuesta: dos agentes tienen la misma cantidad de llamadas, el primero y el segundo.

#¿Cual es la duración promedio total?
SELECT AVG(duration) AS total_average
FROM calls;
#280 segundos

#Cuantas llamadas hubo por día?
SELECT date_call, COUNT(*) AS llamadas_día
FROM calls
GROUP BY date_call;
#El 2026/03/01 hubo 3 llamadas y el 2 hubo 2 llamadas

#Agente con mayor duración promedio
SELECT agent_id, AVG(duration) AS average
FROM calls
GROUP BY agent_id
ORDER BY average DESC
LIMIT 1;
