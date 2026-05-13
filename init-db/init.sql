CREATE EXTENSION IF NOT EXISTS postgis;

DROP TABLE IF EXISTS buildings CASCADE;
CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    osm_id TEXT UNIQUE NOT NULL,
    addr_city TEXT,
    addr_street TEXT,
    addr_housenumber TEXT,
    addr_postcode TEXT,
    building TEXT,
    building_levels TEXT,
    height TEXT,
    geom GEOMETRY(MultiPolygon, 4326) NOT NULL
);

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575740', 'Подстёпки', '1-й проезд, 7, СНТ Бережок, сельское поселение Подстепки, Ставропольский район, Самарская область', '7', '445143', 'house', '2', '0', ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0954756 53.5085984, 49.0955193 53.5085965, 49.0955651 53.5085947, 49.0955651 53.5086104, 49.0956037 53.5086086, 49.0956067 53.5086225, 49.0956098 53.5086521, 49.0956118 53.50868, 49.0955529 53.5086824, 49.0955518 53.508666, 49.0955234 53.5086679, 49.0954807 53.5086697, 49.0954797 53.5086395, 49.0954756 53.5085984))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575741', 'Подстёпки', '1-й проезд, 6, СНТ Бережок, сельское поселение Подстепки', '6', '445143', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0953284 53.5085187, 49.0953231 53.5084872, 49.0953186 53.5084582, 49.0953151 53.5084287, 49.0953107 53.5083956, 49.0953399 53.508394, 49.0953841 53.508393, 49.0954292 53.508393, 49.0954301 53.5084098, 49.0954567 53.5084098, 49.0954584 53.5083988, 49.095546 53.5083951, 49.0955487 53.5084308, 49.0954655 53.5084351, 49.095469 53.5084993, 49.0954558 53.5084987, 49.0954575 53.508504, 49.0954239 53.5085056, 49.0954239 53.5085161, 49.0953708 53.5085177, 49.0953284 53.5085187))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575742', 'Подстёпки', '1-й проезд, 5, СНТ Бережок, сельское поселение Подстепки', '5', '445143', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0952942 53.5082711, 49.0952934 53.5082473, 49.0952926 53.5082203, 49.0953335 53.5082194, 49.0953881 53.5082189, 49.0953881 53.5082423, 49.0953874 53.5082711, 49.0953396 53.5082711, 49.0952942 53.5082711))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575743', 'Подстёпки', '1-й проезд, 4, СНТ Бережок, сельское поселение Подстепки', '4', '445143', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0952888 53.5081764, 49.0952788 53.5081063, 49.0953412 53.5081031, 49.0953505 53.5081737, 49.0952888 53.5081764))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575744', 'Подстёпки', '1-й проезд, дом 2, СНТ «Бережок», сельское поселение Подстепки', '2', '445143', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0951525 53.5083918, 49.0951413 53.508335, 49.0952108 53.508331, 49.0952226 53.5083876, 49.0951525 53.5083918))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575745', 'Подстёпки', '1-й проезд, дом 3, СНТ «Бережок», сельское поселение Подстепки', '3', '445143', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0950783 53.5082034, 49.0950733 53.5081726, 49.0950712 53.5081424, 49.0951149 53.5081393, 49.0951668 53.5081369, 49.0951708 53.5081623, 49.0951749 53.5081986, 49.0951302 53.508201, 49.0950783 53.5082034))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575746', 'Подстёпки', '2-й проезд, 8, СНТ Бережок, сельское поселение Подстепки', '8', '445143', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0958075 53.5081448, 49.0958058 53.50813, 49.0958031 53.5081095, 49.0957969 53.5080727, 49.0958562 53.5080679, 49.0958615 53.5081048, 49.0958677 53.5081406, 49.0958075 53.5081448))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575747', 'Подстёпки', '2-й проезд, 9, СНТ Бережок, сельское поселение Подстепки', '9', '445143', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0958333 53.5083423, 49.0958103 53.5082607, 49.0958837 53.5082534, 49.0959023 53.5083365, 49.0958333 53.5083423))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575748', 'Подстёпки', '2-й проезд, 11, СНТ Бережок, сельское поселение Подстепки', '11', '445143', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0961552 53.5087406, 49.0961508 53.5087127, 49.0961463 53.5086885, 49.096141 53.5086612, 49.0961791 53.508658, 49.0962242 53.5086543, 49.0962702 53.5086512, 49.0962755 53.5086791, 49.0962631 53.5086791, 49.0962667 53.5086991, 49.096272 53.5087312, 49.0962074 53.5087359, 49.0961552 53.5087406))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_postcode, building, building_levels, height, geom) VALUES
('way/1512575749', 'Подстёпки', '3-й проезд, 18, СНТ Бережок, сельское поселение Подстепки', '18', '445143', 'house', '2', '1', ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.0966468 53.5086913, 49.096636 53.5086647, 49.0966221 53.5086189, 49.0966622 53.5086134, 49.0967207 53.5086052, 49.0967438 53.5086784, 49.0966468 53.5086913))'), 4326)));

CREATE INDEX idx_buildings_geom
ON buildings
USING gist (geom);
