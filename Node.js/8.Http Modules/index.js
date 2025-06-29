import http from 'http';

const sever = http.createServer((req,res)=>{
//console.log(req);
//res.setHeader('Content-Type','text/html');
// res.statusCode = 404;
// res.statusMessage = 'Not Found';

//shot hand for status ('status code','status message','content type')
res.writeHead(202,'GREAT SUCCESS',{'content-type':'text/html'});
res.write("<h1>Hello World and the server is running on port 8080</h1>");
})

sever.listen(8080,()=> console.log('Sever started on port 8080'));