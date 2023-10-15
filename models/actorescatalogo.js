const { DataTypes } = require('sequelize');
const sequelize = require('../sequelize');

const ActoresCatalogo = sequelize.define('ActoresCatalogo', {
  idActoresCatalogo: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  idCatalogo: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
  idActores: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
}, {
  tableName: 'actorescatalogo',
  timestamps: false,
});

// Define las relaciones con otras tablas
ActoresCatalogo.belongsTo(Catalogo, { foreignKey: 'idCatalogo' });
ActoresCatalogo.belongsTo(Actores, { foreignKey: 'idActores' });

module.exports = ActoresCatalogo;
