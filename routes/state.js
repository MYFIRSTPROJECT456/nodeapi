var express = require('express');
var router = express.Router();
var stateModel = require('../model/statemodel');
/* GET home page. */
router.get('/statelist', function(req, res, next) {
  	stateModel.getStateList(function(error, result){
  		if (error) {
  			res.send(error);
  		}
  		else{
  			res.send(result);
  		}
  	});
});

router.post('/statecreate', function(req, res, next){
	stateModel.createState(req.body, function(error, result){
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
				status_msg:'success'
			}
			res.send(resp);
		}
	});
});

router.post('/statecreate', function(req, res, next){
	stateModel.createState(req.body, function(error, result){
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
				status_msg:'success'
			}
			res.send(resp);
		}
	});
});

router.get('/update', function(req, res, next){
	stateModel.getStateById(req.query, function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});

router.post('/updatedata', function(req, res, next){
	stateModel.updateState(req.body, req.query.sid, function(error, result){
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
				status_msg:'success'
			}
			res.send(resp);
		}
	});
});

router.get('/delete', function(req, res, next){
	console.log('req01', req.query);
	stateModel.deleteState(req.query, function(error, result){
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
				status_msg:'success'
			}
			res.send(resp);
		}
	});
});
module.exports = router;
