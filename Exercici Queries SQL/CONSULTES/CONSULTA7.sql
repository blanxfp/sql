SELECT UniqueCarrier, AVG(ArrDelay) as avgDelay
FROM Flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10.0
ORDER BY avgDelay
