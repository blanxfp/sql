SELECT USAirports.City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM Flights
INNER JOIN USAirports
ON Flights.Origin = USAirports.IATA
GROUP BY flightID
ORDER BY
USAirports.City,
colYear ASC,
colMonth ASC
