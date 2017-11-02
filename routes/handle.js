const express = require('express'),
	  router = express.Router();
const PythonShell = require('python-shell');
const exec = require('child_process').exec;

/*const spawn = require('child_process').spawn,
      py = spawn('python',['xyz.py']);*/
router.get('/python2',(req,res)=>{
	console.log('python2 running');
    exec('cd routes/codes && python initiate.py ',(err,stdout,stderr)=>{
    	if(err){
    		console.log(err);
		}
		console.log('done');
		console.log(stdout);
		console.log(stderr);
	});
});

/*router.get('/python',(req,res)=>{
	console.log(__dirname);
    var pyshell = new PythonShell('initiate.py',{scriptPath: __dirname+'/'});
    pyshell.on('message',(data)=>{
		// if(err) console.log(err);
		// data = data.toString('utf8');
		console.log(data);
		// console.log('received a message')
	});
	pyshell.end((err)=>{
		if(err){console.log(err)};
		console.log('finished');
	});*/
	// py.stdout.on('data',(data)=>{
	// 	console.log(data.toString());
	// })
	// py.stdout.end('data',(data)=>{
	// 	console.log(data.toString());
	// })
	// res.send('HI');
// });

module.exports = router;
