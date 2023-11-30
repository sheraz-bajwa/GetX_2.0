import 'package:getx/MVVM/Data/Response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? messsage;

  ApiResponse(this.messsage, this.data, this.status);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.messsage) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $messsage \n Data : $data";
  }
}
