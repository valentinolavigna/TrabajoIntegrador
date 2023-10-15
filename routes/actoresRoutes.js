const express = require('express');
const router = express.Router();
const Actores = require('../models/actores'); // Importa el modelo de actores

// Ruta para obtener todos los actores
router.get('/', async (req, res) => {
  try {
    const data = await Actores.findAll();
    res.json(data);
  } catch (error) {
    console.error('Error al obtener actores:', error);
    res.status(500).json({ error: 'Error al obtener actores' });
  }
});

// Ruta para obtener un actor por su ID
router.get('/:id', async (req, res) => {
  const actorId = req.params.id;
  try {
    const actor = await Actores.findByPk(actorId);
    if (actor) {
      res.json(actor);
    } else {
      res.status(404).json({ error: 'Actor no encontrado' });
    }
  } catch (error) {
    console.error('Error al obtener actor por ID:', error);
    res.status(500).json({ error: 'Error al obtener actor por ID' });
  }
});


module.exports = router;
