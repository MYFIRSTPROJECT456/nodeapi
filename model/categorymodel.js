var pool = require('../util/dbconnection');

var category = {

	// all category related query	
	addCategory: function(inputData, cb){
		console.log('model01', inputData);
		var sql = "INSERT into category(CATEGORYNAME, PARENTCATEGORYID,CREATIONDATE, UPDATIONDATE) values('"+inputData.cname+"',"+inputData.pid+", NOW(), NOW())";
		console.log('query is working='+sql);
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
    },
    listCategory: function(id, cb){
    	// console.log('01',);
    	// var where = '';
    	// if (parentcategoryid !== '') {
    	// 	where = " WHERE a.parentcategoryid= "+id.id;
    	// }
    	var sql ='';
    	if (id) {
    		sql = "select a. * , b.CATEGORYNAME PARENTCATNAME FROM category a LEFT JOIN category b on a.PARENTCATEGORYID = b.CATEGORYID WHERE a.parentcategoryid="+id.id
    	}
    	else{
    		sql = "select a. * , b.CATEGORYNAME PARENTCATNAME FROM category a LEFT JOIN category b on a.PARENTCATEGORYID = b.CATEGORYID"	
    	}
		// var sql = "select a. * , b.CATEGORYNAME PARENTCATNAME FROM category a LEFT JOIN category b on a.PARENTCATEGORYID = b.CATEGORYID"+where;
		console.log('0120', sql);
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
	},
	
	getCategoryById: function(id, cb){
		var sql = "select * from category where CATEGORYID="+id.id;
		console.log('geeting data'+sql);
		pool.getConnection(function(error, connection){
			if (error) {
				console.log('connection error');
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
    updateCategory: function(inputData,id, cb){
    	console.log('01',inputData, '02', id );
    	var sql = "update category set CATEGORYNAME='"+inputData.cname+"', PARENTCATEGORYID="+inputData.pid+", UPDATIONDATE=now() where categoryid="+id.id;
    	console.log('query is nodk='+sql);
        pool.getConnection(function(error, connection){
        	if(error){
        		console.log('connection, error'+ error);
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
    deleteCategory: function(id, cb){
		var sql = "delete from category where categoryid="+id.id;
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

module.exports = category;