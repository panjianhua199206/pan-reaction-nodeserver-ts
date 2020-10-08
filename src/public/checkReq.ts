// 校验前端传参
class checkReq {
    constructor() {

    }

    public errorStr:string = '';//错误信息

    private page:number = 1;//页码
    private pageSize:number = 10;//每页条数
    private id:number = 1;//Id
    private tagsId:number = 1;//标签Id
    private keyWord:string = '';//搜索关键词

    /*
    * request前端传的参数值
    * reqName 后台定义的参数名称
    * */
    public check(request:any,reqName:string,type = 'string'){
        this.errorStr = '';
        if(this[reqName] === undefined){
            this.errorStr = '参数不正确';
            return false;
        }
        // 数字类型强制转换数字类型
        if(type.toLocaleLowerCase() === 'number'){
            request = Number(request);
        }
        let [reqOf,nameOf] = [typeof request,typeof this[reqName]];
        if(reqOf != nameOf){
            this.errorStr = `${reqName}参数为${nameOf}类型,不能为其他类型`;
            return false;
        }
        /*特殊校验*/
        //数字类型校验
        if(type.toLocaleLowerCase() === 'number'){
            if(reqOf.toString() === 'NaN'){
                this.errorStr = `${reqName}参数为${nameOf}类型,不能为其他类型`;
                return false;
            }
        }
        //对象校验
        if(type.toLocaleLowerCase() === 'object'){
            if(JSON.stringify(reqOf) === '{}'){
                this.errorStr = `${reqName}参数不正确`;
                return false;
            }
        }
        //页码数校验
        if(reqName === 'page'){
            if(request <= 0){
                this.errorStr = '页码数不能小于0';
                return false;
            }
        }
        //条数校验
        if(reqName === 'pageSize'){
            if(request < 0){
                this.errorStr = '条数不能小于1';
                return false;
            }
        }
        if(reqOf === nameOf){
            return true;
        }
    }
}

export default new checkReq();