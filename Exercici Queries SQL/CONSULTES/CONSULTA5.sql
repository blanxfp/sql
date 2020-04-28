SELECT UniqueCarrier, colYear, colMonth, COUNT(Cancelled)
FROM Flights
GROUP BY UniqueCarrier
ORDER BY COUNT(Cancelled)
