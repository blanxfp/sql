SELECT UniqueCarrier, AVG(ArrDelay) as avgDelay
FROM Flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY avgDelay
