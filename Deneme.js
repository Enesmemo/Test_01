'use strict';

const mysql = require('mysql');

let connection = mysql.createConnection({
  host: '127.0.0.1',
  user: 'server_770',
  password: 'z5a60f2jkq',
  database: 'server_770_ee'
});

connection.connect(function (err) {
  if (err) throw err;

  console.log('MySQL bağlantısı başarıyla gerçekleştirildi.');

});