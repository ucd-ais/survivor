DROP TABLE IF EXISTS season;

CREATE TABLE season (
  id              UUID PRIMARY KEY,
  number          INT NOT NULL,
  title           VARCHAR(50) NOT NULL,
  location        VARCHAR(75) NOT NULL,
  original_tribe  VARCHAR(125) NOT NULL
);

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('6dc31f31-2335-4feb-9361-7ced403dc584', 1, 'Survivor: Borneo', 'Pulau Tiga, Sabah, Malaysia', 'Two tribes of eight new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('1a87ff6c-04c6-454b-80db-91e813a0c6c3', 2, 'Survivor: The Australian Outback', 'Herbert River at Goshen Station, Queensland, Australia', 'Two tribes of eight new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('de983f83-31e9-47a7-afcb-9c1871e38520', 3, 'Survivor: Africa', 'Shaba National Reserve, Kenya', 'Two tribes of eight new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('13668dfe-d0fe-4d89-a2a8-eeb79ed4f19c', 4, 'Survivor: Marquesas', 'Nuku Hiva, Marquesas Islands, French Polynesia', 'Two tribes of eight new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('b2f87006-a4a7-4da9-a349-631208ec2565', 5, 'Survivor: Thailand', 'Ko Tarutao, Satun Province, Thailand', 'Two tribes of eight new players; picked by the two oldest players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('58d97dd5-a304-4e61-82b4-9e5ec7af0cbe', 6, 'Survivor: The Amazon', 'Rio Negro, Amazonas, Brazil', 'Two tribes of eight new players divided by gender');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('5dce8b0d-dbfa-4127-ad9c-0872753baf7b', 7, 'Survivor: Pearl Islands', 'Pearl Islands, Panama', 'Two tribes of eight new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('7451c9ef-761e-419a-990b-59de3fdd0ded', 8, 'Survivor: All-Stars', 'Pearl Islands, Panama', 'Three tribes of six returning players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('fe140fea-2ac9-42c0-8e20-a189ce25388f', 9, 'Survivor: Vanuatu', 'Efate, Shefa, Vanuatu', 'Two tribes of nine new players divided by gender');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('6947849e-fcd7-47e1-b171-9ac835d17f36', 10, 'Survivor: Palau', 'Koror, Palau', 'A schoolyard pick of two tribes of nine new players; two eliminated without a tribe');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('65307c37-108f-47ce-bb04-c155dd62117e', 11, 'Survivor: Guatemala', 'Laguna Yaxhá, Yaxhá-Nakúm-Naranjo National Park, Petén, Guatemala', 'Two tribes of nine, including two returning players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('84bb6107-dec9-426e-b34f-de0968646055', 12, 'Survivor: Panama', 'Pearl Islands, Panama', 'Four tribes of four new players divided by age and gender');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('ddac1c3f-8be6-49bb-b8ea-559261446e83', 13, 'Survivor: Cook Islands', 'Aitutaki, Cook Islands', 'Four tribes of five new players divided by ethnicity: African Americans, Whites, Hispanics, and Asians');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('438992ae-1a3e-474a-ada4-3ebb2fc7dd76', 14, 'Survivor: Fiji', 'Macuata, Vanua Levu, Fiji', 'Two tribes of nine new players divided by a selected castaway, who would join the tribe who lost the first challenge');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('9a237824-cc0e-411b-85e2-1f7c050a9baa', 15, 'Survivor: China', 'Zhelin, Jiujiang, Jiangxi, China', 'Two tribes of eight new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('0897d57c-11a9-4acf-93bd-38044de74917', 16, 'Survivor: Micronesia', 'Koror, Palau', 'Two tribes of ten: new players against past contestants');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('05768066-c98e-4813-adda-c8dd142fc3ec', 17, 'Survivor: Gabon', 'Wonga-Wongue Presidential Reserve, Estuaire, Gabon', 'A schoolyard pick of two tribes of nine new players, starting with the oldest players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('55d4d3c8-6a8d-41f4-b6a4-7dd5e97fd724', 18, 'Survivor: Tocantins', 'Jalapão, Tocantins, Brazil', 'Two tribes of eight new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('c27e9d40-36b1-4064-9b56-45a335bd509a', 19, 'Survivor: Samoa', 'Upolu, Samoa', 'Two tribes of ten new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('6324d91e-2e96-4532-b484-1fa97c02b711', 20, 'Survivor: Heroes vs. Villains', 'Upolu, Samoa', 'Two tribes of ten returning players divided by reputation: "heroes" vs. "villains"');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('9ee945a2-ef1f-41ab-8ad4-7403eb35055e', 21, 'Survivor: Nicaragua', 'San Juan del Sur, Rivas, Nicaragua', 'Two tribes of ten new players divided by age');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('8a232a53-511f-4600-81db-121ec71fd5c6', 22, 'Survivor: Redemption Island', 'San Juan del Sur, Rivas, Nicaragua', 'Two tribes of nine, including two returning players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('4624f8ad-bc5e-4196-95b6-02629f2733f1', 23, 'Survivor: South Pacific', 'Upolu, Samoa', 'Two tribes of nine, including two returning players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('5c42f489-0640-4205-b6b1-66e119cb0185', 24, 'Survivor: One World', 'Upolu, Samoa', 'Two tribes of nine new players divided by gender living on the same beach');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('ea9d0e97-7b12-46b6-b0a1-ad5324d7448c', 25, 'Survivor: Philippines', 'Caramoan, Camarines Sur, Philippines', 'Three tribes of six, including three returning players who had been medically evacuated in a previous season');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('44ecca54-0f09-4d54-98e1-b1da1e0fc9cb', 26, 'Survivor: Caramoan', 'Caramoan, Camarines Sur, Philippines', 'Two tribes of ten: new players against past contestants');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('2ac219de-2ac8-4139-91d8-8a76ac54519e', 27, 'Survivor: Blood vs. Water', 'Palaui Island, Santa Ana, Cagayan, Philippines', 'Two tribes of ten: returning contestants against their loved ones');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('492907c0-ae10-4dea-bd7a-82db4e8cfcfc', 28, 'Survivor: Cagayan', 'Palaui Island, Santa Ana, Cagayan, Philippines', 'Three tribes of six new players divided by primary attribute: "brawn" vs. "brains" vs. "beauty"');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('c7d055ee-d725-47ce-9d9a-94428c0b80a2', 29, 'Survivor: San Juan del Sur', 'San Juan del Sur, Rivas, Nicaragua', 'Nine pairs of new players, each with a pre-existing relationship, divided into two tribes of nine');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('ac158933-def3-4941-bd52-7063d84564b7', 30, 'Survivor: Worlds Apart', 'San Juan del Sur, Rivas, Nicaragua', 'Three tribes of six new players divided by social class: "white collar" vs. "blue collar" vs. "no collar"');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('2afefaad-0579-4b8c-97e7-d20fbfb1d067', 31, 'Survivor: Cambodia', 'Koh Rong, Cambodia', 'Two tribes of ten returning players who were selected by public vote');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('3e87a74b-7a89-4c95-8225-7bc75b95d201', 32, 'Survivor: Kaôh Rōng', 'Koh Rong, Cambodia', 'Three tribes of six new players divided by primary attribute: "brains" vs. "brawn" vs. "beauty"');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('21fa3f74-c5ff-4d3d-a864-778121f751a8', 33, 'Survivor: Millennials vs. Gen X', 'Mamanuca Islands, Fiji', 'Two tribes of ten new players divided by generation: millennials vs. Generation X');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('aa1a5fdf-5d8f-4a47-bf66-f6891be9f1ca', 34, 'Survivor: Game Changers', 'Mamanuca Islands, Fiji', 'Two tribes of ten returning players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('31d5133f-f2d8-4413-84e9-a37d440f7605', 35, 'Survivor: Heroes vs. Healers vs. Hustlers', 'Mamanuca Islands, Fiji', 'Three tribes of six new players divided by dominant perceived trait: "heroes" vs. "healers" vs. "hustlers"');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('0c87b871-7f01-4ef0-91ca-569c7297345c', 36, 'Survivor: Ghost Island', 'Mamanuca Islands, Fiji', 'Two tribes of ten new players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('d7867cd6-854b-4457-ba08-84f87bcc3308', 37, 'Survivor: David vs. Goliath', 'Mamanuca Islands, Fiji', 'Two tribes of ten new players divided by adversity: "David" (underdogs) vs. "Goliath" (overachievers)');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('f66065b9-7700-4ee3-879e-85980362c340', 38, 'Survivor: Edge of Extinction', 'Mamanuca Islands, Fiji', 'Two tribes of nine, including four returning players');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('f882688a-6179-485b-91f5-16be8ed405b7', 39, 'Survivor: Island of the Idols', 'Mamanuca Islands, Fiji', 'Two tribes of ten new players. Past winners Rob Mariano and Sandra Diaz-Twine feature as non-playing mentors');

INSERT INTO season (id, number, title, location, original_tribe) 
VALUES ('350e4c55-e4bb-44b3-91a6-c220ea6d8218', 40, 'Survivor: Winners at War', 'Mamanuca Islands, Fiji', 'Two tribes of ten winners of past Survivor seasons');
