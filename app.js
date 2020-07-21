const express=require("express");
const cors=require('cors');

//创建服务器
const app=express();


//服务器使用接口
app.listen(3000); 

//必须用bodyParser将post请求数据解析为对象！
const bodyparser=require('body-parser');
app.use(bodyparser.urlencoded({
    extended:false
}))

//同源策略
app.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080','http://192.168.1.179:8080']
}));

// //引入静态文件
// app.use(express.static("mypro"));
//引入mysql
const mysql=require("mysql");
const pool =mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'mypro'
})

//注册用户
app.post('/reg',(req,res)=>{
    var uname=req.body.uname;
    var pswd=req.body.pswd;
    var sql='SELECT count(id) AS count FROM user WHERE uname=?'
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err;
        console.log(result[0].count)
        if(result[0].count==1){
            res.send({code:400,message:"注册失败，用户名已被使用"})
        }else{
            sql='INSERT user(uname,pswd) VALUES(?,?)'
            pool.query(sql,[uname,pswd],(err,result)=>{
                if(err) throw err;
                res.send({code:200,message:'注册成功啦❀'})
            })
        }
    })
})
// 用户登录
app.get('/login',(req,res)=>{
    var uname=req.query.uname;
    var pswd=req.query.pswd;
    var sql='SELECT * FROM user WHERE uname=? AND pswd=?'
    pool.query(sql,[uname,pswd],(err,result)=>{
        if(err) throw err;
        if(result[0]!==undefined){
            res.send({code:200,message:'登陆成功',uname:result[0].uname})
        }else{
            res.send({code:180,message:'登录失败'})
        }
    })
})
// 网页加载获取商品列表
app.get('/getlist',(req,res)=>{
    var sql='SELECT * FROM list'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
// detail
app.get('/getdetail',(req,res)=>{
    console.log(req)
    var id = req.query.id;
    var sql='select * from detail WHERE id=?';
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
