class SqlGlobalMethod {
  constructor() {}
  // 容器
  private obj: object = {};
  //遍历容器
  private getResultSQL() {
    let SQL = "";
    for (const key in this.obj) {
      SQL += this.obj[key];
    }
    this.obj = {};
    return `${SQL};`;
  }
  // 查询字段
  public select(selectField = "*") {
    return `SELECT ${selectField} ${this.getResultSQL()}`;
  }
  // 表名
  public table(name: string) {
    this.obj["nameStr"] = `FROM ${name} `;
    return this;
  }
  // 选择范围
  public where(whereName: string) {
    this.obj["whereStr"] = `WHERE ${whereName} `;
    return this;
  }
  // 查找
  public like(likeName: string) {
    this.obj[`like${likeName}Str`] = `LIKE '${likeName}' `;
    return this;
  }
  //分页
  public limit(start: number, end: number) {
    const startPage = (start - 1) * end;
    this.obj["limitStr"] = `LIMIT ${startPage},${end} `;
    return this;
  }
  // 或者
  public or(string: string) {
    this.obj[`or${string}Str`] = `OR ${string} `;
    return this;
  }
  // in
  public in(string: string) {
    this.obj[`IN${string}Str`] = `IN (${string}) `;
    return this;
  }
  //获取总条数
  public count(type: string) {
    this.obj["countStr"] = `COUNT(${type}) `;
    return this;
  }
}

const SqlMethod: any = new SqlGlobalMethod();

export default SqlMethod;
