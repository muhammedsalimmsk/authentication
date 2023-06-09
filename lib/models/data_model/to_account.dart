class ToAccount {
  String? id;
  String? name;
  String? number;
  String? type;
  String? description;
  String? status;
  int? openingBalance;
  String? branchId;
  String? companyId;
  String? createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  dynamic updatedAt;

  ToAccount({
    this.id,
    this.name,
    this.number,
    this.type,
    this.description,
    this.status,
    this.openingBalance,
    this.branchId,
    this.companyId,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory ToAccount.fromJson(Map<String, dynamic> json) => ToAccount(
        id: json['id'] as String?,
        name: json['name'] as String?,
        number: json['number'] as String?,
        type: json['type'] as String?,
        description: json['description'] as String?,
        status: json['status'] as String?,
        openingBalance: json['opening_balance'] as int?,
        branchId: json['branch_id'] as String?,
        companyId: json['company_id'] as String?,
        createdBy: json['created_by'] as String?,
        updatedBy: json['updated_by'] as dynamic,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'number': number,
        'type': type,
        'description': description,
        'status': status,
        'opening_balance': openingBalance,
        'branch_id': branchId,
        'company_id': companyId,
        'created_by': createdBy,
        'updated_by': updatedBy,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt,
      };
}
