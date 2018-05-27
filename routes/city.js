var express = require('express');
var router = express.Router();
var citymodel = require('../model/citymodel');
var statemodel = require('../model/statemodel');

router.get('/citylist', function(req, res, next) { 
    citymodel.listCity(function(error, result){
        if(error) {    
            res.send(error);
        }
        else{
            res.send(result);
        }   
    });
});

router.get('/addcity', function(req, res, next) {
    console.log('012');
    statemodel.getStateList(function(error, result){
        if (error) {
            res.send(error);
        }
        else{
            res.send(result);
        }
    });
});

router.post('/addcitydata', function(req, res, next) {
    citymodel.addCity(req.body, function(error, result){
        if (error) {
            var resp = {
                status:1,
                status_msg: 'failed'
            }
            res.send(resp);
        }
        else{
            var resp = {
                status:0,
                status_msg: 'success'
            }
            res.send(resp);
        }
    });
});

router.get('/updatecity', function(req, res, next) {
   
    var id = req.query.cityid;
    citymodel.getCityById(id, function(error, result){
        if (error) {

            res.send(error);
        }
        else{
            
            var cityData = result;
            statemodel.getStateList(function(error, result){
                if (error) {

                    res.send(error);
                }
                else{
                    
                    res.send({data:cityData, list:result});
                }
            }); 
        }
    });
});

router.post('/updatecitydata', function(req, res, next){
    var inputfielddata2 = {
         cid : req.body.cid,
        cname : req.body.cname,
        sid : req.body.sid,
        sname : req.body.sname,
    }
    citymodel.updateCity(inputfielddata2,req.query.id, function(err, result){
        if (err) {
            
            var resp = {
                status:1,
                status_msg: 'failed'
            }
            res.send(resp);
        }
        else{
            var resp = {
                status:0,
                status_msg: 'success'
            }
            res.send(resp);
        }
    });
});

router.get('/citydelete', function(req, res, next){
    var id = req.query.deleteid;
    citymodel.deleteCity(id, function(error, result){
        if (error) {
            var resp = {
                status:1,
                status_msg: 'failed'
            }
            res.send(resp);
        }
        else{
            var resp = {
                status:0,
                status_msg: 'success'
            }
            res.send(resp);
        }
    });
});
router.get('/getcitybystate', function(req, res, next) {
    // var stateid = req.body.stateid; 
    citymodel.listCityByState(req.query, function(error, result){
        if (error) {    
            res.send({error:error});
        }
        else{
            res.setHeader('content-type', 'text/json');
            res.send(result);
        }   
    });
});

module.exports = router;