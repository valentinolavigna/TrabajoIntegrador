const { DataTypes } = require('sequelize');
const sequelize = require('../sequelize');

const Categoria = sequelize.define('Categoria', {
  idCategoria: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  Categoria: {
    type: DataTypes.STRING,
    allowNull: true,
  },
}, {
  tableName: 'categoria',
  timestamps: false,
});

module.exports = Categoria;
