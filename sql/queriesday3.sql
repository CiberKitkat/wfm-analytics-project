#Mostrar el total de llamadas por nombre del agente
SELECT agents.nombre, COUNT(*) AS total_calls
FROM calls
JOIN agents
ON calls.agent_id = agents.iD_agent
GROUP BY agents.nombre;

#Promedio de duración de llamada por nombre del agente
SELECT agents.nombre, AVG(calls.duration) AS promedio_llamada
FROM calls
JOIN agents
ON calls.agent_id = agents.iD_agent
GROUP BY agents.nombre;

#Total de llamadas por equipo
SELECT agents.equipo, COUNT(*) AS total_calls
FROM calls
JOIN agents
ON calls.agent_id = agents.iD_agent
GROUP BY agents.equipo;

#Agente con más llamadas por nombre
SELECT agents.nombre, COUNT(*) AS cantidad_llamadas
FROM calls
JOIN agents
ON calls.agent_id = agents.iD_agent
GROUP BY agents.nombre
ORDER BY cantidad_llamadas DESC
LIMIT 1;

#Promedio duración por equipo
SELECT agents.equipo, AVG(calls.duration) AS avg_calls
FROM calls
JOIN agents
ON calls.agent_id = agents.iD_agent
GROUP BY agents.equipo;

#Que equipo tiene mayor duracion?
SELECT agents.equipo, AVG(calls.duration) AS avg_equipos
FROM calls
JOIN agents
ON calls.agent_id = agents.iD_agent
GROUP BY agents.equipo
ORDER BY avg_equipos DESC
LIMIT 1;
