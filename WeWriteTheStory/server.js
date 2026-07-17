const http = require('http');
const fs = require('fs');
const path = require('path');

http.createServer((req, res) => {
    let fp = path.join(__dirname, req.url === '/' ? 'index.html' : req.url);
    fs.readFile(fp, (err, data) => {
        if (err) {
            res.writeHead(404);
            res.end();
        } else {
            let t = 'text/plain';
            if (fp.endsWith('.js')) t = 'application/javascript';
            else if (fp.endsWith('.css')) t = 'text/css';
            else if (fp.endsWith('.html')) t = 'text/html';
            res.writeHead(200, { 'Content-Type': t });
            res.end(data);
        }
    });
}).listen(8000, () => console.log('Server: http://localhost:8000'));
