var pool = require('../util/dbconnection');

var statemodel = {
	getStateList:function(cb){
		var sql = "select * from state where STATUS = '0'";
		pool.getConnection(function(error, connection){
			if(error){
			}
			else{
				connection.query(sql, function(error, result){
					if (error) {
						cb(error, null);
					}
					else{
						cb(null, result);
					}
				});
			}
			connection.release();
		});
	},
	createState:function(inputData, cb){
		var sql = "insert into state(STATENAME, CREATIONDATE, UPDATIONDATE, STATUS)values('"+inputData.sname+"', now(),now(), 0)";
		console.log('01', sql);
		pool.getConnection(function(error, connection){
			if(error){
			}
			else{
				connection.query(sql, function(error, result){
					console.log('02', error, result);
					if (error) {
						cb(error, null);
					}
					else{
						cb(null, result);
					}
				});
			}
			connection.release();
		});	
	},
	getStateById:function(sid, cb){
		console.log('01', sid);
		var sql = "select * from state where STATEID="+sid.sid;
		pool.getConnection(function(error, connection){
			if(error){
			}
			else{
				connection.query(sql, function(error, result){
					if (error) {
						cb(error, null);
					}
					else{
						cb(null, result);
					}
				});
			}
			connection.release();
		});
	},
	updateState:function(inputData, id, cb){
		console.log('03', inputData, id);

		var sql = "update state set STATENAME='"+inputData.sname+"' where STATEID="+id;
		pool.getConnection(function(error, connection){
			console.log('error', error, connection);
			if(error){
			}
			else{
				connection.query(sql, function(error, result){
					if (error) {
						cb(error, null);
					}
					else{
						cb(null, result);
					}
				});
			}
			connection.release();
		});
	},
	deleteState:function(sid, cb){
		var sql = "update state set STATUS = '1'  where STATEID="+sid.sid;
		pool.getConnection(function(error, connection){
			if(error){
			}
			else{
				connection.query(sql, function(error, result){
					if (error) {
						cb(error, null);
					}
					else{
						cb(null, result);
					}
				});
			}
			connection.release();
		});
	}
}

module.exports = statemodel;