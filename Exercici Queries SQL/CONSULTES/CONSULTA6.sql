SELECT TailNum, SUM(Distance) AS totalDistance
FROM Flights
WHERE TailNum != "NA" and TailNum != "#?NOMBRE?"
GROUP BY TailNum
ORDER BY totalDistance
LIMIT 10

