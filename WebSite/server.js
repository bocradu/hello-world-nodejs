var express = require('express');
var app = express();

app.use(function (req, res, next) {
   res.send("Hello World 3");
});

app.set('port', 80);

var server = app.listen(app.get('port'), function() {
    console.log('Express server listening on port ' + server.address().port);
});
