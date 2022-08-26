var http=require('http')
,express=require('express')
,static=require('serve-static')
,path=require('path')
,bodyParser=require('body-parser');
var app=express();
app.use('/', static(path.join(__dirname,'/public')));


app.use(bodyParser.urlencoded({extended:true}));
//true값을 주면 객체 안의 객체를 파싱 가능

////////////////////////////////////////////
var allUser=[
    {no:1, name:'홍길동',tel:'010-1111-1111'},
    {no:2, name:'김길동',tel:'010-2222-2222'},
    {no:3, name:'최길동',tel:'010-3333-3333'},
    {no:4, name:'이길동',tel:'010-7890-7890'}
]


app.get('/',function(req,res){
    var str=`<h1>우리들 데이터 </h1>
        <h3>
        <a href="/users">모든회원 목록</a> |
        <a href="/users/3">특정회원 정보</a>   
        </h3>
    `;
    res.send(str);
})
app.get('/users',(req, res)=>{
    var str=`
        <h1>회원 정보</h1>
        <table border='1' width='500'  cellspacing='0'>
            <tr>
                <th>번호</th>
                <th>이름</th>
                <th>연락처</th>
            </tr>
    `;
    for(var i=0;i<allUser.length;i++){
        str+="<tr><td>";
        str+=allUser[i].no+"</td>";
        str+="<td><a href='/users/"+allUser[i].no+"'>"+allUser[i].name+"</a></td>";
        str+="<td>"+allUser[i].tel+"</td></tr>";
    }

    str+=`</table>`;
    res.send(str);
})

app.get('/users/:no',(req, res)=>{
    //요청 path에 따라 다르게 들어오는 파라미터를 :no로 받는다.
    //(1) req.query.파라미터명
    //(2) req.body.파라미터명  todo할때 body
    //(3) req.params.파라미터명
    console.log(req.params.no);
    var findNo=req.params.no;
    var str = "<h2>"+ findNo+"번 회원정보<br>";
    for(var i=0;i<allUser.length;i++){
        if(parseInt(findNo)===allUser[i].no){
            var user=allUser[i];
            str+="이름: "+user.name+"<br>";
            str+="연락처: "+user.tel+"<br> </h2>";
        }
    }
    res.send(str);
})

http.createServer(app).listen(5556,function(){
    console.log('http://localhost:5556');
})





