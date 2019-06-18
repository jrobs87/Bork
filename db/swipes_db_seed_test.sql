
USE pawnder_db;

DROP TABLE IF EXISTS swipes;

CREATE TABLE swipes (
dog_id integer(100) NOT NULL,
dog_name VARCHAR(1000) NOT NULL,
dog_img VARCHAR(1000) NOT NULL,
dog_url VARCHAR(1000) NOT NULL,
yard BOOLEAN NOT NULL,
other_pets BOOLEAN NOT NULL,
kids BOOLEAN NOT NULL,
female BOOLEAN NOT NULL,
size INT(1) NOT NULL
);

INSERT INTO swipes (dog_id, dog_name, dog_img, dog_url, yard, other_pets, kids, female, size)
VALUES 
(1, "Lady Bird", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44807252/1/?bust=1560850263&width=1080", "https://www.petfinder.com/dog/lady-bird-44807252/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 0, 0, 0, 0),
(2,	"Caroline", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44923819/1/?bust=1560850269&width=1080", "https://www.petfinder.com/dog/caroline-43789666/ga/macon/all-about-animals-rescue-ga345/", 0, 0, 0, 1, 0),
(3,	"Bethany", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44870646/1/?bust=1560850260&width=1080",	"https://www.petfinder.com/dog/bethany-43789616/ga/macon/all-about-animals-rescue-ga345/", 0, 0, 0, 0, 0),
(4,	"Kiwi", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44819850/1/?bust=1560850282&width=1080",	"https://www.petfinder.com/dog/kiwi-44819850/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 0, 0, 1, 0),
(5,	"Dixie", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44506880/1/?bust=1560850280&width=1080",	"https://www.petfinder.com/dog/dixie-44506880/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 0, 0, 0, 0),
(6,	"Shelby", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43894755/1/?bust=1560850277&width=1080",	"https://www.petfinder.com/dog/shelby-43894755/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 0, 0, 1, 0),
(7,	"Emily Rose", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44897065/1/?bust=1559860438&width=1080",	"https://www.petfinder.com/dog/emily-rose-atl-44897065/ga/atlanta/fighting-for-dawn-inc-ga823/", 0, 0, 0, 0, 0),
(8,	"Cam and Nova", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43894731/1/?bust=1560850277&width=1080",	"https://www.petfinder.com/dog/cam-and-nova-43894731/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 0, 0, 1, 0),
(9,	"Lemon", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/38984903/5/?bust=1537149466&width=1080",	"https://www.petfinder.com/dog/lemon-38984903/ga/atlanta/pibbles-and-more-animal-rescue-ny966/", 0, 0, 0, 0, 0),
(10,"Mary Alice", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44897105/1/?bust=1559862274&width=1080",	"https://www.petfinder.com/dog/mary-alice-atl-44897105/ga/atlanta/fighting-for-dawn-inc-ga823/", 0, 0, 0, 1, 0);