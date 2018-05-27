var express = require('express');
var fs = require("fs");
const http = require('http');
const formidable = require('formidable')
var fileExtension = require('file-extension'); 
var router = express.Router();
var mv = require('mv');
var adsmodel = require('../model/adsmodel');
var categorymodel = require('../model/categorymodel');
/*var localitymodel = require('../model/localitymodel');*/
var statemodel = require('../model/statemodel');
/*var citymodel = require('../model/citymodel');*/

router.get('/adslist', function(req, res, next){
	var inputData = '';
	adsmodel.listAds(inputData, function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});

router.get('/statelist', function(req, res, next){
	statemodel.listState(function(error, result){
		if (error) {
		   	res.send(error);
		}
		else{
			var stateData = result;

		categorymodel.listCategory('', function(error, result){
			if (error) {
				res.send(error);
			}
			else{
				res.send(stateData, result);
			}
		});	
			}
	});	
			
});
router.post('/addadsdata', function(req, res, next){
	
 	var form = new formidable.IncomingForm();
    form.parse(req, (err, fields, files) => {
        // console.log(err,fields, files);
        
        var data = JSON.parse(fields.data);
        // console.log('test', data.tit);

        var fileExtension = require('file-extension');
    var sampleFile = files.image.name;
 	// console.log('0123', sampleFile);
 	// console.log('pathtemp', files.image.path);
 	var tempPath = files.image.path;
 	
 	var type = files.image.type;
 	console.log('etxt12', type);
  	
    var inputfielddata5 = {
		tit : data.tit,
		tags : data.tags,
		dis : data.dis,
		img : sampleFile,
		web : data.web,
		c1name : data.c1name,
		scat : data.scat,
		sname : data.sname,
		cityname : data.cityname	,
		lname : data.lname,
		area : data.area,
		status : data.status,
		ext: type
	}
	console.log(inputfielddata5);
	adsmodel.addAds(inputfielddata5, function(error, result){
		if (error) {
			var msg = 'wrong input';
			//res. redirect('/admin/ads/addads?error'+msg);
		}
		else{
			console.log('Last Insert Id'+result.insertId);
			var destPath= __dirname+'/../public/assets/'+inputfielddata5.img+'_'+result.insertId;
			// console.log('00', destPath);
			fs.rename(tempPath, destPath, function (error) {
			  if (error){
			  	console.log('come01');
			  	var resp = {
						status: 1,
						status_msg: "failed"
					}
				const proxy = http.createServer((req, res) => {
				  res.writeHead(500, { 'Content-Type': 'application/json' });
				  res.send(resp);
				})
			  }else{
			  	console.log('come02');
			  	var resp = {
						status: 0,
						status_msg: "success"
					}
				// res.status(200).send(resp);
				const proxy = http.createServer((req, res) => {
				  res.writeHead(200, { 'Content-Type': 'application/json' });
				  res.send(resp);
				})
			  }
			});
		}
	});
    });
});

router.get('/updateads', function(req, res, next){
	// var id = req.query.adsid;
	adsmodel.getAdsById(req.query, function(error, result){
		if (error) {
			res.send(error);
		}
		else{
			res.send(result);
		}
	});
});
router.post('/updateadsdata', function(req, res, next){
	console.log('01',req.body, '02',req.query)
	// var inputfielddata5 = {
	// 	aid : req.body.aid,
	// 	tit : req.body.tit,
	// 	tags : req.body.tags,
	// 	dis : req.body.dis,
	// 	img : req.body.img,
	// 	web : req.body.web,
	// 	c1id : req.body.c1id,
	// 	scid : req.body.scid,
	// 	sid : req.body.sid,
	// 	cid : req.body.cid	,
	// 	lid : req.body.lid,
	// 	area : req.body.area,
	// 	status : req.body.status,
	// }
	// console.log(inputfielddata5);
	adsmodel.updateAds(req.body, req.query, function(error, result){
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
router.get('/deleteads', function(req, res, next){
	// var id = req.query.adsid;
	adsmodel.deleteAds(req.query, function(error, result){
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

router.get('/changestatus', function(req, res, next){
	var id = req.query.adsid;
	var action = req.query.action;
	var status ='';
	if (action == 'Reject') {
		status = 'Rejected';
	} else if(action == 'Approve') {
		status = 'Approved';
	}

	var inputData = {
		aid:id,
		status:status
	}
	adsmodel.changeStatus(inputData, function(error, result){
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