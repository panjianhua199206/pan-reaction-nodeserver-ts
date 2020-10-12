// 校验前端传参
class checkReq {
  constructor() {}

  public errorStr = ""; //错误信息

  private page = 1; //页码
  private pageSize = 10; //每页条数
  private id = 1; //Id
  private tagsId = 1; //标签Id
  private keyWord = ""; //搜索关键词

  /*
   * request前端传的参数值
   * reqName 后台定义的参数名称
   * */
  public check(request: any, reqName: string, type = "string") {
    this.errorStr = "";
    if (reqName === undefined) {
      this.errorStr = "参数不正确";
      return false;
    }
    // 数字类型强制转换数字类型
    if (type.toLocaleLowerCase() === "number") {
      request = Number(request);
    }
    console.log(typeof request,request);
    
    if (typeof request != typeof this[reqName]) {
      this.errorStr = `${reqName}参数为${typeof this[reqName]}类型,不能为其他类型`;
      return false;
    }
    /*特殊校验*/
    //数字类型校验
    if (type.toLocaleLowerCase() === "number") {
      console.log('request',request)
      if (request === NaN) {
        this.errorStr = `${reqName}参数为${typeof this[reqName]}类型,不能为其他类型`;
        return false;
      }
    }
    //对象校验
    if (type.toLocaleLowerCase() === "object") {
      if (JSON.stringify(typeof request) === "{}") {
        this.errorStr = `${reqName}参数不正确`;
        return false;
      }
    }
    //页码数校验
    if (reqName === "page") {
      if (request <= 0) {
        this.errorStr = "页码数不能小于0";
        return false;
      }
    }
    //条数校验
    if (reqName === "pageSize") {
      if (request < 1) {
        this.errorStr = "条数不能小于1";
        return false;
      }
    }
    if ((typeof request === typeof this[reqName]) && request.toString() !== 'NaN') {
      return true;
    }
  }
}

export default new checkReq();
