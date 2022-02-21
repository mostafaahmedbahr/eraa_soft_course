class CurrencyModel {
  String status;
  int time;
  double result;
  double approxResult;

  CurrencyModel({this.status, this.time, this.result, this.approxResult});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    time = json['time'];
    result = json['result'];
    approxResult = json['approxResult'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['time'] = this.time;
    data['result'] = this.result;
    data['approxResult'] = this.approxResult;
    return data;
  }
}
