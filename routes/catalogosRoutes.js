const express = require('express');
const router = express.Router();
const path = require('path');
const {Sequelize} = require('../sequelize'); 

const Catalogos = require('../models/catalogo'); 
const Categorias = require('../models/categoria'); 
const Actores = require('../models/actores');
const Generos = require('../models/genero'); 

const includeOptions = [
  {
    model: Categorias,
    as: 'Categoria',
  },
  {
    model: Actores,
    as: 'Actores',
    through: { attributes: [] },
  },
  {
    model: Generos,
    as: 'Generos',
    through: { attributes: [] },
  },
];

// Ruta para obtener todos los catalogos
router.get('/', async (req, res) => {
  try {
    const data = await Catalogos.findAll({
      include: includeOptions,
      attributes: { exclude: ['idCategoria'] }, 
    });

    if(data.length < 1){
      return res.status(404).json({ error: 'No se encontraron catalogos' });
    }

    res.json(data.map(catalogo => {
      catalogo.Poster = path.resolve(__dirname) + '/../images/' + catalogo.Poster;
      return catalogo;
    }));

  } catch (error) {
    console.error('Error al obtener catalogos:', error);
    res.status(500).json({ error: 'Error al obtener catalogos' });
  }
});


// Ruta para obtener un catalogo por su ID
router.get('/:id', async (req, res) => {
  const catalogoID = req.params.id;
  try {
    const data = await Catalogos.findByPk(catalogoID, {
      include: includeOptions,
      attributes: { exclude: ['idCategoria'] },
    });
    if (data) {
      data.Poster = path.resolve(__dirname) + '/../images/' + data.Poster;     
      res.json(data);
    } else {
      res.status(404).json({ error: 'Catalogo no encontrado' });
    }
  } catch (error) {
    console.error('Error al obtener catalogo por ID:', error);
    res.status(500).json({ error: 'Error al obtener catalogo por ID' });
  }
});

// Ruta para obtener un catalogo por su nombre o parte de su nombre
router.get('/nombre/:nombre', async (req, res) => {
  const nombre = req.params.nombre;
  try {
    
    const data = await Catalogos.findAll({
      where: {
        Titulo: {
          [Sequelize.Op.like]: `%${nombre}%`
        }
      },
      include: includeOptions,
      attributes: { exclude: ['idCategoria'] }, 
    });

    if(data.length < 1){
      return res.status(404).json({ error: 'No se encontraron catalogos' });
    }

    res.json(data.map(catalogo => {
      catalogo.Poster = path.resolve(__dirname) + '/../images/' + catalogo.Poster;
      return catalogo;
    }));


  } catch (error) {
    console.error('Error al obtener catalogo por nombre:', error);
    res.status(500).json({ error: 'Error al obtener catalogo por nombre' });
  }
});

// Ruta para obtener un catalogo por su genero o parte de su genero
router.get('/genero/:genero', async (req, res) => {
  const genero = req.params.genero;
  try {
    
    const data = await Catalogos.findAll({
      where: {
        '$Generos.Genero$': {
          [Sequelize.Op.like]: `%${genero}%`
        }
      },
      include: includeOptions,
      attributes: { exclude: ['idCategoria'] }, 
    });

    if(data.length < 1){
      return res.status(404).json({ error: 'No se encontraron catalogos' });
    }

    res.json(data.map(catalogo => {
      catalogo.Poster = path.resolve(__dirname) + '/../images/' + catalogo.Poster;
      return catalogo;
    }));


  } catch (error) {
    console.error('Error al obtener catalogo por genero:', error);
    res.status(500).json({ error: 'Error al obtener catalogo por genero' });
  }
});

// Ruta para obtener un catalogo por su categoria o parte de su categoria
router.get('/categoria/:categoria', async (req, res) => {
  const categoria = req.params.categoria;
  try {
    
    const data = await Catalogos.findAll({
      where: {
        '$Categoria.Categoria$': {
          [Sequelize.Op.like]: `%${categoria}%`
        }
      },
      include: includeOptions,
      attributes: { exclude: ['idCategoria'] }, 
    });

    if(data.length < 1){
      return res.status(404).json({ error: 'No se encontraron catalogos' });
    }

    res.json(data.map(catalogo => {
      catalogo.Poster = path.resolve(__dirname) + '/../images/' + catalogo.Poster;
      return catalogo;
    }));


  } catch (error) {
    console.error('Error al obtener catalogo por categoria:', error);
    res.status(500).json({ error: 'Error al obtener catalogo por categoria' });
  }
});


module.exports = router;
