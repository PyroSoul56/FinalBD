

--PODERES--
INSERT INTO powers (id_power, name, description )
VALUES
    ('POW-001', 'Flight', 'Allows the user to fly'),
    ('POW-002', 'Heat vision', 'Allows the user to shoot concentrated heat beams out of his eyes'),
    ('POW-003', 'Super strength', 'Allows the user to lift heavy objects'),
    ('POW-004', 'Green Lantern Ring', 'Allows the user control energy with the ring, to create weapons or energy blasts'),
    ('POW-005', 'Money', 'A LOT of money, like, a lot'),
    ('POW-006', 'Unstable Invisibility', 'User is invisible, but only when they sneeze'),
    ('POW-007', 'Partial Teleportation', 'User can teleport to any location they can see, but their clothes dont teleport with them'),
    ('POW-008', 'Laxant Power Copy', 'User can copy any power they see for 2 days, but they get sudden onset violent diarrhea for a week'),
    ('POW-009', 'Blind Mind Reading', 'Ability to read peoples minds, but only in braille'),
    ('POW-010', 'Time Stop', 'User can stop time for up to one hour, but only their mind works, they cant move'),
    ('POW-011', 'Super Intelligence', 'User has insane levels of intelligence'),
    ('POW-012', 'Unstable Flight', 'User can fly only on tuesdays, for 3 minutes after drinking a redbull'),
    ('POW-013', 'Partial flight', 'User can fly for 3 seconds with a 3 second cooldown'),
    ('POW-014', 'Total Invisibility', 'User can become invisible, but he becomes blind whenever he does'),
    ('POW-015', 'Super Speed', 'User can move at incredible speeds, but only when they are naked');

--DEBILIDADES--
INSERT INTO weaknesses (id_weakness, name, description )
VALUES
    ('WEA-001','Kryptonite','On contact or close proximity to kryptonite, user loses all its powers'),
    ('WEA-002', 'No money', 'When poor, user becomes nearly useless'),
    ('WEA-003', 'Emotional manipulation', 'Due to his past, user is easily manipulated by emotional means'),
    ('WEA-004', 'Lack of sleep', 'User needs to sleep at least 8 hours a day, or they lose their powers'),
    ('WEA-005', 'Literally fkn Yellow', 'Users powers cant affect nor harm anything with the color yellow');

--GRUPOS--
INSERT INTO groups (id_group, name, description, type)
VALUES
    ('GR-001', 'Avengers', '', 'hero'),
    ('GR-002', 'Justice league', '', 'hero'),
    ('GR-003', 'Green lantern corps', '', 'hero'),
    ('GR-004', 'The unknown', '', 'hero'),
    ('GR-005', 'Watchers', '', 'hero'),
    ('GR-006', 'The muscle twins', '', 'hero'),
    ('GR-007', 'Brawny Brains', '', 'villain'),
    ('GR-008', 'BrailleCopy', '', 'villain'),
    ('GR-010', 'Bad Doodz', '', 'villain');
    
--PERSONAJES--

INSERT INTO characters (id_character, name)
VALUES
    ('CH-001', 'Superman'),
    ('CH-002', 'Batman'),
    ('CH-003', 'Iron Man'),
    ('CH-004', 'Green lantern'),
    ('CH-005', 'The traveler'),
    ('CH-006', 'The unseen'),
    ('CH-007', 'Nobody man'),
    ('CH-008', 'Stronk'),
    ('CH-009', 'Big brain'),
    ('CH-010', 'Copycat'),
    ('CH-011', 'The all seeing'),
    ('CH-013', 'mover'),
    ('CH-014', 'IQ wings'),
    ('CH-015', 'Watchman'),
    ('CH-016', 'Flyman'),
    ('CH-017', 'Twin a'),
    ('CH-018', 'Twin b');


INSERT INTO "groupsXcharacters" (id_character, id_group)
VALUES
    ('CH-001', 'GR-001'),
    ('CH-002', 'GR-001'),
    ('CH-004', 'GR-001'),
    ('CH-003', 'GR-002'),
    ('CH-004', 'GR-002'),
    ('CH-004', 'GR-003'),
    ('CH-005', 'GR-004'),
    ('CH-006', 'GR-004'),
    ('CH-007', 'GR-004'),
    ('CH-015', 'GR-005'),
    ('CH-016', 'GR-005'),
    ('CH-017', 'GR-006'),
    ('CH-018', 'GR-006');
    ('CH-008', 'GR-007');
    ('CH-009', 'GR-007');
    ('CH-011', 'GR-008');
    ('CH-010', 'GR-008');
    ('CH-013', 'GR-010');
    ('CH-014', 'GR-010');



