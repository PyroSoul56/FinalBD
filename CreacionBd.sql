CREATE TABLE "comics"(
    "price" BIGINT NOT NULL,
    "description" VARCHAR(1500) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    "id_encounter" VARCHAR(255) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "id_comic" VARCHAR(255) NOT NULL
);
CREATE INDEX "comics_id_encounter_index" ON
    "comics"("id_encounter");
ALTER TABLE
    "comics" ADD PRIMARY KEY("id_comic");
CREATE TABLE "encounters"(
    "result" VARCHAR(255) NOT NULL,
    "id_encounter" VARCHAR(255) NOT NULL,
    "id_heroGroup" VARCHAR(255) NOT NULL,
    "id_villainGroup" VARCHAR(255) NOT NULL
);
CREATE INDEX "encounters_result_index" ON
    "encounters"("result");
ALTER TABLE
    "encounters" ADD PRIMARY KEY("id_encounter");
CREATE INDEX "encounters_id_herogroup_index" ON
    "encounters"("id_heroGroup");
CREATE INDEX "encounters_id_villaingroup_index" ON
    "encounters"("id_villainGroup");
CREATE TABLE "weaknesses"(
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "id_weakness" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "weaknesses" ADD PRIMARY KEY("id_weakness");
CREATE TABLE "customers"(
    "email" VARCHAR(255) NOT NULL,
    "id_customer" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "birthday" DATE NOT NULL
);
ALTER TABLE
    "customers" ADD PRIMARY KEY("id_customer");
CREATE TABLE "characters"(
    "id_character" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "id_group" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "characters" ADD PRIMARY KEY("id_character");
CREATE INDEX "characters_id_group_index" ON
    "characters"("id_group");
CREATE TABLE "villagerXcomic"(
    "id_villager" VARCHAR(255) NOT NULL,
    "id_comic" VARCHAR(255) NOT NULL
);
CREATE INDEX "villagerxcomic_id_villager_index" ON
    "villagerXcomic"("id_villager");
CREATE INDEX "villagerxcomic_id_comic_index" ON
    "villagerXcomic"("id_comic");
CREATE TABLE "transactions"(
    "quantity" BIGINT NOT NULL,
    "id_transaction" VARCHAR(255) NOT NULL,
    "id_customer" VARCHAR(255) NOT NULL,
    "id_comic" VARCHAR(255) NOT NULL,
    "date" DATE NOT NULL
);
ALTER TABLE
    "transactions" ADD PRIMARY KEY("id_transaction");
CREATE INDEX "transactions_id_customer_index" ON
    "transactions"("id_customer");
CREATE INDEX "transactions_id_comic_index" ON
    "transactions"("id_comic");
CREATE TABLE "powers"(
    "description" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "id_power" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "powers" ADD PRIMARY KEY("id_power");
CREATE TABLE "powersXcharacter"(
    "id_character" VARCHAR(255) NOT NULL,
    "id_power" VARCHAR(255) NOT NULL
);
CREATE INDEX "powersxcharacter_id_character_index" ON
    "powersXcharacter"("id_character");
CREATE INDEX "powersxcharacter_id_power_index" ON
    "powersXcharacter"("id_power");
CREATE TABLE "groups"(
    "description" VARCHAR(255) NOT NULL,
    "type" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "id_group" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "groups" ADD PRIMARY KEY("id_group");
CREATE TABLE "mortalArms"(
    "description" VARCHAR(255) NOT NULL,
    "id_mortalArm" VARCHAR(255) NOT NULL,
    "availability" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "id_comic" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "mortalArms" ADD PRIMARY KEY("id_mortalArm");
CREATE INDEX "mortalarms_id_comic_index" ON
    "mortalArms"("id_comic");
CREATE TABLE "weaknessXcharacter"(
    "id_weakness" VARCHAR(255) NOT NULL,
    "id_character" VARCHAR(255) NOT NULL
);
CREATE INDEX "weaknessxcharacter_id_weakness_index" ON
    "weaknessXcharacter"("id_weakness");
CREATE INDEX "weaknessxcharacter_id_character_index" ON
    "weaknessXcharacter"("id_character");
CREATE TABLE "villagers"(
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "availability" VARCHAR(255) NOT NULL,
    "id_villager" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "villagers" ADD PRIMARY KEY("id_villager");
ALTER TABLE
    "weaknessXcharacter" ADD CONSTRAINT "weaknessxcharacter_id_weakness_foreign" FOREIGN KEY("id_weakness") REFERENCES "weaknesses"("id_weakness");
ALTER TABLE
    "transactions" ADD CONSTRAINT "transactions_id_comic_foreign" FOREIGN KEY("id_comic") REFERENCES "comics"("id_comic");
ALTER TABLE
    "powersXcharacter" ADD CONSTRAINT "powersxcharacter_id_power_foreign" FOREIGN KEY("id_power") REFERENCES "powers"("id_power");
ALTER TABLE
    "weaknessXcharacter" ADD CONSTRAINT "weaknessxcharacter_id_character_foreign" FOREIGN KEY("id_character") REFERENCES "characters"("id_character");
ALTER TABLE
    "encounters" ADD CONSTRAINT "encounters_id_villaingroup_foreign" FOREIGN KEY("id_villainGroup") REFERENCES "groups"("id_group");
ALTER TABLE
    "transactions" ADD CONSTRAINT "transactions_id_customer_foreign" FOREIGN KEY("id_customer") REFERENCES "customers"("id_customer");
ALTER TABLE
    "characters" ADD CONSTRAINT "characters_id_group_foreign" FOREIGN KEY("id_group") REFERENCES "groups"("id_group");
ALTER TABLE
    "comics" ADD CONSTRAINT "comics_id_encounter_foreign" FOREIGN KEY("id_encounter") REFERENCES "encounters"("id_encounter");
ALTER TABLE
    "powersXcharacter" ADD CONSTRAINT "powersxcharacter_id_character_foreign" FOREIGN KEY("id_character") REFERENCES "characters"("id_character");
ALTER TABLE
    "encounters" ADD CONSTRAINT "encounters_id_herogroup_foreign" FOREIGN KEY("id_heroGroup") REFERENCES "groups"("id_group");
ALTER TABLE
    "mortalArms" ADD CONSTRAINT "mortalarms_id_comic_foreign" FOREIGN KEY("id_comic") REFERENCES "comics"("id_comic");
ALTER TABLE
    "villagerXcomic" ADD CONSTRAINT "villagerxcomic_id_villager_foreign" FOREIGN KEY("id_villager") REFERENCES "villagers"("id_villager");
ALTER TABLE
    "villagerXcomic" ADD CONSTRAINT "villagerxcomic_id_comic_foreign" FOREIGN KEY("id_comic") REFERENCES "comics"("id_comic");