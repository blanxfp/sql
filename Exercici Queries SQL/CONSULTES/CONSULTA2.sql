SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
FROM USAirlineFlights2.Flights
GROUP BY Origin