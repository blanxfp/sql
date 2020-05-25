SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) as total_cancelacions 
FROM Flights  
GROUP BY UniqueCarrier, colYear, colMonth  
HAVING total_cancelacions > 0  
ORDER BY total_cancelacions DESC, colYear ASC, colMonth ASC