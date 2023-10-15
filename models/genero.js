const { DataTypes } = require('sequelize');
const sequelize = require('../sequelize');

const Genero = sequelize.define('Genero', {
  idGenero: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  Genero: {
    type: DataTypes.STRING,
    allowNull: true,
  },
}, {
  tableName: 'genero',
  timestamps: false,
});

module.exports = Genero;
