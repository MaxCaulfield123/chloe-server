const mysql=require("mysql");
//用npm中的mysql模块;
const pool =mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'mypro'
})//创建连接池,写入要进入的数据库
module.exports=pool;
//导出连接池