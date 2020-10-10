class util {
  //data模板
  public dataTemplate(
    code = 200,
    success = true,
    message = "",
    data = null,
    otherData = {}
  ) {
    return {
      code,
      success,
      message,
      data,
      ...otherData,
    };
  }
}

export default new util();
