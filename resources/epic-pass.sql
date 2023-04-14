DROP TABLE IF EXISTS pass_pool;
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
	name varchar(100) NOT NULL,
	CONSTRAINT pk_pool PRIMARY KEY(pool_id)
);

INSERT INTO pool (name) VALUES ('Epic Local Pass');
INSERT INTO pool (name) VALUES ('Tahoe Local Pass');
INSERT INTO pool (name) VALUES ('Tier 1, 2, and 3 Resorts Including Telluride and Canadian Rockies');
INSERT INTO pool (name) VALUES ('Tier 1, 2, and 3 Resorts Excluding Telluride and Canadian Rockies');
INSERT INTO pool (name) VALUES ('Tier 2 and 3 Resorts');
INSERT INTO pool (name) VALUES ('Tier 3 Resorts');

CREATE TABLE resort_pass (
	pass_id int NOT NULL,
	resort_id int NOT NULL,
	days_of_access int NOT NULL,
	valid_holidays boolean NOT NULL,
	valid_sundays boolean NOT NULL,
	valid_saturdays boolean NOT NULL,
	UNIQUE (pass_id, resort_id),
	CONSTRAINT fk_pass_id FOREIGN KEY(pass_id) REFERENCES pass(pass_id),
	CONSTRAINT fk_resort_id FOREIGN KEY(resort_id) REFERENCES resort(resort_id)															
);


--Epic Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	1	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	2	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	3	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	4	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	5	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	6	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	7	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	8	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	9	,999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	10,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	11,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	12,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	13,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	14,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	15,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	16,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	17,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	18,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	19,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	20,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	21,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	22,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	23,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	24,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	25,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	26,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	27,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	28,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	29,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	30,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	31,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	32,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	33,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	34,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	35,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	36,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	37,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	38,	7,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	39,	7,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (1,	40,	999,	true,	true,	true);

--Epic Local
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	3, 999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	4, 999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	5, 999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	6, 999	,false	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	7, 999	,false	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	8, 999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	9, 999	,true	,true	,true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	10,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	11,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	12,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	13,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	14,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	15,	999,	false,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	16,	999,	false,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	17,	999,	false,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	18,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	20,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	21,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	22,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	23,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	24,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	25,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	26,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	27,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	28,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	29,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	30,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	31,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	32,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	33,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	34,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	35,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	36,	999,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	37,	5,	true,	true,	true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2,	40,	999,	true,	true,	true);

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

--Tahoe Local Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(45, 15, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(45, 16, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(45, 17, 999, false, true, true);

--Tahoe Value Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(46, 15, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(46, 16, 999, false, true, false);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(46, 17, 999, false, true, false);

--Keystone Plus Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(47, 4, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(47, 5, 5, false, true, true);

--Summit Value Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(48, 3, 999, false, true, true);
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(48, 4, 999, true, true, true);

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
VALUES(60, 18, 999, false, true, true);

--Stevens Pass Premium Pass
INSERT INTO resort_pass (pass_id, resort_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays)
VALUES(59, 18, 999, true, true, true);

CREATE TABLE resort_pool (
	pool_id int NOT NULL,
	resort_id int NOT NULL,
	CONSTRAINT uq_pool_id_resort_id UNIQUE (pool_id, resort_id),
	CONSTRAINT fk_pool_id FOREIGN KEY (pool_id) REFERENCES pool(pool_id),
	CONSTRAINT fk_resort_id FOREIGN KEY (resort_id) REFERENCES resort(resort_id)
);


INSERT INTO resort_pool (pool_id, resort_id) VALUES (1,  1); --Epic Local: Vail
INSERT INTO resort_pool (pool_id, resort_id) VALUES (1,  2); --Epic Local: Beaver Creek
INSERT INTO resort_pool (pool_id, resort_id) VALUES (1, 19); -- Epic Local: Whistler Blackcomb
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2,  1); --Tahoe Local: Vail
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2,  2); --Tahoe Local: Beaver Creek 
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2,  3); --Tahoe Local: Breckenridge
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2,  4); --Tahoe Local: Keystone
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2,  5); --Tahoe Local: Crested Butte
INSERT INTO resort_pool (pool_id, resort_id) VALUES (2,  6); --Tahoe Local: Park City
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 1);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 2);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 3);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 4);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 5);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 6);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 7);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 8);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 9);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 10);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 11);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 12);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 13);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 14);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 15);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 16);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 17);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 18);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 19);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 20);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 21);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 22);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 23);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 24);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 25);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 26);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 27);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 28);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 29);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 30);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 31);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 32);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 33);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 34);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 35);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 36);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 37);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 38);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 39);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (3, 40);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 1);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 2);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 3);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 4);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 5);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 6);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 7);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 8);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 9);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 10);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 11);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 12);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 13);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 14);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 15);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 16);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 17);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 18);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 19);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 20);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 21);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 22);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 23);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 24);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 25);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 26);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 27);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 28);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 29);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 30);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 31);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 32);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 33);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 34);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 35);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 36);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 37);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (4, 40);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 4);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 5);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 7);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 8);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 9);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 10);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 11);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 12);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 13);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 14);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 15);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 16);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 17);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 18);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 20);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 21);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 22);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 23);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 24);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 25);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 26);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 27);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 28);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 29);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 30);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 31);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 32);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 33);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 34);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 35);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 36);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (5, 40);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,9);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,12);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,13);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,14);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,20);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,21);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,22);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,23);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,24);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,25);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,26);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,27);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,28);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,29);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,30);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,31);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,32);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,33);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,34);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,35);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,36);
INSERT INTO resort_pool (pool_id, resort_id) VALUES (6,40);

CREATE TABLE pass_pool(
	pass_id int NOT NULL,
	pool_id int NOT NULL,
	days_of_access int NOT NULL,
	valid_holidays boolean NOT NULL,
	valid_sundays boolean NOT NULL,
	valid_saturdays boolean NOT NULL,
	UNIQUE (pass_id, pool_id),
	CONSTRAINT fk_pass_id FOREIGN KEY(pass_id) REFERENCES pass(pass_id),
	CONSTRAINT fk_pool_id FOREIGN KEY(pool_id) REFERENCES pool(pool_id)	
);

INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (2, 1, 10, false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (3, 4, 1, false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (4, 4, 2, false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (5, 4, 3,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (6, 3, 4,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (7, 3, 5,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (8, 3, 6,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (9, 3, 7,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (10,5, 1,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (11,5, 2,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (12,5, 3,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (13,5, 4,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (14,5, 5,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (15,5, 6,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (16,5, 7,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (17,6, 1,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (18,6, 2,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (19,6, 3,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (20,6, 4,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (21,6, 5,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (22,6, 6,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (23,6, 7,false, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (24,4, 1,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (25,4, 2,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (26,4, 3,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (27,3, 4,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (28,3, 5,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (29,3, 6,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (30,3, 7,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (31,5, 1,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (32,5, 2,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (33,5, 3,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (34,5, 4,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (35,5, 5,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (36,5, 6,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (37,5, 7,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (38,6, 1,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (39,6, 2,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (40,6, 3,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (41,6, 4,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (42,6, 5,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (43,6, 6,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (44,6, 7,true, true, true);
INSERT INTO pass_pool (pass_id, pool_id, days_of_access, valid_holidays, valid_sundays, valid_saturdays) VALUES (45,2, 5,false, true, true);
