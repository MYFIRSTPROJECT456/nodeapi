var express = require('express');

var router = express.Router();
var usersmodel = require('../model/usersmodel');

router.get('/adduse', function(req, res, next){
	res.render('adduse', {userdata:req.session});
});
router.post('/addusedata', function(req, res, next){
	var forms = {
		tablename: 'users'
	}
	var inputfielddata4 ={
		USERNAME :req.body.uname,
		MOBILENO :req.body.mob,
		EMAILID :req.body.email,
		STATUS :req.body.status,
		USERPASSWORD :req.body.upass,	
	}
	//console.log(inputfielddata4);

	usersmodel.addUsers(forms, inputfielddata4, function(error, result){
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

router.get('/userslist', function(req, res, next){
	var forms = {
		tablename: 'users'
	}
	usersmodel.listUsers(forms, function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});

router.get('/updateuse', function(req, res, next){
	var forms = {
		tablename: 'users'
	}
	usersmodel.getUserById(forms, req.query,function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});
router.post('/updateusedata', function(req, res, next){
	// console.log('08',req.body, '09',req.query)
	var forms = {
		tablename: 'users'
	}
	usersmodel.updateUsers(forms, req.body,req.query, function(error, result){
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
router.get('/deleteusers', function(req, res, next){
	var forms = {
		tablename: 'users'
	}
	// console.log('04', req.query);
	usersmodel.deleteUsers(forms, req.query, function(error, result){
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

module.exports = router;