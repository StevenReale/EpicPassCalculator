
DROP TABLE IF EXISTS resort_pool;
DROP TABLE IF EXISTS resort_pass;
DROP TABLE IF EXISTS pool;
DROP TABLE IF EXISTS resort;
DROP TABLE IF EXISTS region;
DROP TABLE IF EXISTS pass;

CREATE TABLE pass (
	pass_id serial NOT NULL,
	name varchar (50) NOT NULL,
	price decimal NOT NULL,
	CONSTRAINT pk_pass PRIMARY KEY (pass_id)
);

INSERT INTO pass (name, price) VALUES ('Epic Pass', 909.00);
INSERT INTO pass (name, price) VALUES ('Epic Local Pass', 676.00 );
INSERT INTO pass (name, price) VALUES ('Epic 1 Day Pass Tier 1 Without Holidays', 101.00);
INSERT INTO pass (name, price) VALUES ('Epic 2 Day Pass Tier 1 Without Holidays', 198.00);
INSERT INTO pass (name, price) VALUES ('Epic 3 Day Pass Tier 1 Without Holidays', 289.00);
INSERT INTO pass (name, price) VALUES ('Epic 4 Day Pass Tier 1 Without Holidays', 375.00);
INSERT INTO pass (name, price) VALUES ('Epic 5 Day Pass Tier 1 Without Holidays', 455.00);
INSERT INTO pass (name, price) VALUES ('Epic 6 Day Pass Tier 1 Without Holidays', 530.00);
INSERT INTO pass (name, price) VALUES ('Epic 7 Day Pass Tier 1 Without Holidays', 600.00);
INSERT INTO pass (name, price) VALUES ('Epic 1 Day Pass Tier 2 Without Holidays', 78.00);
INSERT INTO pass (name, price) VALUES ('Epic 2 Day Pass Tier 2 Without Holidays', 153.00);
INSERT INTO pass (name, price) VALUES ('Epic 3 Day Pass Tier 2 Without Holidays', 223.00);
INSERT INTO pass (name, price) VALUES ('Epic 4 Day Pass Tier 2 Without Holidays', 288.00);
INSERT INTO pass (name, price) VALUES ('Epic 5 Day Pass Tier 2 Without Holidays', 348.00);
INSERT INTO pass (name, price) VALUES ('Epic 6 Day Pass Tier 2 Without Holidays', 407.00);
INSERT INTO pass (name, price) VALUES ('Epic 7 Day Pass Tier 2 Without Holidays', 459.00);
INSERT INTO pass (name, price) VALUES ('Epic 1 Day Pass Tier 3 Without Holidays', 48.00);
INSERT INTO pass (name, price) VALUES ('Epic 2 Day Pass Tier 3 Without Holidays', 93.00);
INSERT INTO pass (name, price) VALUES ('Epic 3 Day Pass Tier 3 Without Holidays', 137.00);
INSERT INTO pass (name, price) VALUES ('Epic 4 Day Pass Tier 3 Without Holidays', 175.00);
INSERT INTO pass (name, price) VALUES ('Epic 5 Day Pass Tier 3 Without Holidays', 213.00);
INSERT INTO pass (name, price) VALUES ('Epic 6 Day Pass Tier 3 Without Holidays', 249.00);
INSERT INTO pass (name, price) VALUES ('Epic 7 Day Pass Tier 3 Without Holidays', 281.00);
INSERT INTO pass (name, price) VALUES ('Epic 1 Day Pass Tier 1 With Holidays', 119.00);
INSERT INTO pass (name, price) VALUES ('Epic 2 Day Pass Tier 1 With Holidays', 235.00);
INSERT INTO pass (name, price) VALUES ('Epic 3 Day Pass Tier 1 With Holidays', 343.00);
INSERT INTO pass (name, price) VALUES ('Epic 4 Day Pass Tier 1 With Holidays', 443.00);
INSERT INTO pass (name, price) VALUES ('Epic 5 Day Pass Tier 1 With Holidays', 538.00);
INSERT INTO pass (name, price) VALUES ('Epic 6 Day Pass Tier 1 With Holidays', 627.00);
INSERT INTO pass (name, price) VALUES ('Epic 7 Day Pass Tier 1 With Holidays', 710.00);
INSERT INTO pass (name, price) VALUES ('Epic 1 Day Pass Tier 2 With Holidays', 91.00);
INSERT INTO pass (name, price) VALUES ('Epic 2 Day Pass Tier 2 With Holidays', 180.00);
INSERT INTO pass (name, price) VALUES ('Epic 3 Day Pass Tier 2 With Holidays', 262.00);
INSERT INTO pass (name, price) VALUES ('Epic 4 Day Pass Tier 2 With Holidays', 339.00);
INSERT INTO pass (name, price) VALUES ('Epic 5 Day Pass Tier 2 With Holidays', 412.00);
INSERT INTO pass (name, price) VALUES ('Epic 6 Day Pass Tier 2 With Holidays', 479.00);
INSERT INTO pass (name, price) VALUES ('Epic 7 Day Pass Tier 2 With Holidays', 544.00);
INSERT INTO pass (name, price) VALUES ('Epic 1 Day Pass Tier 3 With Holidays', 57.00);
INSERT INTO pass (name, price) VALUES ('Epic 2 Day Pass Tier 3 With Holidays', 112.00);
INSERT INTO pass (name, price) VALUES ('Epic 3 Day Pass Tier 3 With Holidays', 162.00);
INSERT INTO pass (name, price) VALUES ('Epic 4 Day Pass Tier 3 With Holidays', 209.00);
INSERT INTO pass (name, price) VALUES ('Epic 5 Day Pass Tier 3 With Holidays', 254.00);
INSERT INTO pass (name, price) VALUES ('Epic 6 Day Pass Tier 3 With Holidays', 294.00);
INSERT INTO pass (name, price) VALUES ('Epic 7 Day Pass Tier 3 With Holidays', 335.00);
INSERT INTO pass (name, price) VALUES ('Tahoe Local Pass', 575.00);
INSERT INTO pass (name, price) VALUES ('Tahoe Value Pass', 489.00);
INSERT INTO pass (name, price) VALUES ('Keystone Plus Pass', 361.00);
INSERT INTO pass (name, price) VALUES ('Summit Value Pass', 546.00);
INSERT INTO pass (name, price) VALUES ('Northeast Value Pass', 555.00);
INSERT INTO pass (name, price) VALUES ('Northeast Midweek Pass', 416.00);
INSERT INTO pass (name, price) VALUES ('Kirkwood Pass', 575.00);
INSERT INTO pass (name, price) VALUES ('Wilmot Pass', 398.00);
INSERT INTO pass (name, price) VALUES ('Afton Alps Pass', 444.00);
INSERT INTO pass (name, price) VALUES ('Mt. Brighton Pass', 501.00);
INSERT INTO pass (name, price) VALUES ('Ohio Pass', 323.00);
INSERT INTO pass (name, price) VALUES ('Paoli Peaks Pass', 296.00);
INSERT INTO pass (name, price) VALUES ('Snow Creek Pass', 296.00);
INSERT INTO pass (name, price) VALUES ('Hidden Valley Pass', 351.00);
INSERT INTO pass (name, price) VALUES ('Stevens Pass Premium Pass', 579.00);
INSERT INTO pass (name, price) VALUES ('Stevens Pass Select Pass', 371.00);

