class BaseResponse<T, V extends Exception> {
  late bool isSuccess;
  T? data;
  Exception? exeption;

  BaseResponse(this.isSuccess, {this.data, this.exeption});

  factory BaseResponse.success({T? data}) {
    return BaseResponse(true, data: data);
  }

  factory BaseResponse.fail(Exception exeption) {
    return BaseResponse(false, exeption: exeption);
  }
}
