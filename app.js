const express = require('express')
const app = express()

const hostname = '127.0.0.1';
const port = 3000;

app.set('view engine', 'ejs')
app.set('view', '/views')

app.use('/css',express.static(__dirname + '/css'))

const routers = require('./routes/routers')
app.use('/', routers)


app.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});