CREATE TABLE region (
	region_id serial,
	name varchar(30) NOT NULL,
	CONSTRAINT pk_region PRIMARY KEY(region_id)
);

INSERT INTO region (name) VALUES('Rockies'); 		--id 1
INSERT INTO region (name) VALUES('West'); 			--id 2
INSERT INTO region (name) VALUES('Canada'); 		--id 3
INSERT INTO region (name) VALUES('Northeast'); 		--id 4
INSERT INTO region (name) VALUES('Midatlantic'); 	--id 5
INSERT INTO region (name) VALUES('Midwest'); 		--id 6
INSERT INTO region (name) VALUES('International');	--id 7

CREATE TABLE resort (
	resort_id serial,
	name varchar(50) NOT NULL,
	region_id int,
	tier int,
	CONSTRAINT pk_resort PRIMARY KEY(resort_id),
	CONSTRAINT fk_region_id FOREIGN KEY(region_id) REFERENCES region(region_id)

);

INSERT INTO resort (name, region_id, tier) VALUES('Vail, CO', 1, 1);								--1
INSERT INTO resort (name, region_id, tier) VALUES('Beaver Creek, CO', 1, 1);						--2
INSERT INTO resort (name, region_id, tier) VALUES('Breckenridge, CO', 1, 1);						--3
INSERT INTO resort (name, region_id, tier) VALUES('Keystone, CO', 1, 2);							--4
INSERT INTO resort (name, region_id, tier) VALUES('Crested Butte, CO', 1, 2);						--5
INSERT INTO resort (name, region_id, tier) VALUES('Park City, UT', 1, 1);    						--6
INSERT INTO resort (name, region_id, tier) VALUES('Stowe, VT', 4, 2);								--7
INSERT INTO resort (name, region_id, tier) VALUES('Okemo, VT', 4, 2);								--8
INSERT INTO resort (name, region_id, tier) VALUES('Mount Sunapee, NH', 4, 3);						--9
INSERT INTO resort (name, region_id, tier) VALUES('Mount Snow, VT', 4, 2);							--10
INSERT INTO resort (name, region_id, tier) VALUES('Hunter Mountain, NY', 4, 2);						--11
INSERT INTO resort (name, region_id, tier) VALUES('Attitash Mountain Resort, NH', 4, 3);			--12
INSERT INTO resort (name, region_id, tier) VALUES('Wildcat Mountain, NH', 4, 3);					--13
INSERT INTO resort (name, region_id, tier) VALUES('Crotched Mountain, NH', 4, 3);					--14
INSERT INTO resort (name, region_id, tier) VALUES('Heavenly, CA/NV', 2, 2);							--15
INSERT INTO resort (name, region_id, tier) VALUES('Northstar, CA', 2, 2);							--16
INSERT INTO resort (name, region_id, tier) VALUES('Kirkwood, CA', 2, 2);							--17
INSERT INTO resort (name, region_id, tier) VALUES('Stevens Pass, WA', 2, 2);						--18
INSERT INTO resort (name, region_id, tier) VALUES('Whistler Blackcomb, BC', 3, 1);					--19
INSERT INTO resort (name, region_id, tier) VALUES('Liberty Mountain Resort, PA', 5, 3);				--20
INSERT INTO resort (name, region_id, tier) VALUES('Roundtop Mountain Resort, PA', 5, 3);			--21
INSERT INTO resort (name, region_id, tier) VALUES('Whitetail Resort, PA', 5, 3);					--22
INSERT INTO resort (name, region_id, tier) VALUES('Jack Frost, PA', 5, 3);							--23
INSERT INTO resort (name, region_id, tier) VALUES('Big Boulder, PA', 5, 3);							--24
INSERT INTO resort (name, region_id, tier) VALUES('Seven Springs, PA', 5, 3);						--25
INSERT INTO resort (name, region_id, tier) VALUES('Laurel Mountain, PA', 5, 3);						--26
INSERT INTO resort (name, region_id, tier) VALUES('Hidden Valley, PA', 5, 3);						--27
INSERT INTO resort (name, region_id, tier) VALUES('Mt. Brighton, MI', 5, 3);						--28
INSERT INTO resort (name, region_id, tier) VALUES('Afton Alps, MN', 5, 3);							--29
INSERT INTO resort (name, region_id, tier) VALUES('Wilmot, WI', 5, 3);								--30
INSERT INTO resort (name, region_id, tier) VALUES('Alpine Valley, OH', 6, 3);						--31
INSERT INTO resort (name, region_id, tier) VALUES('Boston Mills, OH', 6, 3);						--32
INSERT INTO resort (name, region_id, tier) VALUES('Brandywine, OH', 6, 3);							--33
INSERT INTO resort (name, region_id, tier) VALUES('Mad River Mountain, OH', 6, 3);					--34
INSERT INTO resort (name, region_id, tier) VALUES('Snow Creek, MO', 6, 3);							--35
INSERT INTO resort (name, region_id, tier) VALUES('Paoli Peaks, IN', 6, 3);							--36
INSERT INTO resort (name, region_id, tier) VALUES('Andermatt-Sedrun-Disentis, Switzerland', 7, 1); 	--37
INSERT INTO resort (name, region_id, tier) VALUES('Telluride, CO', 1, 1);							--38
INSERT INTO resort (name, region_id, tier) VALUES('Resorts of the Canadian Rockies', 3, 1);			--39
INSERT INTO resort (name, region_id, tier) VALUES('Hidden Valley, MO', 6, 3);						--40

