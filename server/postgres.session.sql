CREATE DATABASE roeiaf;

SELECT COUNT(*) FROM building;

SELECT * FROM building;

INSERT INTO troop_info (troop_point)
VALUES (25), (50), (65), (90), (115), (140), (165), (190), (215);

-- TRUNCATE BUILDING TABLE
DROP TABLE building;

-- CREATE BUILDING TABLE
CREATE TABLE building (
    building_pk SERIAL PRIMARY KEY,
    building_id SMALLINT UNIQUE,
    building_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO building (building_id, building_name)
VALUES ('1','Castle'),
       ('2', 'Farm'),
       ('3','Distillery'),
       ('4','Lumber Yard'),
       ('5','Charcoal Factory'),
       ('6','Quarry'),
       ('7','Iron Mine'),
       ('8','Houses'),
       ('9','Tavern'),
       ('10','Mint'),
       ('11','Trading House'),
       ('12','Food Storage'),
       ('13','Food Storage II'),
       ('14','Food Storage III'),
       ('15','Ale Storage'),
       ('16','Ale Storage II'),
       ('17','Ale Storage III'),
       ('18','Lumber Storage'),
       ('19','Lumber Storage II'),
       ('20','Lumber Storage III'),
       ('21','Royal Charcoal Factory'),
       ('22','Charcoal Workshop'),
       ('23','Charcoal Storage'),
       ('24','Charcoal Storage II'),
       ('25','Charcoal Storage III'),
       ('26','Marble Storage'),
       ('27','Marble Storage II'),
       ('28','Marble Storage III'),
       ('29','Iron Storage'),
       ('30','Iron Storage II'),
       ('31','Iron Storage III'),
       ('32','Crystal Workshop'),
       ('33','Worker''s Guild'),
       ('34','VIP Shop'),
       ('35','Cellar'),
       ('36','Gatherer''s Guild'),
       ('37','Institute'),
       ('38','Military Intel'),
       ('39','Architecture Institute'),
       ('40','Medical Tent'),
       ('41','Encampment'),
       ('42','Barracks'),
       ('43','Military University'),
       ('44','Fortress'),
       ('45','Archery Range'),
       ('46','Sentry Tower'),
       ('47','Stable'),
       ('48','Training Ground'),
       ('49','Blacksmith'),
       ('50','Shrine'),
       ('51','Dragonite Workshop'),
       ('52','Watch Tower'),
       ('53','Dragon Altar'),
       ('54','Alliance Hall'),
       ('55','War Academy'),
       ('56','Farmer''s Guild'),
       ('57','Market'),
       ('58','Class Hall'),
       ('59','Class Training Grounds'),
       ('60','Raider''s Hall'),
       ('61','Bar'),
       ('62','Town Hall'),
       ('63','Arena'),
       ('64','Supply Station'),
       ('65','Spy Agency'),
       ('66','Footmen Enhancement Camp'),
       ('67','Archer Enhancement Camp'),
       ('68','Cavalry Enhancement Camp'),
       ('69','Garrison Hall'),
       ('70','Footmen War Room'),
       ('71','Archer War Room'),
       ('72','Cavalry War Room'),
       ('73','Red Dragon Lair'),
       ('74','White Dragon Lair'),
       ('75','Blue Dragon Lair'),
       ('76','Frost Dragon Lair'),
       ('77','Dragon Shout Temple'),
       ('78','Dragon Slayer'),
       ('79','Black Dragon Lair');

SELECT * FROM building;


INSERT INTO building (building_name)
VALUES ('Farm');