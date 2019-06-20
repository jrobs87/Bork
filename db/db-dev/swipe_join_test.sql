-- test query pulling from dogs and dogs stats tables to populate the matches for swipe cards

SELECT dog_id, dog_name, profile_image, profile_url
FROM dogs, dogs_stats
WHERE dog_id = FK_dog_id

