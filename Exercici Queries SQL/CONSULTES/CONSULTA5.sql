SELECT UniqueCarrier, colYear, colMonth, COUNT(Cancelled) as total_cancelled
FROM Flights
GROUP BY UniqueCarrier
ORDER BY total_cancelled
