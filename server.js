const express = require('express');
const sequelize = require('./sequelize'); 
const apiRoutes = require('./api'); 

const app = express();
const port = 3000;

app.use(express.json());
app.use('/api', apiRoutes);

sequelize.sync({ force: false }).then(() => {
  app.listen(port, () => {
    console.log(`Servidor escuchando en el puerto ${port}`);
  });
});
