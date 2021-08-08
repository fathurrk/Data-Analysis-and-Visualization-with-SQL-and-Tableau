/*Investor need to know about DOGE coin trends from Feb 2021, so we will to show the variable of Market Cap, Volume, Open Price, Close Price, Highest Price and Lowest Price*/

/*Show DOGE coin Market Capitalization*/
/*Output : doge-market-cap.csv*/
SELECT 		symbol, 
		date, 
		marketcap
FROM 		dogecoin
WHERE 		EXTRACT (YEAR FROM  date) = 2021 
		AND EXTRACT(MONTH FROM date) >= 2
ORDER BY	date ASC;

/*Show DOGE coin Volume*/
/*Output : doge-volume.csv*/
SELECT 		symbol, 
		date, 
		volume
FROM 		dogecoin
WHERE 		EXTRACT (YEAR FROM  date) = 2021 
		AND EXTRACT(MONTH FROM date) >= 2
ORDER BY	date ASC;

/*Show DOGE coin Open Price*/
/*Output : doge-open-price.csv*/
SELECT 		symbol, 
		date, 
		open
FROM 		dogecoin
WHERE 		EXTRACT (YEAR FROM  date) = 2021 
		AND EXTRACT(MONTH FROM date) >= 2
ORDER BY	date ASC;

/*Show DOGE coin Close Price*/
/*Output : doge-close-price.csv*/
SELECT 		symbol, 
	  	date, 
		close 
FROM 		dogecoin
WHERE 		EXTRACT (YEAR FROM  date) = 2021 
		AND EXTRACT(MONTH FROM date) >= 2
ORDER BY	date ASC;

/*Show DOGE coin Highest Price*/
/*Output : doge-high-price.csv*/
SELECT 		symbol, 
		date, 
		high
FROM 		dogecoin
WHERE 		EXTRACT (YEAR FROM  date) = 2021 
		AND EXTRACT(MONTH FROM date) >= 2
ORDER BY	date ASC;

/*Show DOGE coin Lowest Price*/
/*Output : doge-low-price.csv*/
SELECT 		symbol, 
		date, 
		low
FROM 		dogecoin
WHERE 		EXTRACT (YEAR FROM  date) = 2021 
		AND EXTRACT(MONTH FROM date) >= 2
ORDER BY	date ASC;