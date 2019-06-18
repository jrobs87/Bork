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
        yard: DataTypes.BOOLEAN,
        other_pets: DataTypes.BOOLEAN,
        kids: DataTypes.BOOLEAN,
        female: DataTypes.BOOLEAN,
        size: DataTypes.INTEGER,
    },
        {
            timestamps: false // removed timestamps - throws errors otherwise and not needed
        });
    return Swipe;
};