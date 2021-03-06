# **Bork:**

### **Project Description:**

An app that helps users find the best possible matches for dogs to adopt based on the users' preferences. 

### **Getting Started:**

Check out the deployed version here: "https://serene-coast-29997.herokuapp.com/"

### **How to Use:**

Each new fills out a survey in order to find dogs that match a user's desired size, sex, and habitation for the dog.

Once the survey is taken, the user is given a swipe list of all dogs that match the user's survey answers.

After the user goes through all the card swipes, they are presented with a list of dogs they are interested in as well as each dog's profle url.

Users can also use their zip code to find local adoption organizations that have up to date list of dogs available for adoptions.

### **Installation and Prerequisites:**

If you want to download and install the app locally then clone the repo:

Once the repo is cloned locally, in the terminal, navigate to the app's main file.

Type into the command line "npm install" in order to download dependencies

Change the congifuration properties in the config.json file to the settings you have for your mysql database

Seed your database with the schema.sql and seeds.sql files in the db directory (ignore db-dev - this is for backups and testing only)

create a file named: .env in the main directory of the project folder.

You will need to go to https://www.petfinder.com/developers/ and register to get your own key and secret.

Type the following out inside the .env file:

PETFINDER_ID="your id goes here"
PETFINDER_SECRET="your secret goes here"

Once that is all done, you can type out the command "node server" in the terminal at the app's main directory.

Next, open your browser at address: localhost:8080 to display the home page of the app.

### **Future Features:**

Log-in feature that allows for multiple users to have their queries saved and their information protected.

ionic framework integration and hammer.js to build a better swipe feature (eventually a progressive web app), leveraging Templating engines, animation library integration (anime.js), and making the app dynamically pull api data from multiple adoption agencies.  

CSS precompilers (SASS)

More APIs for a more thorough and extensive search of organizations and dogs.

Multiple tables for extensive queries

Live, frequently updated data

### **Built With:**

Express: https://www.npmjs.com/package/express

Axios: https://www.npmjs.com/package/axios

dotenv: https://www.npmjs.com/package/dotenv

Express Handlebars: https://www.npmjs.com/package/express-handlebars

Mysql2: https://www.npmjs.com/package/mysql2

Path: https://www.npmjs.com/package/path

Sequelize: https://www.npmjs.com/package/sequelize

Petfinder API: https://www.petfinder.com/developers/

mysql workbench: https://www.mysql.com/products/workbench/

docker: https://www.docker.com/

postman: https://www.getpostman.com/

jTinder: https://github.com/do-web/jTinder

Materialize: https://materializecss.com/

### ** success(group6) Group Project Author(s):**

Chaney Durham: https://github.com/cdurham3

David Wilson: https://github.com/Moldysmurf38

John Robertson: https://github.com/jrobs87

Marshall Prostman: https://github.com/MarshallProtsman