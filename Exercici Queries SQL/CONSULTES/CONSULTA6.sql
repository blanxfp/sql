SELECT TailNum, SUM(Distance) AS totalDistance
FROM Flights
GROUP BY TailNum
ORDER BY totalDistance
LIMIT 10

