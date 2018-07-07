var express = require('express');
var router = express.Router();
var adminModel = require('../model/loginmodel');

router.post('/adminlogin', function(req,res, next){
    console.log('001',req.body);

    adminModel.adminLogin(req.body, function(error, result){
        if(error){
            res.send(error);
        }
        else{
            res.send(result);
        }
    });

});

module.exports = router;