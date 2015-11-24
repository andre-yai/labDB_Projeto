var pg = require('pg');
var fs = require('fs');

var sql = fs.readFileSync('modelofisicoREDUZIDO.sql').toString();

var conString = 'postgres://user@pw@localhost:5432/todo';
var client = new pg.Client(conString);
client.connect(function(err, client) {
  if(err) {
    return console.error('could not connect to postgres', err);
  }
  client.query(sql, function(err, result){
        if(err){
            console.log('error: ', err);
            process.exit(1);
        }
        process.exit(0);
    });
});
