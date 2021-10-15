const express = require("express");
const app = express();

var Name = "Samuel Eniola Gana";
var Email = "sammyg1297@gmail.com";
var Slackuser ="@Samgle";
var Biostack ="Genomics"


function printdetails(){
return{Name, Email, Slackuser, Biostack};
}

console.log(printdetails());

app.listen(5000,function(request,response){

})
