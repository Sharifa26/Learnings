import http from 'http';

const server = http.createServer((req, res)=>{
    console.log(req.url);
    
})

server.listen(9000,()=> console.log('Sever Started on port 9000'));