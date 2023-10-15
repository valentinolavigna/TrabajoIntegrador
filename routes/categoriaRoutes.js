const express = require('express');
const router = express.Router();
const Categorias = require('../models/categoria'); // Importa el modelo de Categorias

// Ruta para obtener todos los Categorias
router.get('/', async (req, res) => {
  try {
    const data = await Categorias.findAll();
    res.json(data);
  } catch (error) {
    console.error('Error al obtener Categorias:', error);
    res.status(500).json({ error: 'Error al obtener Categorias' });
  }
});

// Ruta para obtener un categoria por su ID
router.get('/:id', async (req, res) => {
  const categoriaId = req.params.id;
  try {
    const categoria = await Categorias.findByPk(categoriaId);
    if (categoria) {
      res.json(categoria);
    } else {
      res.status(404).json({ error: 'categoria no encontrado' });
    }
  } catch (error) {
    console.error('Error al obtener categoria por ID:', error);
    res.status(500).json({ error: 'Error al obtener categoria por ID' });
  }
});


module.exports = router;
