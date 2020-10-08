const express = require('express');
const router = express.Router();
import controllers from '../controllers';
import routerMethod from "../public/routerMethod";
let endRouterList = [
    ...controllers
]
endRouterList.map((item) => {
    routerMethod(router,item.path,(dataObj: any) => {
        let {data,req,res}:any = dataObj;
        // 判断支持的请求方法，前端传来的请求方法和路由接口定义 requestType 不一致时，提示不支持该请求方法
        let reqMethod = req.method.toUpperCase();
        if(reqMethod === item.requestType.toUpperCase()){
            item.callBackFunction(dataObj);
        }else {
            data = {
                code: 405,
                success: false,
                message: `Request method '${reqMethod}' not supported`,
                data: null
            }
            res.send(data);
        }
    })
})

routerMethod(router,'*',(dataObj: any) => {
    let {data,res}:any = dataObj;
    data.data = '404';
    res.send(data);
})

export default router;