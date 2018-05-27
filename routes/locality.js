var express = require('express');

var router = express.Router();
var localitymodel = require('../model/localitymodel');
var citymodel = require('../model/citymodel');

router.get('/addloc', function(req, res, next){
	console.log('023', req.query);
	citymodel.listCity(function(error, result){
		if (error) {
			res.send(error)
		}
		else{
			res.send(result);
		}
	});	
});
router.post('/addlocdata', function(req, res, next){
	var inputfielddata3 = {
		lname : req.body.lname,
		cname : req.body.cname,
	}
	localitymodel.addLocality(inputfielddata3, function(error, result){
		if (error) {
			var resp = {
				status:1,
				status_msg:'failed'
			}
			res.send(resp);
		}
		else{
			var resp = {
				status:0,
				status_msg:'success'
			}
			res.send(resp);
		}
	});
});

router.get('/localitylist', function(req, res, next){
	localitymodel.listLocality(function(error, result){
		if (error) {
			res.send(error)
		}
		else{
			
			res.send(result);
		}
	});
});

router.get('/updateloc', function(req, res, next){
	var id = req.query.localityid;
	localitymodel.getLocalityById(id, function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			var localityData = result;
			// res.send(result);
			citymodel.listCity(function(error, result){
				if (error) {
					res.send(error);
				}
				else{
					res.send({result, localityData});
				}
			});
		}
	});
});

router.post('/updatelocdata', function(req, res, next){
	
	localitymodel.localityUpdate(req.body, req.query, function(error, result){
		if (error) {
			var resp = {
				status:1,
				status_msg:'failed'
			}
			res.send(resp);
		}
		else{
			var resp = {
				status:0,
				status_msg:'success'
			}
			res.send(resp);
		}
	});
});
router.get('/deleteloc', function(req, res, next){
	var id = req.query.localityid;
	localitymodel.deleteLocality(id, function(error, result){
		if (error) {
			var resp = {
				status:1,
				status_msg:'failed'
			}
			res.send(resp);
		}
		else{
			var resp = {
				status:0,
				status_msg:'success'
			}
			res.send(resp);
		}
	});
});
router.get('/getlocalitybycity', function(req, res, next) {
    // var cityid = req.body.cityid; 
    // console.log('01', req.query);
    localitymodel.listLocalityByCity(req.query, function(error, result){
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