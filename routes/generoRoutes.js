const express = require('express');
const router = express.Router();
const Generos = require('../models/genero'); // Importa el modelo de genero

// Ruta para obtener todos los generos
router.get('/', async (req, res) => {
  try {
    const data = await Generos.findAll();
    res.json(data);
  } catch (error) {
    console.error('Error al obtener Generos:', error);
    res.status(500).json({ error: 'Error al obtener Generos' });
  }
});

// Ruta para obtener un genero por su ID
router.get('/:id', async (req, res) => {
  const generoId = req.params.id;
  try {
    const genero = await Generos.findByPk(generoId);
    if (genero) {
      res.json(genero);
    } else {
      res.status(404).json({ error: 'genero no encontrado' });
    }
  } catch (error) {
    console.error('Error al obtener genero por ID:', error);
    res.status(500).json({ error: 'Error al obtener genero por ID' });
  }
});


module.exports = router;
