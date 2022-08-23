const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('응애 나 애기 윤하');
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});