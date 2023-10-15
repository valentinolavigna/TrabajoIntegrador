const { DataTypes } = require('sequelize');
const sequelize = require('../sequelize'); 

const GeneroCatalogo = sequelize.define('GeneroCatalogo', {
  idGeneroCatalogo: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  idCatalogo: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
  idGenero: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
}, {
  tableName: 'generocatalogo',
  timestamps: false,
});

// Define las relaciones con otras tablas
GeneroCatalogo.belongsTo(Catalogo, { foreignKey: 'idCatalogo' });
GeneroCatalogo.belongsTo(Genero, { foreignKey: 'idGenero' });

module.exports = GeneroCatalogo;
