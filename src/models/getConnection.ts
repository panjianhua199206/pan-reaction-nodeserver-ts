/*
 * sql 查询语句
 * callback 回调函数
 * */
import config from "../config";

const poolServer = (globalPool: any, sql: string) => {
  return new Promise((resolve: any) => {
    globalPool.getConnection((err, connection) => {
      if (err) {
        return resolve(err.sqlMessage);
      }
      connection.query(sql, (err, results) => {
        if (results) {
          resolve(results);
        }
        // callback(err, results);// 结果回调
        connection.release(); // 释放连接资源 | 跟 connection.destroy() 不同，它是销毁
      });
    });
  });
};

export default (sql: string) => {
  if (global["pool"]) {
    return new Promise((resolve: any) => {
      poolServer(global["pool"], sql).then((res) => {
        resolve(res);
      });
    });
  } else {
    config.server();
    return new Promise((resolve: any) => {
      poolServer(global["pool"], sql).then((res) => {
        resolve(res);
      });
    });
  }
};
