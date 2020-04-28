SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM USAirlineFlights2.Flights
GROUP BY flightID
ORDER BY
Origin,
colYear ASC,
colMonth ASC
