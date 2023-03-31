class DataModel {
  int? status;
  List<dynamic>? data;
  DataModel({this.status, this.data});

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        status: json['status'] as int?,
        data: json['data'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data,
      };
}
class Data {
  int number;
  int date;
  String fromAccount;
  String toAccount;
  double debitAmount;
  double creditAmount;

  Data(this.number, this.date, this.fromAccount, this.toAccount,
      this.debitAmount, this.creditAmount);
//  Data.fromJson(Map<String, dynamic> json) {
//   number = json['S.No'];
//   date = json['date'];
//   fromAccount = json['fromAccount'];
//   toAccount = json['toAccount'];
//   debitAmount = json['debitAmount'];
//   creditAmount=json['creditAmount'];
// }
}