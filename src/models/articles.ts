import getConnection from "./getConnection";
import sqlM from "../public/sqlGlobalMethod";

const articlesModel: any = {
  /*
   * page 页码
   * pageSize 页显示条数
   * keyWord 搜索词
   * tagsId 标签ID
   * */
  list: ({ page, pageSize, keyWord, tagsId }: any) => {
    return new Promise((resolve: any) => {
      let [sqlPage, sqlTotal, countType] = ["", "", "id"];
      //分页
      //WHERE tagsId IN ${tagsId}
      if (!keyWord) {
        keyWord = "";
      }
      sqlPage = sqlM
        .table("articles")
        .where("description")
        .like(`%${keyWord}%`)
        .or("title")
        .limit(page, pageSize)
        .select();
      sqlTotal = sqlM
        .count("id")
        .table("articles")
        .where("description")
        .like(`%${keyWord}%`)
        .or("title")
        .like(`%${keyWord}%`)
        .select("");
      if (tagsId) {
        countType = "tagsId";
        sqlPage = sqlM
          .table("articles")
          .where("tagsId")
          .in(tagsId)
          .limit(page, pageSize)
          .select();
        sqlTotal = sqlM
          .count("tagsId")
          .table("articles")
          .where("tagsId")
          .in(tagsId)
          .select("");
      }
      getConnection(sqlTotal)
        .then((res: any) => {
          return res;
        })
        .then((totalArr: any) => {
          getConnection(sqlPage).then((res: any) => {
            resolve({ res, total: totalArr[0][`COUNT(${countType})`] });
          });
        });
    });
  },
  /*
   * id 文章id
   * */
  detail: (id: any) => {
    return new Promise((resolve) => {
      getConnection(sqlM.table("articles").where("id").in(id).select()).then(
        (res: any) => {
          resolve({ res: res[0] });
        }
      );
    });
  },
};

export default articlesModel;
