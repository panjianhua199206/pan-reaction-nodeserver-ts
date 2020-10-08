import articlesSever from "../services/articles";
import util from "../public";
import checkReq from "../public/checkReq";
const  articles = [
    //文章列表接口
    {
        path: '/articles/list',
        requestType: 'get',
        callBackFunction: async (dataObj) => {
            let {data,req,res,next}:any = dataObj;
            let {query} = req;
            let {page,pageSize} = query;
            if(JSON.stringify(query) !== '{}'){
                if(!checkReq.check(page,'page','number')){
                    data = util.dataTemplate(400,false,checkReq.errorStr);
                }else if(!checkReq.check(pageSize,'pageSize','number')){
                    data = util.dataTemplate(400,false,checkReq.errorStr);
                }else {
                    data = await articlesSever.list(query);
                }
            }else {
                data = util.dataTemplate(400,false,'页码数和条数不能为空');
            }
            res.json(data);
        }
    },
    {
        //文章详情接口
        path: '/articles/detail',
        requestType: 'get',
        callBackFunction: async (dataObj) => {
            let {data,req,res}:any = dataObj;
            let {query} = req;
            if(JSON.stringify(query) !== '{}'){
                data = await articlesSever.detail(query);
            }else {
                data = util.dataTemplate(400,false,'文章id不能为空');
            }
            res.send(data);
        }
    }
]

export default articles;