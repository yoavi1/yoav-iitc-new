import express from 'express';
import bodyParser from 'body-parser';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

const app = express();
const port = 3000;
const thePasword = 'YMCA';
let isRightPass = false;
app.use(bodyParser.urlencoded({ extended: true }));

function checkPassword(req, res, next) {
  if (req.body.password === thePasword) {
    isRightPass = true;
  }
  next();
}
app.use(checkPassword);
app.get('/', function (req, res) {
  res.sendFile(__dirname + '/public/index.html');
});

app.post('/submit', function (req, res) {
  console.log(req.body.password);
  if (isRightPass) {
    res.sendFile(__dirname + '/public/index1.html');
  } else {
    res.sendFile(__dirname + '/public/index.html');
  }
  // res.send('hey');
});
// app.get('/about', function (req, res) {
//   console.log(req.rawHeaders);

//   res.send('about');
// });

// app.post('/register', function (req, res) {
//   res.sendStatus(201);
// });

// app.put('/user/yoav', function (req, res) {
//   res.sendStatus(200);
// });

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
