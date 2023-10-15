const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('trailerflix', 'root', 'valentino', {
  host: 'localhost',
  dialect: 'mysql',
  define: {
    timestamps: false
  },
});

module.exports = sequelize;
