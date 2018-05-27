var express = require('express');

var router = express.Router();
var categorymodel = require('../model/categorymodel');

router.get('/addcat', function(req, res, next){
	categorymodel.listCategory('', function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});

router.post('/addcatdata', function(req, res, next){
	// console.log('02', req.body);
	
	categorymodel.addCategory(req.body, function(error, result){
		if (error) {
			var resp = {
				status:1,
				status_msg:'failed'
			}
			res.send(resp);
		}
		else {
			var resp = {
				status:0,
				status_msg:'success'
			}
			res.send(resp);
		}
	});

});

router.get('/categorylist', function(req, res, next){
	
	categorymodel.listCategory('',function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});

router.get('/updatecat', function(req, res, next){
    console.log('01', req.query);
	categorymodel.getCategoryById(req.query, function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});
router.post('/updatecatdata', function(req, res, next){
	
	categorymodel.updateCategory(req.body, req.query, function(error, result){
		if (error) {
			var resp = {
				status:1,
				status_msg:'failed'
			}
			res.send(resp);
		}
		else {
			var resp = {
				status:0,
				status_msg:'success'
			}
			res.send(resp);
		}
	});

});	    
    
router.get('/deletecategory', function(req, res, next){
	
    categorymodel.deleteCategory(req.query, function(error, result){
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


router.get('/getsubcategorybycategory', function(req, res, next) {
	console.log('04',req.query);
    categorymodel.listCategory(req.query, function(error, result){
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