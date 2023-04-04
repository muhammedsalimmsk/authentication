class FromEmployee {
  String? id;
  String? companyId;
  String? greet;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNo;
  String? civilId;
  String? passportNo;
  DateTime? dob;
  int? gender;
  int? maritalStatus;
  int? country;
  String? address;
  String? city;
  String? zipCode;
  String? empId;
  String? branch;
  String? department;
  String? designation;
  String? dutyType;
  String? shift;
  DateTime? hiringDate;
  DateTime? joiningDate;
  String? salaryFrequency;
  int? wage;
  String? bankName;
  String? bankBranchName;
  String? accountNo;
  String? bbanNo;
  String? emergePhoneNo;
  String? emergeContactName;
  dynamic emrgeContactRel;
  String? officialEmail;
  String? password;
  String? profilePic;
  DateTime? civilIdDate;
  DateTime? passportDate;

  FromEmployee({
    this.id,
    this.companyId,
    this.greet,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNo,
    this.civilId,
    this.passportNo,
    this.dob,
    this.gender,
    this.maritalStatus,
    this.country,
    this.address,
    this.city,
    this.zipCode,
    this.empId,
    this.branch,
    this.department,
    this.designation,
    this.dutyType,
    this.shift,
    this.hiringDate,
    this.joiningDate,
    this.salaryFrequency,
    this.wage,
    this.bankName,
    this.bankBranchName,
    this.accountNo,
    this.bbanNo,
    this.emergePhoneNo,
    this.emergeContactName,
    this.emrgeContactRel,
    this.officialEmail,
    this.password,
    this.profilePic,
    this.civilIdDate,
    this.passportDate,
  });

  factory FromEmployee.fromJson(Map<String, dynamic> json) => FromEmployee(
        id: json['id'] as String?,
        companyId: json['companyId'] as String?,
        greet: json['greet'] as String?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        email: json['email'] as String?,
        phoneNo: json['phoneNo'] as String?,
        civilId: json['civilId'] as String?,
        passportNo: json['passportNo'] as String?,
        dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
        gender: json['gender'] as int?,
        maritalStatus: json['maritalStatus'] as int?,
        country: json['country'] as int?,
        address: json['address'] as String?,
        city: json['city'] as String?,
        zipCode: json['zipCode'] as String?,
        empId: json['empId'] as String?,
        branch: json['branch'] as String?,
        department: json['department'] as String?,
        designation: json['designation'] as String?,
        dutyType: json['dutyType'] as String?,
        shift: json['shift'] as String?,
        hiringDate: json['hiringDate'] == null
            ? null
            : DateTime.parse(json['hiringDate'] as String),
        joiningDate: json['joiningDate'] == null
            ? null
            : DateTime.parse(json['joiningDate'] as String),
        salaryFrequency: json['salaryFrequency'] as String?,
        wage: json['wage'] as int?,
        bankName: json['bankName'] as String?,
        bankBranchName: json['bankBranchName'] as String?,
        accountNo: json['accountNo'] as String?,
        bbanNo: json['bbanNo'] as String?,
        emergePhoneNo: json['emergePhoneNo'] as String?,
        emergeContactName: json['emergeContactName'] as String?,
        emrgeContactRel: json['emrgeContactRel'] as dynamic,
        officialEmail: json['officialEmail'] as String?,
        password: json['password'] as String?,
        profilePic: json['profilePic'] as String?,
        civilIdDate: json['civilIdDate'] == null
            ? null
            : DateTime.parse(json['civilIdDate'] as String),
        passportDate: json['passportDate'] == null
            ? null
            : DateTime.parse(json['passportDate'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'companyId': companyId,
        'greet': greet,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'phoneNo': phoneNo,
        'civilId': civilId,
        'passportNo': passportNo,
        'dob': dob?.toIso8601String(),
        'gender': gender,
        'maritalStatus': maritalStatus,
        'country': country,
        'address': address,
        'city': city,
        'zipCode': zipCode,
        'empId': empId,
        'branch': branch,
        'department': department,
        'designation': designation,
        'dutyType': dutyType,
        'shift': shift,
        'hiringDate': hiringDate?.toIso8601String(),
        'joiningDate': joiningDate?.toIso8601String(),
        'salaryFrequency': salaryFrequency,
        'wage': wage,
        'bankName': bankName,
        'bankBranchName': bankBranchName,
        'accountNo': accountNo,
        'bbanNo': bbanNo,
        'emergePhoneNo': emergePhoneNo,
        'emergeContactName': emergeContactName,
        'emrgeContactRel': emrgeContactRel,
        'officialEmail': officialEmail,
        'password': password,
        'profilePic': profilePic,
        'civilIdDate': civilIdDate?.toIso8601String(),
        'passportDate': passportDate?.toIso8601String(),
      };
}