CREATE TABLE pool (
	pool_id serial,
	pass_id int NOT NULL,
	num_of_days int NOT NULL,
	CONSTRAINT pk_pool PRIMARY KEY(pool_id),
	CONSTRAINT fk_pass FOREIGN KEY(pass_id) REFERENCES pass(pass_id)
);

INSERT INTO pool (pass_id, num_of_days) VALUES ((SELECT pass_id FROM pass WHERE name = 'Epic Local Pass'), 10);
INSERT INTO pool (pass_id, num_of_days) VALUES ((SELECT pass_id FROM pass WHERE name = 'Tahoe Local Pass'), 5);

CREATE TABLE resort_pass (
	pass_id int NOT NULL,
	resort_id int NOT NULL,
	days_of_access int NOT NULL,
	valid_holidays boolean NOT NULL,
	valid_sundays boolean NOT NULL,
	valid_saturdays boolean NOT NULL,
	CONSTRAINT fk_pass_id FOREIGN KEY(pass_id) REFERENCES pass(pass_id),
	CONSTRAINT fk_resort_id FOREIGN KEY(resort_id) REFERENCES resort(resort_id)															
);

--Epic 1-Day Tier 1 No Holidays
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,1,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,2,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,3,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,4,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,5,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,6,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,7,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,8,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,9,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,10,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	11,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	12,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	13,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	14,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	15,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	16,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	17,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	18,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	19,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	20,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	21,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	22,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	23,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	24,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	25,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	26,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	27,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	28,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	29,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	30,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	31,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	32,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	33,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	34,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	35,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	36,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	37,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3,	40,	1, false,true,true);

