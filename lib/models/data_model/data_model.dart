import 'datum.dart';

class DataModel {
  int? status;
  List<Datum>? data;

  DataModel({this.status, this.data});

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        status: json['status'] as int?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
