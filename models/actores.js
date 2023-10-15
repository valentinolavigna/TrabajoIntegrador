const { DataTypes } = require('sequelize');
const sequelize = require('../sequelize');

const Actores = sequelize.define('Actores', {
    //por defecto sequelize toma automatico si se llama id sino definirla
  idActores: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  Nombre: {
    type: DataTypes.STRING,
    allowNull: false, 
  },
  Apellido: {
    type: DataTypes.STRING,
    allowNull: false,
  },
}, {
  tableName: 'actores',
  timestamps: false,
});

module.exports = Actores;