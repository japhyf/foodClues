DROP TABLE IF EXISTS Food;

CREATE TABLE Food(
        Store VARCHAR(30),
        Long DECIMAL(5,3),
        Lat DECIMAL(5,3),
        Address VARCHAR(30),
        City VARCHAR(30),
        State CHAR(2),
        Zip INTEGER,
        Zip4 INTEGER,
        County VARCHAR(30)
);

INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Rose Market', -121.86597, 37.347843, '1250 E Santa Clara St', 'San Jose', 'CA', 95116, 2336, 'SANTA');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('TODDS MARKET', -117.25216, 34.074272, '1605 E Victoria Ave', 'San Bernardino', 'CA', 92408, 3041, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Pinchers Liquor', -118.35003, 34.048077, '5121 W Pico Blvd', 'Los Angeles', 'CA', 90019, 4133, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Jamacha Produce Market', -116.96208, 32.729496, '10761 Jamaacha Blvd', 'Spring Valley', 'CA', 91978,1843,'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Maywood Plaza Ranch Market', -118.20193, 33.988785, '3516 Slauson Ave', 'Maywood', 'CA', 90270, 2527, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Saigon City Marketplace', -117.9549, 33.738289, '15471 Brookhurst St', 'Westminster', 'CA', 92683, 7051, 'ORANGE');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Stater Bros. Markets 173', -116.97718, 33.947571, '1430 Beaumont Ave', 'Beaumont', 'CA', 92223, 4704, 'RIVERSIDE');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Grace Liquor', -118.35979, 33.894611, '4700 Marine Ave', 'Lawndale', 'CA', 90260, 1247, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Golden Liquor', -118.09061, 34.146233, '2895 E Colorado Blvd', 'Pasadena', 'CA', 91107, 4311, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Trader Joes 174', -122.2481, 37.496777, '1482 El Camino Real', 'San Carlos', 'CA', 94070, 5102, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Helens Liquor', -118.19251, 33.908669, '12512 Atlantic Ave', 'Lynwood', 'CA', 90262, 5320, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Northgate 18', -117.92011, 33.737179, '770 S Harbor Blvd', 'Santa Ana', 'CA', 92704, 2320, 'ORANGE');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('PARKER AVE MARKET', -121.42986, 37.74733, '1656 Parker Ave', 'Tracy', 'CA', 95376, 3048, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Foods Co 387', -121.32097, 36.417622, '2443 H Dela Rosa SR St', 'Soledad', 'CA', 93960, 3392, 'MONTEREY');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('COST LESS FOOD COMPANY 8', -120.76776, 38.343063, '555 S State Highway 49', 'Jackson', 'CA', 95642, 2535, 'AMADOR');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('AHWAHNEE QUICK MART', -119.72536, 37.367317, '42566 Highway 49', 'Ahwahnee', 'CA', 93601, NULL, 'MADERA');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('BENS MINI MARKET', -118.44067, 34.193996, '14131 Vanowen St', 'Van Nuys', 'CA', 91405, 3255, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Tonys Market', -118.06445, 34.052494, '2027 Rosemead Blvd', 'South El Monte', 'CA', 91733, 1526, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Big Red Seafood Market', -118.3178, 33.966335, '7929 S Van Ness Ave', 'Inglewood', 'CA', 90305, 1542, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('JOONS BARGAIN', -118.28275, 33.995449, '5207 S Figueroa St', 'Los Angeles', 'CA', 90037, 3744, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('The Hero Market', -116.43967, 34.232288, '1160 Old Woman Springs Rd', 'Yucca Valley', 'CA', 92284, 1875, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Mojave Market', -117.32058, 34.528843, '15745 Mojave Dr', 'Victorville', 'CA', 92394, 1929, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Whitmore Market', -120.95238, 37.594711, '2362 E Whitmore Ave', 'Ceres', 'CA', 95307, 2636, 'STANISLAUS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Muscoy Liquor', -117.33198, 34.136158, '1916 W Highland Ave', 'San Bernardino', 'CA', 92407, 6504, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('ZIPPYS FOOD MART', -122.41188, 40.576687, '1750 Pleasant St', 'Redding', 'CA', 96001, 2327, 'SHASTA');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Nu Way Market', -118.24126, 33.984543, '6101 Holmes Ave', 'Los Angeles', 'CA', 90001, 1819, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('California Chevron', -119.04792, 35.367496, '4100 California Ave', 'Bakersfield', 'CA', 93309, 1014, 'KERN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Seven Liquor', -117.44794, 34.099255, '16339 Arrow Blvd', 'Unit A', 'Fontana', 'CA', 92335, 7744,'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Priyas Market and Liquors', -122.10954, 37.676212, '20008 Meekland Ave', 'Hayward', 'CA', 94541, 2025, 'ALAMEDA');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('CONTRERAS MEAT MARKET', -123.17196, 39.133114, '1691 Talmage Rd', 'Ukiah', 'CA', 95482, 6029, 'MENDOCINO');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('SF SUPERMARKET', -121.44859, 38.474186, '4562 MACK RD', 'SACRAMENTO', 'CA', 95823, NULL, 'SACRAMENTO');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('SIDHUS ARCO', -121.97037, 38.353218, '199 Elmira Rd', 'Vacaville', 'CA', 95687, 4700, 'SOLANO');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Selma Farmers Market LLC', -119.59176, 36.546864, '10951 E Mountain View Ave', 'Selma', 'CA', 93662, 9744, 'FRESNO');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('MARYLAND MARKET', -122.4141, 37.782848, '300 Turk St', 'San Francisco', 'CA', 94102, 3704, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('La Chiquita Meat Market', -121.26511, 38.12336, '845 S Central Ave', 'Lodi', 'CA', 95240, 4832, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Trader Joes 193', -122.02512, 36.97464, '700 Front St', 'Santa Cruz', 'CA', 95060, 4525, 'SANTA');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5430', -118.26023, 34.028896, '446 E Washington Blvd', 'Los Angeles', 'CA', 90015, 3721, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5432', -118.15211, 34.019257, '5490 Whittier Blvd', 'Commerce', 'CA', 90022, 4113, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5451', -118.32942, 33.988983, '3230 W Slauson Ave', 'Los Angeles', 'CA', 90043, 2564, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5455', -118.23901, 33.926739, '11750 Wilmington Ave', 'Los Angeles', 'CA', 90059, 2553, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Superior Grocers 120', -117.66316, 34.063305, '815 W Holt Blvd', 'Ontario', 'CA', 91762, 3681, 'SAN');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('Superior Grocers 119', -118.16824, 33.855553, '5450 Cherry Ave', 'Long Beach', 'CA', 90805, 5502, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5458', -118.35556, 34.022045, '3550 S la Brea Ave', 'Los Angeles', 'CA', 90016, 5219, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5459', -118.16468, 33.969555, '6959 Eastern Ave', 'Bell Gardens', 'CA', 90201, 3926, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5466', -118.14072, 33.944275, '7859 Firestone Blvd', 'Downey', 'CA', 90241, 4220, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5475', -118.22517, 33.98196, '6360 Pacific Blvd', 'Huntington Park', 'CA', 90255, 4102, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5476', -118.211, 33.928127, '11325 Long Beach Blvd', 'Lynwood', 'CA', 90262, 3300, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5479', -118.18687, 33.987221, '4410 Slauson Ave', 'Maywood', 'CA', 90270, 2932, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5486', -118.32635, 33.931572, '11340 Crenshaw Blvd', 'Inglewood', 'CA', 90303, 2807, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5495', -118.07449, 33.973789, '7860 Norwalk Blvd', 'Whittier', 'CA', 90606, 2185, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5504', -118.106, 34.017239, '802 W Beverly Blvd', 'Montebello', 'CA', 90640, 4213, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5508', -118.12525, 33.888866, '15924 Bellflower Blvd', 'Bellflower', 'CA', 90706, 4602, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5510', -118.117, 33.857174, '5520 Woodruff Ave', 'Lakewood', 'CA', 90713, 1535, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('RITE AID 5512', -118.15252, 33.889343, '8447 Alondra Blvd', 'Paramount', 'CA', 90723, 4405, 'LOS');
INSERT INTO Food (Store,Lon,Lat,Address,City,State,Zip,Zip4,County) VALUES ('EL PECAS MEAT MARKET', -118.30722, 33.831463, '1644 W Carson St', 'Ste F', 'Torrance', 'CA', 90501, 2839,'LOS');