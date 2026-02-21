SELECT COUNT(*) FROM film
WHERE length > (
    SELECT AVG(length) 
    FROM film
);

SELECT COUNT(*) FROM film
WHERE rental_rate = (
    SELECT MAX(rental_rate)
    FROM film
);

SELECT * FROM film
WHERE rental_rate = (
    SELECT MIN(rental_rate)
    FROM film
)
AND replacement_cost = (
    SELECT MIN(replacement_cost)
    FROM film
);

SELECT c.customer_id, c.first_name, c.last_name, COUNT(p.payment_id) AS toplam_odeme_sayisi FROM customer c
JOIN payment p 
    ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY toplam_odeme_sayisi DESC;

