var db = require("../models");

module.exports = function (app) {
 
  // SWIPER API ROUTE TESTING
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

};