--Epic 2-Day Tier 1 No Holidays
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,1,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,2,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,3,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,4,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,5,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,6,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,7,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,8,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,9,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,10,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	11,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	12,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	13,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	14,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	15,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	16,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	17,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	18,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	19,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	20,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	21,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	22,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	23,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	24,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	25,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	26,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	27,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	28,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	29,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	30,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	31,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	32,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	33,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	34,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	35,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	36,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	37,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4,	40,	1, false,true,true);

--Epic 3-Day Tier 1 No Holidays
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,1,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,2,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,3,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,4,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,5,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,6,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,7,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,8,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,9,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,10,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	11,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	12,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	13,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	14,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	15,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	16,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	17,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	18,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	19,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	20,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	21,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	22,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	23,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	24,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	25,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	26,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	27,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	28,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	29,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	30,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	31,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	32,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	33,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	34,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	35,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	36,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	37,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5,	40,	1, false,true,true);

--Epic 4 Day Tier 1 No Holidays
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,1,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,2,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,3,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,4,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,5,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,6,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,7,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,8,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,9,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,10,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	11,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	12,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	13,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	14,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	15,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	16,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	17,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	18,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	19,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	20,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	21,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	22,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	23,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	24,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	25,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	26,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	27,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	28,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	29,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	30,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	31,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	32,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	33,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	34,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	35,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	36,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	37,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	38,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	39,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6,	40,	1, false,true,true);

