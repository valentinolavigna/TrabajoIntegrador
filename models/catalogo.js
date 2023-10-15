const { DataTypes } = require('sequelize');
const sequelize = require('../sequelize'); 
const Categoria = require('./categoria');
const Generos = require('./genero');
const Actores = require('./actores');

const Catalogo = sequelize.define('Catalogo', {
  idCatalogo: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  Poster: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  Titulo: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  idCategoria: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
  Resumen: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  Temporadas: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
  Trailer: {
    type: DataTypes.STRING,
    allowNull: true,
  },
}, {
  tableName: 'catalogo',
  timestamps: false,
});




// Define la relación con la tabla 'categoria'
Catalogo.belongsTo(Categoria, { foreignKey: 'idCategoria', as: 'Categoria' });

Catalogo.belongsToMany(Actores, {
  through: 'actorescatalogo', // Tabla intermedia
  foreignKey: 'idCatalogo',
  otherKey: 'idActores',
  as: 'Actores', // Alias para la relación
});


Catalogo.belongsToMany(Generos, {
  through: 'generocatalogo', // Tabla intermedia
  foreignKey: 'idCatalogo',
  otherKey: 'idGenero',
  as: 'Generos', // Alias para la relación
});

module.exports = Catalogo;
