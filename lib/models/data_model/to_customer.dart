class ToCustomer {
  String? id;
  String? companyId;
  String? customerName;
  String? customerCompany;
  String? customerEmail;
  String? customerPhone;
  String? billCountry;
  String? billAddress;
  String? billCity;
  String? billZipCode;
  String? billPhone;
  String? billFax;
  String? shipCountry;
  String? shipAddress;
  String? shipCity;
  String? shipZipCode;
  String? shipPhone;
  String? shipFax;
  String? taxNo;
  String? website;
  int? openingBalance;
  dynamic employeeId;
  DateTime? createdAt;
  DateTime? updatedAt;

  ToCustomer({
    this.id,
    this.companyId,
    this.customerName,
    this.customerCompany,
    this.customerEmail,
    this.customerPhone,
    this.billCountry,
    this.billAddress,
    this.billCity,
    this.billZipCode,
    this.billPhone,
    this.billFax,
    this.shipCountry,
    this.shipAddress,
    this.shipCity,
    this.shipZipCode,
    this.shipPhone,
    this.shipFax,
    this.taxNo,
    this.website,
    this.openingBalance,
    this.employeeId,
    this.createdAt,
    this.updatedAt,
  });

  factory ToCustomer.fromJson(Map<String, dynamic> json) => ToCustomer(
        id: json['id'] as String?,
        companyId: json['companyId'] as String?,
        customerName: json['customerName'] as String?,
        customerCompany: json['customerCompany'] as String?,
        customerEmail: json['customerEmail'] as String?,
        customerPhone: json['customerPhone'] as String?,
        billCountry: json['billCountry'] as String?,
        billAddress: json['billAddress'] as String?,
        billCity: json['billCity'] as String?,
        billZipCode: json['billZipCode'] as String?,
        billPhone: json['billPhone'] as String?,
        billFax: json['billFax'] as String?,
        shipCountry: json['shipCountry'] as String?,
        shipAddress: json['shipAddress'] as String?,
        shipCity: json['shipCity'] as String?,
        shipZipCode: json['shipZipCode'] as String?,
        shipPhone: json['shipPhone'] as String?,
        shipFax: json['shipFax'] as String?,
        taxNo: json['taxNo'] as String?,
        website: json['website'] as String?,
        openingBalance: json['opening_balance'] as int?,
        employeeId: json['employee_id'] as dynamic,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'companyId': companyId,
        'customerName': customerName,
        'customerCompany': customerCompany,
        'customerEmail': customerEmail,
        'customerPhone': customerPhone,
        'billCountry': billCountry,
        'billAddress': billAddress,
        'billCity': billCity,
        'billZipCode': billZipCode,
        'billPhone': billPhone,
        'billFax': billFax,
        'shipCountry': shipCountry,
        'shipAddress': shipAddress,
        'shipCity': shipCity,
        'shipZipCode': shipZipCode,
        'shipPhone': shipPhone,
        'shipFax': shipFax,
        'taxNo': taxNo,
        'website': website,
        'opening_balance': openingBalance,
        'employee_id': employeeId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}
