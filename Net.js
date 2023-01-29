var express = require("express");
var app = express();
app.get("/", function(req, res) {
     res.send("Merhabalar, bu bir express ornegidir.");
});
app.get("/test", function(req, res) {
     res.send("Bu bir test denemesidir.");
});
var server = app.listen(3000, function(){ console.log("Sunucu su anda port numarasinda : %d", server.address().port );
});