--Epic 5 Day Tier 1 No Holidays
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,1,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,2,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,3,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,4,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,5,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,6,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,7,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,8,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,9,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,10,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	11,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	12,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	13,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	14,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	15,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	16,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	17,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	18,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	19,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	20,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	21,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	22,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	23,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	24,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	25,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	26,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	27,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	28,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	29,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	30,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	31,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	32,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	33,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	34,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	35,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	36,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	37,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	38,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	39,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7,	40,	1, false,true,true);

--Epic 6 Day Tier 1 No Holidays
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,1,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,2,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,3,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,4,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,5,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,6,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,7,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,8,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,9,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,10,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	11,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	12,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	13,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	14,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	15,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	16,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	17,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	18,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	19,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	20,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	21,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	22,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	23,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	24,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	25,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	26,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	27,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	28,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	29,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	30,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	31,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	32,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	33,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	34,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	35,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	36,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	37,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	38,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	39,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8,	40,	1, false,true,true);

--Epic 7 Day Tier 1 No Holidays
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,1,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,2,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,3,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,4,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,5,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,6,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,7,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,8,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,9,1, false, true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,10,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	11,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	12,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	13,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	14,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	15,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	16,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	17,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	18,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	19,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	20,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	21,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	22,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	23,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	24,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	25,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	26,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	27,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	28,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	29,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	30,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	31,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	32,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	33,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	34,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	35,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	36,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	37,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	38,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	39,	1, false,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9,	40,	1, false,true,true);

--Epic 1 Day Tier 1 Holiday Access
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,1,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,2,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,3,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,4,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,5,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,6,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,7,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,8,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,9,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,10,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,11,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,12,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,13,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,14,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,15,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,16,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,17,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,18,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,19,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,20,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,21,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,22,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,23,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,24,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,25,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,26,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,27,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,28,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,29,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,30,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,31,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,32,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,33,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,34,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,35,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,36,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,37,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,40,1, true ,true,true);

--Epic 2 Day Tier 1 Holiday Access
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,1,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,2,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,3,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,4,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,5,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,6,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,7,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,8,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,9,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,10,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,11,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,12,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,13,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,14,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,15,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,16,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,17,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,18,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,19,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,20,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,21,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,22,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,23,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,24,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,25,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,26,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,27,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,28,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,29,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,30,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,31,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,32,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,33,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,34,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,35,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,36,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,37,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,40,1, true ,true,true);

--Epic 3 Day Tier 1 Holiday Access
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,1,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,2,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,3,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,4,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,5,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,6,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,7,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,8,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,9,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,10,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,11,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,12,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,13,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,14,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,15,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,16,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,17,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,18,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,19,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,20,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,21,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,22,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,23,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,24,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,25,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,26,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,27,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,28,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,29,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,30,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,31,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,32,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,33,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,34,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,35,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,36,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,37,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,40,1, true ,true,true);

--Epic 4 Day Tier 1 Holiday Access
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,1,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,2,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,3,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,4,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,5,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,6,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,7,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,8,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,9,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,10,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,11,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,12,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,13,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,14,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,15,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,16,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,17,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,18,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,19,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,20,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,21,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,22,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,23,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,24,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,25,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,26,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,27,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,28,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,29,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,30,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,31,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,32,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,33,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,34,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,35,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,36,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,37,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,38,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,39,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,40,1, true ,true,true);

--Epic 5 Day Tier 1 Holiday Access
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,1,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,2,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,3,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,4,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,5,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,6,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,7,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,8,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,9,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,10,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,11,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,12,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,13,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,14,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,15,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,16,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,17,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,18,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,19,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,20,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,21,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,22,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,23,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,24,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,25,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,26,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,27,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,28,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,29,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,30,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,31,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,32,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,33,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,34,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,35,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,36,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,37,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,38,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,39,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,40,1, true ,true,true);

