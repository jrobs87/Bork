var db = require("../models");
var axios = require("axios");
require("dotenv").config();


let userData = [];

module.exports = function (app) {
  // Load index page
  app.get("/", function (req, res) {
    res.render("home");
  });

  app.get("/login", function (req, res) {
    res.send("User logins coming soon!");
  });

  app.get("/profile", function (req, res) {
    res.send("User profiles coming");
  });

  // Now using Handlebars for this
  app.get("/survey", function (req, res) {
    res.render("survey");
  });

  // API Route for Survey Data
  app.post("/api/survey", function (req, res) {
    console.log(
      "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- "
    );
    console.log("User Data Received.  Survey responses below...");

    console.log(
      "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- "
    );
    console.log(req.body);

    userData = [
      req.body.yard,
      req.body.other_pets,
      req.body.kids,
      req.body.size,
      req.body.female
    ];

    res.send("User Data succesfully received!"); // Ideally we would redirect to /swiper but would be rendered like html - solved client side for now.
  });

  // Route to Swiper Page (Functioning!)
  // app.get("/swiper", function(req, res) {
  //   db.swipe
  //     .findAll({
  //       where: {
  //         other_pets: userData.other_pets,
  //       }
  //     })
  //     .then(function(dbswipe) {
  //       hbsObject = dbswipe;
  //       res.render("swipe", hbsObject);
  //       console.log(
  //         "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- "
  //       );
  //       console.log(
  //         `Swiper Page delivered to client with ${dbswipe.length} dog cards.`
  //       );
  //     });
  // });

  // Route to Swiper Page (TESTING!)
  app.get("/swiper", function (req, res) {

    // grab all dog data from dB
    db.swipe
      .findAll({
      })
      .then(function (dbswipe) {
        let dogMatches = [];
        let dogCurrent = [];

        for (i = 0; i < dbswipe.length; i++) {
          propMatch = 0;

          dogCurrent = [
            dbswipe[i].yard,
            dbswipe[i].other_pets,
            dbswipe[i].kids,
            dbswipe[i].size,
            dbswipe[i].female
          ];

          for (z = 0; z < 5; z++) {
            // console.log(typeof dogCurrent[z]);
            if (typeof dogCurrent[z] === 'number') {
             console.log(`Dog: ${dogCurrent[z]}  Human: ${userData[z]}`);

              if(dogCurrent[z] == userData[z]) {
                console.log(`Matched ${dbswipe[i].dog_name} by size!`);
                propMatch++;
              }

            } else {
              console.log(`Dog: ${dogCurrent[z]}  Human: ${userData[z]}`);
              if(dogCurrent[z].toString() === userData[z].toString()) {
                console.log('Match');
                propMatch++;
              };
            }
          
          }
          dbswipe[i].matchQuality = parseInt((propMatch / 5)*100).toString();
          console.log(dbswipe[i].matchQuality);

          if (propMatch >= 2) {
            dogMatches.push(dbswipe[i]);
          }

          // console.log(dogMatches[0].matchQuality)
        }

        // console.log(dogMatches.length);
 
        hbsObject = dogMatches;
        res.render("swipe", hbsObject);
        console.log(
          `Swiper Page delivered to client with ${dogMatches.length} dog cards.`
        );
      });
  });

  // HTML Route - Adoption Organizations
  app.get("/organizations", function (req, res) {
    res.render("organizations");
  });

  // API Routes to additional adoption orgs
  app.post("/organizations", function (req, res) {
    var userZip = req.body.zipcode;
    axios({
      method: "POST",
      url: "https://api.petfinder.com/v2/oauth2/token",
      data:
        "grant_type=client_credentials&client_id=" +
        process.env.PETFINDER_ID +
        "&client_secret=" +
        process.env.PETFINDER_SECRET
    }).then(function (response) {
      var token = response.data.access_token;
      axios({
        method: "GET",
        url: "https://api.petfinder.com/v2/organizations?location=" + userZip,
        headers: { Authorization: "Bearer " + token }
      }).then(function (response) {
        var organs = response.data.organizations;
        res.json(organs);
      });
    });
  });

  // SWIPE API ROUTE TESTING
  app.get("/api/swiper", function (req, res) {
    db.swipe.findAll({}).then(function (dbswipe) {
      res.send(dbswipe);

      console.log('----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ')
      console.log(`Dog Swiper API delivered with ${dbswipe.length} dog cards.  All matches below!`);

      // Log out all dog matches.
      for (i = 0; i < dbswipe.length; i++) {
        console.log('----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ')
        console.log(dbswipe[i].dataValues)
      }
    });
  });

  app.get("*", function (req, res) {
    res.render("404")
  })
};
