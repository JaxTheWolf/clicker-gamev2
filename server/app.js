var express=require("express"),$jscomp$destructuring$var0=require("path"),join=$jscomp$destructuring$var0.join,app=express();app.get("/click",function(b,a){a.sendFile(join(__dirname,"index.html"))});app.use("/public",express.static(join(__dirname,"public")));app.listen(6969);