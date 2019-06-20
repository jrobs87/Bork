
-- -- Template for adding dogs to a persons interests
-- -- update humans set dog_match_1=1 WHERE id = 1;

-- -- Template for adding a new person with a dog interest
-- -- INSERT INTO humans (name, password, dog_match_1) VALUES ('', '', int);

insert into dogs(dog_name)
values("Dawson"),
      ("Caroline"),
      ("Bethany"),
      ("Addison"),
      ("Kemper"),
      ("Chewy"),
      ("Tara"),
      ("Snappy"),
      ("Oscar"),
      ("Rowdy"),
      ("Lexis"),
      ("Jacob"),
      ("Claire"),
      ("Olivia"),
      ("Bert"),
      ("Bernie"),
      ("Nala"),
      ("Elsa"),
      ("Keaton"),
      ("Cassie"),
      ("Frankie"),
      ("George"),
      ("Rhoady"),
      ("Arnold"),
      ("Esther"),
      ("Annie"),
      ("Oreo"),
      ("Ellie Mae"),
      ("Jewel"),
      ("Clementine"),
      ("Raisen"),
      ("Hendrix");

insert into dogs_stats(FK_dog_id, yard, other_pets, kids, female, size, profile_image, profile_url)
values(1, false, true, false, false, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43797500/1/?bust=1547742389&width=720", "https://www.petfinder.com/dog/dawson-43797500/ga/macon/all-about-animals-rescue-ga345/"),
      (2, true, true, false, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43789666/1/?bust=1547743098&width=720", "https://www.petfinder.com/dog/caroline-43789666/ga/macon/all-about-animals-rescue-ga345/"),
      (3, true, true, false, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43789616/1/?bust=1547743031&width=720", "https://www.petfinder.com/dog/bethany-43789616/ga/macon/all-about-animals-rescue-ga345/"),
      (4, false,true, false, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43789455/1/?bust=1547741758&width=720", "https://www.petfinder.com/dog/addison-43789455/ga/macon/all-about-animals-rescue-ga345/"),
      (5, false, true, true, false, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43154093/1/?bust=1540913246&width=720", "https://www.petfinder.com/dog/kemper-43154093/ga/macon/all-about-animals-rescue-ga345/"),
      (6, true, true, false, false, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/42641288/2/?bust=1541184810&width=720", "https://www.petfinder.com/dog/chewy-42641288/ga/macon/all-about-animals-rescue-ga345/"),
      (7, false, true, true, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/42431805/4/?bust=1533860255&width=720", "https://www.petfinder.com/dog/tara-42431805/ga/macon/all-about-animals-rescue-ga345/"),
      (8, true, true, false, false, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/42254432/2/?bust=1532258793&width=720", "https://www.petfinder.com/dog/snappy-42254432/ga/macon/all-about-animals-rescue-ga345/"),
      (9, false, true, false, false, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/42254429/1/?bust=1532258930&width=720", "https://www.petfinder.com/dog/oscar-42254429/ga/macon/all-about-animals-rescue-ga345/"),
      (10, true, false, false, false, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/42245296/2/?bust=1532181965&width=720", "https://www.petfinder.com/dog/rowdy-42245296/ga/macon/all-about-animals-rescue-ga345/"),
      (11, true, false, false, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/41971907/1/?bust=1529614864&width=720", "https://www.petfinder.com/dog/lexis-41971907/ga/macon/all-about-animals-rescue-ga345/"),
      (12, true, false, false, false, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/41625532/2/?bust=1526251476&width=720", "https://www.petfinder.com/dog/jacob-41625532/ga/macon/all-about-animals-rescue-ga345/"),
      (13, true, false, false, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/41625495/1/?bust=1526251570&width=720", "https://www.petfinder.com/dog/claire-41625495/ga/macon/all-about-animals-rescue-ga345/"),
      (14, false, true, false, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/41620854/1/?bust=1526238593&width=720", "https://www.petfinder.com/dog/olivia-41620854/ga/macon/all-about-animals-rescue-ga345/"),
      (15, true, true, false, false, 0, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/41606550/1/?bust=1526042586&width=720", "https://www.petfinder.com/dog/bert-41606550/ga/macon/all-about-animals-rescue-ga345/"),
      (16, true, true, false, false, 0, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/41606531/3/?bust=1526044320&width=720", "https://www.petfinder.com/dog/bernie-41606531/ga/macon/all-about-animals-rescue-ga345/"),
      (17, true, true, true, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/40075896/1/?bust=1512383988&width=720", "https://www.petfinder.com/dog/nala-40075896/ga/macon/all-about-animals-rescue-ga345/"),
      (18, false, false, true, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/40075893/1/?bust=1512383607&width=720", "https://www.petfinder.com/dog/elsa-40075893/ga/macon/all-about-animals-rescue-ga345/"),
      (19, false, false, true, false, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/40074466/5/?bust=1512352373&width=720", "https://www.petfinder.com/dog/keaton-40074466/ga/macon/all-about-animals-rescue-ga345/"),
      (20, true, false, true, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/37987186/1/?bust=1493867828&width=720", "https://www.petfinder.com/dog/cassie-37987186/ga/macon/all-about-animals-rescue-ga345/"),
      (21, false, true, true, false, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/37987163/4/?bust=1540914222&width=720", "https://www.petfinder.com/dog/frankie-37987163/ga/macon/all-about-animals-rescue-ga345/"),
      (22, true, false, true, false, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/37573251/1/?bust=1509300888&width=720", "https://www.petfinder.com/dog/george-37573251/ga/macon/all-about-animals-rescue-ga345/"),
      (23, false, false, true, false, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/36343042/1/?bust=1475031263&width=720", "https://www.petfinder.com/dog/rhoady-36343042/ga/macon/all-about-animals-rescue-ga345/"),
      (24, false, false, true, false, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/36264738/4/?bust=1499646394&width=720", "https://www.petfinder.com/dog/arnold-36264738/ga/macon/all-about-animals-rescue-ga345/"),
      (25, false, false, true, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/36264720/2/?bust=1499646533&width=720", "https://www.petfinder.com/dog/esther-36264720/ga/macon/all-about-animals-rescue-ga345/"),
      (26, true, true, true, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/35813646/5/?bust=1499646794&width=720", "https://www.petfinder.com/dog/annie-35813646/ga/macon/all-about-animals-rescue-ga345/"),
      (27, false, false, true, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/35243630/5/?bust=1547743879&width=720", "https://www.petfinder.com/dog/oreo-35243630/ga/macon/all-about-animals-rescue-ga345"),
      (28, false, false, false, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/31904288/1/?bust=1461749350&width=720", "https://www.petfinder.com/dog/ellie-mae-31904288/ga/macon/all-about-animals-rescue-ga345/"),
      (29, false, false, true, true, 2, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/31747798/3/?bust=1499649022&width=720", "https://www.petfinder.com/dog/jewel-31747798/ga/macon/all-about-animals-rescue-ga345/"),
      (30, true, false, true, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/29714557/1/?bust=1499649247&width=720", "https://www.petfinder.com/dog/clementine-29714557/ga/macon/all-about-animals-rescue-ga345/"),
      (31, true, true, false, true, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/25045547/6/?bust=1540836329&width=720", "https://www.petfinder.com/dog/raisen-25045547/ga/macon/all-about-animals-rescue-ga345/"),
      (32, false, true, false, false, 1, "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/23384593/1/?bust=1461749350&width=720", "https://www.petfinder.com/dog/hendrix-23384593/ga/macon/all-about-animals-rescue-ga345/");


INSERT INTO humans (name, password) VALUES ('John', 'blink182');
INSERT INTO humans (name, password) VALUES ('Marshall', 'drink!c0ff33!');
INSERT INTO humans (name, password) VALUES ('Chaney', 'd0g54lyf3');
INSERT INTO humans (name, password) VALUES ('David', 'cod3r');
INSERT INTO humans (name, password) VALUES ('Stanley', 'ipromiseim18');

INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (1, 2);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (2, 1);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (3, 5);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (4, 4);
INSERT INTO matches (FK_human_id, FK_dog_id) VALUES (5, 3);

      SELECT * FROM humans;
SELECT * FROM human_prefs;
SELECT * FROM dogs;
SELECT * FROM dogs_stats;
SELECT * FROM matches;
