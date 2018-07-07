var pool = require('../util/dbconnection');

var admin = {

	// all ads related querys	
	adminLogin: function(inputData, cb){
	
		var sql = "SELECT * FROM `admin` WHERE ADMINUSER = '"+inputData.email+"' AND ADMINPASSWORD='"+inputData.password+"'";
		console.log('this is working='+sql);
		pool.getConnection(function(error, connection){
			if (error) {
				console.log('connection error'+error);
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

module.exports = admin;