var express   = require("express"),
    bodyParser= require("body-parser"),
    app       = express(),
    moment	  =require("moment"),
    merchant = require("./merchant");
// const handle = require("./routes/handle");
const exec = require('child_process').exec;
 app.use(bodyParser.urlencoded({extended : true}));
 app.set("view engine", "ejs");
app.use(express.static(__dirname+"public_static"));

app.get("/", function(req, res){
    res.render("new",{data:null});

});
app.post("/transaction", function(req, res){
    console.log(req.body);
    var now=moment();
    //console.log(now);
    //console.log(merchant[req.body.merchant]);
    //console.log(req.body.user.userName);
    var obj={
    	fileName: req.body.user.userName+'.txt',
    	amount: req.body.user.amount,
    	locPin: req.body.user.pinCode,
    	time: now.hour(),
    	merchPin: merchant[req.body.merchant]
    	    };
    	    console.log(obj);
          console.log('python2 running');
            exec('cd routes/codes && python initiate.py '+obj.fileName+" "+obj.amount+' '+obj.locPin+' '+obj.time+' '+obj.merchPin,(err,stdout,stderr)=>{
            	if(err){
            		console.log(err);
        		}
        		console.log('done');
        		console.log(stdout);
        		console.log(stderr);
            res.render('new',{data:stdout});
        	});
});
// app.use(handle);
app.listen(3000, 'localhost',function(){
	console.log("server on duty, mallady");
});
