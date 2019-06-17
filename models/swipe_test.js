module.exports = function (sequelize, DataTypes) {
    var Swipe = sequelize.define("swipe", {
        //   dog_id: DataTypes.INTEGER,
        dog_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false
        },
        dog_name: DataTypes.STRING,
        dog_img: DataTypes.STRING,
        dog_url: DataTypes.STRING,
    },
        {
            timestamps: false // removed timestamps - throws errors otherwise and not needed
        });
    return Swipe;
};