-- powersXcharacter
INSERT INTO "powersXcharacter" (id_character, id_power)
VALUES
    ('CH-001', 'POW-001'),
    ('CH-001', 'POW-002'),
    ('CH-001', 'POW-003'),
    ('CH-002', 'POW-005'),
    ('CH-003', 'POW-003'),
    ('CH-003', 'POW-011'),
    ('CH-004', 'POW-004'),
    ('CH-004', 'POW-001'),
    ('CH-005', 'POW-007'),
    ('CH-006', 'POW-006'),
    ('CH-007', 'POW-014'),
    ('CH-008', 'POW-003'),
    ('CH-009', 'POW-011'),
    ('CH-010', 'POW-008'),
    ('CH-011', 'POW-009'),
    ('CH-013', 'POW-013'),
    ('CH-014', 'POW-001'),
    ('CH-014', 'POW-011'),
    ('CH-015', 'POW-010'),
    ('CH-016', 'POW-012'),
    ('CH-017', 'POW-003'),
    ('CH-018', 'POW-003');


-- weaknessXcharacter --
INSERT INTO "weaknessXcharacter" (id_character, id_weakness)
VALUES
    ('CH-001', 'WEA-001'),
    ('CH-002', 'WEA-002'),
    ('CH-002', 'WEA-003'),
    ('CH-003', 'WEA-002'),
    ('CH-004', 'WEA-005'),
    ('CH-010', 'WEA-004');

-- encounters --
INSERT INTO encounters (id_encounter, "id_heroGroup", "id_villainGroup", result)
VALUES
    ('ENC-001', 'GR-001', 'GR-007', 'hero'),
    ('ENC-002', 'GR-002', 'GR-008', 'villain'),
    ('ENC-003', 'GR-003', 'GR-010', 'hero'),
    ('ENC-004', 'GR-004', 'GR-010', 'hero'),
    ('ENC-005', 'GR-005', 'GR-010', 'hero'),
    ('ENC-006', 'GR-006', 'GR-010', 'hero');

-- comics --
INSERT INTO comics (id_comic, title, description, price, category, "id_encounter")
VALUES
    -- Superman en calzoncillos con Batman asustado
    ('COM-001', 'Superman en calzoncillos con Batman asustado', 'In this unexpected and hilariously awkward adventure, the mighty Superman faces his greatest challenge yet: a laundry mishap! After a Kryptonian washing machine malfunction that the Brawny Brains evil team sabotaged, Superman finds himself forced to save the day wearing only his bright red underpants. Meanwhile, Batman, the stoic Dark Knight, is anything but stoic as he finds himself drawn into a series of embarrassing situations trying to help his friend "cover up." Together, they must face off against an evil villain who’s taking full advantage of Superman’s wardrobe predicament. As Gotham’s citizens catch glimpses of Superman’s unorthodox look, Batman is left to grapple with whether his reputation will ever recover. Will they save the day? And will Superman ever find pants again?', 150, 'hero', 'ENC-001'),
    
    -- The avengers vs the BrailleCopy (the villain group above)
    ('COM-002', 'The avengers vs the BrailleCopy', 'The Avengers are back in action, and this time they’re facing off against the BrailleCopy, a villainous group that’s been causing chaos across the city. With their powers combined, the Avengers must work together to take down the BrailleCopy and save the day. In this comic, you will be experiencing the sotry from the villains side!', 60, 'villain', 'ENC-002'),

    -- the green lantern corps vs the bad doodz
    ('COM-003', 'The green lantern corps vs the bad doodz', 'The Green Lantern Corps are the protectors of the universe, using their power rings to create anything they can imagine. But when the Bad Doodz, a group of villainous thugs, start causing trouble on Earth, the Green Lantern Corps must step in to stop them.', 70, 'hero', 'ENC-003'),

    -- the unknown vs the bad doodz
    ('COM-004', 'The unknown vs the bad doodz', 'The Unknown are a group of mysterious heroes who have been fighting crime in the city for years. But when the Bad Doodz, a group of villainous thugs, start causing trouble, the Unknown must step up to the plate and take them down. With their unique powers and abilities, the Unknown are more than a match for the Bad Doodz.', 70, 'hero', 'ENC-004'),

    -- the watchers vs the bad doodz
    ('COM-005', 'The watchers vs the bad doodz', 'The Watchers are a group of heroes who have been keeping an eye on the city for years. But when the Bad Doodz, a group of villainous thugs, start causing trouble, the Watchers must step in to stop them. With their powers of observation and insight, the Watchers are able to outsmart the Bad Doodz and bring them to justice.', 70, 'hero', 'ENC-005'),

    -- the muscle twins vs the bad doodz
    ('COM-006', 'The muscle twins vs the bad doodz', 'The Muscle Twins are a pair of super-powered siblings who have been fighting crime in the city for years. But when the Bad Doodz, a group of villainous thugs, start causing trouble, the Muscle Twins must step in to stop them. With their incredible strength and agility, the Muscle Twins are able to take down the Bad Doodz and save the day.', 70, 'hero', 'ENC-006');


