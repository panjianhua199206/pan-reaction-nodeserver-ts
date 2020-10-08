import util from "../public";
import articlesModel from "../models/articles";
const articlesSever:any = {
    /*
    * page 页码
    * pageSize 页显示条数
    * keyWord 搜索词
    * tagsId 标签ID
    * */
    list: async ({page,pageSize,keyWord,tagsId}:any) => {
        if(!page){
            return util.dataTemplate(400,false,'页码数必传');
        }
        if(!pageSize){
            return util.dataTemplate(400,false,'条数必传');
        }
        let data = await articlesModel.list({page,pageSize,keyWord,tagsId});
        return util.dataTemplate(200,true,'', data.res, {total:data.total});
    },
    /*
     * id 文章id
     * */
    detail: async ({id}) => {
        if(!!id){
            let data = await articlesModel.detail(id);
            return util.dataTemplate(200,true,'', data.res);
        }else {
            return util.dataTemplate(400,false,'文章id必传');
        }
    }
};

export default articlesSever;