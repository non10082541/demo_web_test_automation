const express = require('express')
const router = express()
const fs = require('fs')

const bodyParser = require('body-parser')
router.use(bodyParser.json())
router.use(bodyParser.urlencoded({extended: true}))

const member_path = fs.readFileSync('data.json')
const member = JSON.parse(member_path)

var items = ''
var obj = ''


router.get('/', (req, res) => {
    res.render('index')
    obj = member
    var data_username = obj[0].user
    console.log(data_username)
})

router.get('/login', (req, res) => {
    res.render('login',{error: ''})
})

router.post('/login', (req, res) =>{
    var username = req.body.username
    var password = req.body.password

    obj = member
    var data_username = obj[0].user
    var data_psw = obj[0].psw

    if(username == data_username && password == data_psw){
        res.redirect('/member')
        items = username
    }
    else{
        res.render('login',{error: 'username and password not match'})        
    }
})

router.get('/member', (req, res) => {
    var json = obj[0]
    res.render('member', {text: items, object: json})
})

router.get('/register', (req, res) => {
    res.render('register', {message: ''})
})

router.post('/register', (req, res) => {
    var members_data = JSON.stringify(req.body)
    var members = JSON.parse(members_data)
    var psw = req.body.psw
    var re_psw = req.body.psw_re

    var array = []
    
    if (psw == re_psw){
        res.render('success',{message: 'Register success'})
        array.push(members)
        fs.writeFileSync('data.json', JSON.stringify(array))
    }else{
        res.render('register', {message: 'Password and confirme Password not match'})
    }
})

router.get('/success', (req, res) => {
    res.render('login', {error: ''})
})

module.exports = router