-- customers --
INSERT INTO "customers" ("id_customer", "name", "birthday", "email") VALUES
('CUS-001', 'Lara Kent', '1990-05-14', 'lara.kent@email.com'),
('CUS-002', 'Bruce Lane', '1985-11-20', 'bruce.lane@email.com'),
('CUS-004', 'Peter Stone', '1988-07-01', 'peter.stone@email.com'),
('CUS-008', 'Janet Carter', '1997-08-19', 'janet.carter@email.com'),
('CUS-009', 'Tony Sparks', '1991-03-03', 'tony.sparks@email.com');

INSERT INTO transactions (id_transaction, id_customer, id_comic, quantity, date)
VALUES
    ('TRX-001', 'CUS-001', 'COM-001', 1, '2021-10-01'),
    ('TRX-002', 'CUS-002', 'COM-001', 2, '2021-10-01'),
    ('TRX-003', 'CUS-002', 'COM-002', 1, '2021-10-01'),
    ('TRX-004', 'CUS-004', 'COM-003', 2, '2021-10-01'),
    ('TRX-005', 'CUS-008', 'COM-004', 1, '2021-10-01'),
    ('TRX-006', 'CUS-009', 'COM-001', 3, '2021-10-01'),
    ('TRX-007', 'CUS-009', 'COM-005', 2, '2021-10-01'),
    ('TRX-008', 'CUS-009', 'COM-003', 1, '2021-10-01'),
    ('TRX-009', 'CUS-002', 'COM-006', 4, '2021-10-01');

-- Villagers (just random people that could be present in a comic)
INSERT INTO villagers (id_villager, name, description, availability)
VALUES
    ('VIL-001', 'John Doe', 'Just a regular guy', 'available'),
    ('VIL-002', 'Jane Doe', 'Just a regular girl', 'available'),
    ('VIL-003', 'Joe Smith', 'Just a regular guy', 'available'),
    ('VIL-004', 'Jill Smith', 'Just a regular girl', 'available'),
    ('VIL-005', 'Jack Black', 'Just a regular guy', 'available'),
    ('VIL-006', 'Jill Black', 'Just a regular girl', 'available'),
    ('VIL-007', 'John White', 'Just a regular guy', 'available'),
    ('VIL-008', 'Jane White', 'Just a regular girl', 'available');


-- villagerXcomic
INSERT INTO "villagerXcomic" (id_villager, id_comic)
VALUES
    ('VIL-001', 'COM-001'),
    ('VIL-002', 'COM-001'),
    ('VIL-003', 'COM-001'),
    ('VIL-004', 'COM-002'),
    ('VIL-005', 'COM-002'),
    ('VIL-006', 'COM-002'),
    ('VIL-007', 'COM-003'),
    ('VIL-008', 'COM-003'),
    ('VIL-001', 'COM-003'),
    ('VIL-002', 'COM-004'),
    ('VIL-003', 'COM-004'),
    ('VIL-004', 'COM-004'),
    ('VIL-005', 'COM-005'),
    ('VIL-006', 'COM-005'),
    ('VIL-007', 'COM-005'),
    ('VIL-008', 'COM-006'),
    ('VIL-001', 'COM-006'),
    ('VIL-002', 'COM-006');


-- mortalArms
INSERT INTO "mortalArms" ("id_mortalArm", "id_comic", name, description, availability)
VALUES
    ('MOR-001', 'COM-001', 'Superman''s cape', 'Superman''s cape is a symbol of hope and justice. It is indestructible and can be used as a shield or a weapon.', 'available'),
    ('MOR-002', 'COM-002', 'Captain America''s shield', 'Captain America''s shield is made of vibranium, a rare metal that can absorb and redirect energy. It is virtually indestructible and can be used as a weapon or a defensive tool.', 'available'),
    ('MOR-003', 'COM-003', 'Green Lantern''s ring', 'The Green Lantern''s ring is a powerful weapon that can create anything the user can imagine. It is fueled by the user''s willpower and can be used to create constructs of any shape or size.', 'available'),
    ('MOR-004', 'COM-004', 'Thor''s hammer', 'Thor''s hammer is a powerful weapon that can only be wielded by those who are worthy. It is enchanted with powerful magic and can only be lifted by those who are pure of heart.', 'available');
    