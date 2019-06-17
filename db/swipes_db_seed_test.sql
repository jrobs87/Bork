USE pawnder_db;

DROP TABLE IF EXISTS swipes;

CREATE TABLE swipes (
dog_id integer(100) NOT NULL,
dog_name VARCHAR(1000) NOT NULL,
dog_img VARCHAR(1000) NOT NULL,
dog_url VARCHAR(1000) NOT NULL
);

INSERT INTO swipes (dog_id, dog_name, dog_img, dog_url)
VALUES 
(1, "Dawson", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43797500/1/?bust=1547742389&width=720", "https://www.petfinder.com/dog/dawson-43797500/ga/macon/all-about-animals-rescue-ga345/"),
(2,	"Caroline", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43789666/1/?bust=1547743098&width=720", "https://www.petfinder.com/dog/caroline-43789666/ga/macon/all-about-animals-rescue-ga345/"),
(3,	"Bethany", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43789616/1/?bust=1547743031&width=720",	"https://www.petfinder.com/dog/bethany-43789616/ga/macon/all-about-animals-rescue-ga345/");


