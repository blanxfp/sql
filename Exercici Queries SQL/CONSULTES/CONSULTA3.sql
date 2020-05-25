SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM USAirlineFlights2.Flights
GROUP BY Origin, colYear, colMonth 
	ORDER BY Origin, colYear, colMonth;