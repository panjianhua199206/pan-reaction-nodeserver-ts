const mysql = require('mysql');
export default {
  port: 9007,
  server: () => {
    const mysqlConfig = {
      host: 'localhost',
      user: 'root',
      password: 'pig666six',
      database: 'reaction',
      port: '3306'
    };

    const pool = mysql.createPool({
      ...mysqlConfig,
      multipleStatements: true // 多语句查询
    });
    // 全局pool
    global['pool'] = pool;
  }
}
