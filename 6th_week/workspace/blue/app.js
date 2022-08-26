const express = require('express')
const app = express()
app.use(express.static('public'));  //static정적페이지
const port = 3000

app.get('/', (req, res) => {
  res.send('<h1>Hello World 08-25-목요일</h1>')
})


 app.get('/login',function(req,res){
  res.send('<h1>login 정보</h1>')
 })

app.get('/bc',function(req,res){
  res.send(`<h1>hello bear.png </h1> <img src="/images/bear.gif" />`)
});
//localhost:3000/bc접속
  

app.listen(port, (req,res) => {
  console.log(`connect port ${port}`)
})