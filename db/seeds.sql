USE pawnder_db;

DROP TABLE IF EXISTS swipes;

CREATE TABLE swipes
(
    id INT AUTO_INCREMENT NOT NULL,
    dog_id integer(100) NOT NULL,
    dog_name VARCHAR(1000) NOT NULL,
    dog_img VARCHAR(1000) NOT NULL,
    dog_url VARCHAR(1000) NOT NULL,
    yard BOOLEAN NOT NULL,
    other_pets BOOLEAN NOT NULL,
    kids BOOLEAN NOT NULL,
    female BOOLEAN NOT NULL,
    size INT(1) NOT NULL,
    createdAt TIMESTAMP NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO swipes
    (dog_id, dog_name, dog_img, dog_url, yard, other_pets, kids, female, size)
VALUES
    (1, "Lady Bird", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44807252/1/?bust=1560850263&width=1080", "https://www.petfinder.com/dog/lady-bird-44807252/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 1, 0, 1, 1),
    (2, "Caroline", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43789666/1/?bust=1547743098&width=560", "https://www.petfinder.com/dog/caroline-43789666/ga/macon/all-about-animals-rescue-ga345/", 0, 0, 0, 1, 1),
    (3, "Bethany", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44870646/1/?bust=1560850260&width=1080", "https://www.petfinder.com/dog/bethany-43789616/ga/macon/all-about-animals-rescue-ga345/", 1, 0, 0, 1, 1),
    (4, "Kiwi", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44819850/1/?bust=1560850282&width=1080", "https://www.petfinder.com/dog/kiwi-44819850/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 1, 0, 1, 1),
    (5, "Dixie", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44506880/1/?bust=1560850280&width=1080", "https://www.petfinder.com/dog/dixie-44506880/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 1, 0, 1, 1),
    (6, "Shelby", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43894755/1/?bust=1560850277&width=1080", "https://www.petfinder.com/dog/shelby-43894755/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 0, 0, 1, 1),
    (7, "Emily Rose", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44897065/1/?bust=1559860438&width=1080", "https://www.petfinder.com/dog/emily-rose-atl-44897065/ga/atlanta/fighting-for-dawn-inc-ga823/", 0, 0, 0, 1, 1),
    (8, "Cam and Nova", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43894731/1/?bust=1560850277&width=1080", "https://www.petfinder.com/dog/cam-and-nova-43894731/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 0, 0, 1, 1),
    (9, "Lemon", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/38984903/5/?bust=1537149466&width=1080", "https://www.petfinder.com/dog/lemon-38984903/ga/atlanta/pibbles-and-more-animal-rescue-ny966/", 0, 0, 0, 1, 1),
    (10, "Mary Alice", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44897105/1/?bust=1559862274&width=1080", "https://www.petfinder.com/dog/mary-alice-atl-44897105/ga/atlanta/fighting-for-dawn-inc-ga823/", 0, 0, 0, 1, 1),

    (11, "Milo", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44923820/1/?bust=1560922622&width=560", "https://www.petfinder.com/dog/milo-44923820/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 1, 0, 0, 1),
    (12, "Hunter", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44955346/1/?bust=1560922621&width=560", "https://www.petfinder.com/dog/hunter-44955346/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 0, 0, 0, 1),
    (13, "Mulligan", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44883463/1/?bust=1560922620&width=560", "https://www.petfinder.com/dog/mulligan-44883463/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 1, 0, 0, 1),
    (14, "buster", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44807247/1/?bust=1560922614&width=560", "https://www.petfinder.com/search/dogs-for-adoption/us/ga/atlanta/?gender%5B0%5D=male", 1, 0, 0, 0, 1),
    (15, "Casper", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44807248/1/?bust=1560922609&width=560", "https://www.petfinder.com/dog/casper-44807248/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 1, 0, 0, 1),
    (16, "Max", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44720972/1/?bust=1558706900&width=560", "https://www.petfinder.com/dog/max-44720972/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 1, 0, 0, 1),
    (17, "Charlie", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44506879/1/?bust=1560922597&width=560", "https://www.petfinder.com/dog/charlie-44506879/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 0, 0, 0, 1),
    (18, "Larry", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/44062088/1/?bust=1560922607&width=560", "https://www.petfinder.com/dog/larry-44062088/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 1, 0, 0, 1),
    (19, "Ace", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43894722/1/?bust=1560922605&width=560", "https://www.petfinder.com/dog/ace-43894722/ga/atlanta/atlanta-lab-rescue-ga508/", 0, 1, 0, 0, 1),
    (20, "Joey", "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/43894746/1/?bust=1560922604&width=560", "https://www.petfinder.com/dog/joey-43894746/ga/atlanta/atlanta-lab-rescue-ga508/", 1, 0, 0, 0, 1);