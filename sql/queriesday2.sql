-- Día 2: Queries básicas

-- Total de llamadas por agente
SELECT agent_id, COUNT(*) AS total_llamadas
FROM calls
GROUP BY agent_id;

-- Promedio de duración por agente
SELECT agent_id, AVG(duration) AS avg_duration
FROM calls
GROUP BY agent_id;

-- Llamadas por día
SELECT date_call, COUNT(*) AS llamadas_dia
FROM calls
GROUP BY date_call;

-- Agente con mayor duración promedio
SELECT agent_id, AVG(duration) AS avg_duration
FROM calls
GROUP BY agent_id
ORDER BY avg_duration DESC
LIMIT 1;