--Epic 6 Day Tier 1 Holiday Access
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,1,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,2,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,3,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,4,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,5,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,6,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,7,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,8,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,9,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,10,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,11,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,12,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,13,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,14,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,15,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,16,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,17,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,18,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,19,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,20,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,21,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,22,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,23,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,24,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,25,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,26,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,27,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,28,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,29,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,30,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,31,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,32,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,33,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,34,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,35,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,36,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,37,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,38,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,39,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,40,1, true ,true,true);

--Epic 7 Day Tier 1 Holiday Access
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,1,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,2,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,3,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,4,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,5,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,6,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,7,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,8,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,9,1,  true , true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,10,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,11,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,12,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,13,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,14,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,15,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,16,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,17,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,18,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,19,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,20,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,21,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,22,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,23,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,24,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,25,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,26,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,27,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,28,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,29,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,30,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,31,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,32,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,33,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,34,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,35,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,36,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,37,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,38,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,39,1, true ,true,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,40,1, true ,true,true);

--Ohio Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(55, 31, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(55, 32, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(55, 33, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(55, 34, 999, true, true, true);

--Northeast Value Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 31, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 32, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 33, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 34, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 7, 10, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 8, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 9, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 10, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 11, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 12, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 13, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 14, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 20, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 21, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 22, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 23, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 24, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 25, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 26, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 27, 999, true, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(49, 28, 999, true, true, true);

--Northeast Midweek Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 31, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 32, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 33, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 34, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 7, 5, false, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 8, 999, false, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 9, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 10, 999, false, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 11, 999, false, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 12, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 13, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 14, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 20, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 21, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 22, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 23, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 24, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 25, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 26, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 27, 999, true, false, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(50, 28, 999, true, false, false);

--Kirkwood Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(51, 17, 999, true, true, true);

--Wilmot Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(52, 30, 999, true, true, true);

--Afton Alps Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(53, 29, 999, true, true, true);

--Mt. Brighton Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(54, 28, 999, true, true, true);

--Paoli Peaks Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(56, 36, 999, true, true, true);

--Snow Creek Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(57, 35, 999, true, true, true);

--Hidden Valley Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(58, 40, 999, true, true, true);

--Stevens Pass Select Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(59, 18, 999, false, true, true);

--Stevens Pass Premium Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(59, 18, 999, true, true, true);

CREATE TABLE resort_pool (
	pool_id int NOT NULL,
	resort_id int NOT NULL,
	CONSTRAINT fk_pool_id FOREIGN KEY (pool_id) REFERENCES pool(pool_id),
	CONSTRAINT fk_resort_id FOREIGN KEY (resort_id) REFERENCES resort(resort_id)
);

INSERT INTO resort_pool (pool_id, resort_id) VALUES (1, 1); --Epic Local: Vail
INSERT INTO resort_pool (pool_id, resort_id) VALUES (1, 2); --Epic Local: Beaver Creek
INSERT INTO resort_pool (pool_id, resort_id) VALUES (1, 19); -- Epic Local: Whistler Blackcomb
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2, 1); --Tahoe Local: Vail
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2, 2); --Tahoe Local: Beaver Creek 
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2, 3); --Tahoe Local: Breckenridge
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2, 4); --Tahoe Local: Keystone
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2, 5); --Tahoe Local: Crested Butte
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2, 6); --Tahoe Local: Park City

SELECT pass.name, COUNT(resort_id) from pass
LEFT JOIN resort_pass USING (pass_id)
GROUP BY pass.name
ORDER BY pass.name;

WHERE name LIKE 'Epic 1%';

SELECT pass.name, resort.name FROM resort_pass
JOIN pass ON pass.pass_id = resort_pass.pass_id
JOIN resort ON resort.resort_id = resort_pass.resort_id
WHERE pass.pass_id = 30;
