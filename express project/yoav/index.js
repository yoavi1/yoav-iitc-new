import express from 'express';
import bodyParser from 'body-parser';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const app = express();
const port = 3000;
app.use(bodyParser.urlencoded({ extended: true }));

app.listen(port, function () {
  console.log('conected to port 3000');
});

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/public/index.html');
});

// in the end of every function in the code after aoutentication true
// i will execute function thate start timer for aoutentication to be false
// for security
