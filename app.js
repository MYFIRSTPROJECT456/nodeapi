var createError = require('http-errors');
var express = require('express');
var fs = require("fs");
var cors = require('cors');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var fileUpload = require('express-fileupload');
var multipart = require('connect-multiparty');
var multipartMiddleware = multipart();
var logger = require('morgan');

var state = require('./routes/state');
var city = require('./routes/city');
var locality = require('./routes/locality');
var category = require('./routes/category');
var users = require('./routes/users');
var ads = require('./routes/ads');
var login = require('./routes/loginboth');

var app = express();
app.use(cors());

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({limit: '50mb', extended: true}));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', state);
app.use('/', city);
app.use('/', locality);
app.use('/', category);
app.use('/', users);
app.use('/', ads);
app.use('/', login);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
