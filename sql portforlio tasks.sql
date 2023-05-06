/* TASK:  Write a query to calculate the sum of odd-numbered and even-numbered measurements separately for a particular day and display the results in two different columns. 
Refer to the Example Output below for the desired format.*/

WITH measurement_rank AS (
SELECT measurement_value, DATE(measurement_time) AS measurement_day, ROW_NUMBER() OVER(PARTITION BY DATE(measurement_time) ORDER BY measurement_time) AS measurement_count
FROM measurements
)
SELECT
measurement_day,
SUM(CASE WHEN measurement_count % 2 <> 0 THEN measurement_value ELSE 0 END) AS odd_measurement_sum,
SUM(CASE WHEN measurement_count % 2 = 0 THEN measurement_value ELSE 0 END) AS even_measurement_sum
FROM
measurement_rank
GROUP BY
measurement_day;



/*Write a query that outputs the name of the credit card, and how many cards were issued in its launch month. 
The launch month is the earliest record in the monthly_cards_issued table for a given card. 
Order the results starting from the biggest issued amount.*/

WITH launch_amount AS (
SELECT card_name, SUM(issued_amount) AS first_month_issued_amount, ROW_NUMBER() OVER (PARTITION BY card_name ORDER BY issue_year,issue_month) AS month_number
FROM monthly_cards_issued

GROUP BY card_name, issue_year, issue_month
ORDER BY first_month_issued_amount DESC
)

SELECT card_name, first_month_issued_amount
FROM launch_amount
WHERE month_number = 1;
