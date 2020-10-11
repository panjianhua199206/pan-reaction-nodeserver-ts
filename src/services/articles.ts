import util from "../public";
import articlesModel from "../models/articles";
const articlesSever: any = {
  /*
   * page 页码
   * pageSize 页显示条数
   * keyWord 搜索词
   * tagsId 标签ID
   * */
  list: async ({ page, pageSize, keyWord, tagsId }: any) => {
    if (!page) {
      page = 1; // 前端不传页面，则默认查询第一页
      // return util.dataTemplate(400, false, "页码数必传");
    }
    if (!pageSize) {
      pageSize = 10; // 前端不传条数，则默认查询10条
      // return util.dataTemplate(400, false, "条数必传");
    }
    const data = await articlesModel.list({ page, pageSize, keyWord, tagsId });
    return util.dataTemplate(200, true, "", data.res, { total: data.total });
  },
  /*
   * id 文章id
   * */
  detail: async ({ id }) => {
    if (!!id) {
      const data = await articlesModel.detail(id);
      return util.dataTemplate(200, true, "", data.res);
    } else {
      return util.dataTemplate(400, false, "文章id必传");
    }
  },
};

export default articlesSever;
