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

