const mysql = require('mysql');

// krijimi i lidhjes ne databaze
const databaza = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'task_managment'
});

// testimi
databaza.connect((err) => {
  
  console.log('Lidhja me bazën e të dhënave është kryer me sukses!');
  if (err) {
    console.error('Gabim në lidhje:', err);
    return;
  }
});

module.exports = databaza ;
