-- Comics priced below 70, ordered by title
SELECT c.title, c.description, c.price from comics c
where c.price < 70
ORDER BY c.title;

-- Heroes that can fly
SELECT c.name, p.name, p.description FROM characters c
JOIN "powersXcharacter" pc ON c.id_character = pc.id_character
JOIN powers p ON pc.id_power = p.id_power
WHERE c.alignment = 'hero'
AND p.name ilike '%Flight%'
ORDER BY c.name;

-- villains defeated more than 3 times
SELECT c.name, COUNT(c.name) timesDefeated FROM characters c
INNER JOIN public."groupsXcharacters" gX on c.id_character = gX.id_character
INNER JOIN groups g on gX.id_group = g.id_group
INNER JOIN public.encounters e on g.id_group = e."id_villainGroup"
group by c.name
HAVING COUNT(c.name) > 3
ORDER BY timesDefeated DESC;

-- Customers that have bought more than 5 comics, with total spent
SELECT c.name, (SUM(t.quantity)) as totalComics, SUM(c2.price*t.quantity) FROM customers c
INNER JOIN transactions t on c.id_customer = t.id_customer
INNER JOIN comics c2 on t.id_comic = c2.id_comic
group by c.name
HAVING SUM(t.quantity) > 5;

-- Most popular category
SELECT com.category, SUM(t.quantity) AS purchase_count
FROM comics com
JOIN transactions t ON com.id_comic = t.id_comic
GROUP BY com.category
ORDER BY purchase_count DESC
LIMIT 1;

-- All characters affiliated with the justice league and the avengers
SELECT ch.name AS character_name
FROM characters ch
JOIN "groupsXcharacters" gc1 ON ch.id_character = gc1.id_character
JOIN groups g1 ON gc1.id_group = g1.id_group
JOIN "groupsXcharacters" gc2 ON ch.id_character = gc2.id_character
JOIN groups g2 ON gc2.id_group = g2.id_group
WHERE g1.name ilike '%Justice League%' AND g2.name ilike '%Avengers%';

-- comics with hero-villain battle with a mortal arm
SELECT c.title, mA.name, mA.description, e.result as winner FROM comics c
INNER JOIN public.encounters e on c.id_encounter = e.id_encounter
INNER JOIN public."mortalArms" mA on c.id_comic = mA.id_comic;

--View
CREATE VIEW Popular_Comics AS
SELECT c.title AS comic_name, SUM(t.quantity) AS purchase_count
FROM comics c
JOIN transactions t ON c.id_comic = t.id_comic
GROUP BY c.title
HAVING SUM(t.quantity) > 50;

--Materialized View
CREATE MATERIALIZED VIEW Top_Customers
AS SELECT c.name, (SUM(t.quantity)) as totalComics, SUM(c2.price*t.quantity) FROM customers c
INNER JOIN transactions t on c.id_customer = t.id_customer
INNER JOIN comics c2 on t.id_comic = c2.id_comic
group by c.name
HAVING SUM(t.quantity) > 10;
-- Para actualizar diariamente se necesita Pg_Cron
SELECT cron.schedule('0 0 * * *', $$ REFRESH MATERIALIZED VIEW Top_Customers $$);

--TRIGGER:

CREATE OR REPLACE FUNCTION add_to_special_offers()
RETURNS TRIGGER AS $$
DECLARE
    buyer_name VARCHAR(255);
    buyer_birthday DATE;
BEGIN
    -- Check if the purchased comic matches the target comic
    IF NEW.id_comic = 'COM-001' THEN
        -- Fetch customer details
        SELECT name, birthday INTO buyer_name, buyer_birthday
        FROM customers
        WHERE id_customer = NEW.id_customer;

        -- Insert customer details into SpecialOffers
        INSERT INTO SpecialOffers (buyer_name, buyer_birthday)
        VALUES (buyer_name, buyer_birthday);
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_special_offer
AFTER INSERT ON transactions
FOR EACH ROW
EXECUTE FUNCTION add_to_special_offers();


