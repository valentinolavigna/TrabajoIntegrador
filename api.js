const express = require('express');
const router = express.Router();
const actoresRoutes = require('./routes/actoresRoutes');
const categoriasRoutes = require('./routes/categoriaRoutes');
const generosRoutes = require('./routes/generoRoutes');
const catalogosRoutes = require('./routes/catalogosRoutes');


router.use('/actores', actoresRoutes);
router.use('/categorias', categoriasRoutes);
router.use('/generos', generosRoutes);
router.use('/catalogo', catalogosRoutes);

module.exports = router;
