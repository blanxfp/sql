SELECT AIRP.City, FL.colYear, FL.colMonth, AVG(FL.ArrDelay) AS prom_arribades
FROM Flights as FL
LEFT JOIN USAirports as AIRP
ON FL.Origin = AIRP.IATA
GROUP BY City, colYear, colMonth
ORDER BY
City,
colYear ASC,
colMonth ASC