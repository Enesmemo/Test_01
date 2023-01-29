'use strict';

const mysql = require('mysql');

let connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'test'
});

connection.connect(function (err) {
  if (err) throw err;

  console.log('MySQL bağlantısı başarıyla gerçekleştirildi.');

});
