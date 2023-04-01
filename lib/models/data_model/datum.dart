import 'from_account.dart';
import 'from_customer.dart';
import 'to_account.dart';

class Datum {
  DateTime? date;
  String? fromAccountId;
  String? type;
  String? statementDescription;
  String? description;
  int? amount;
  String? toAccountId;
  String? entryType;
  FromAccount? fromAccount;
  ToAccount? toAccount;
  FromCustomer? fromCustomer;

  Datum({
    this.date,
    this.fromAccountId,
    this.type,
    this.statementDescription,
    this.description,
    this.amount,
    this.toAccountId,
    this.entryType,
    this.fromAccount,
    this.toAccount,
    this.fromCustomer,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        date: json['date'] == null
            ? null
            : DateTime.parse(json['date'] as String),
        fromAccountId: json['from_account_id'] as String?,
        type: json['type'] as String?,
        statementDescription: json['statement_description'] as String?,
        description: json['description'] as String?,
        amount: json['amount'] as int?,
        toAccountId: json['to_account_id'] as String?,
        entryType: json['entry_type'] as String?,
        fromAccount: json['from_account'] == null
            ? null
            : FromAccount.fromJson(
                json['from_account'] as Map<String, dynamic>),
        toAccount: json['to_account'] == null
            ? null
            : ToAccount.fromJson(json['to_account'] as Map<String, dynamic>),
        fromCustomer: json['from_customer'] == null
            ? null
            : FromCustomer.fromJson(
                json['from_customer'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'date': date?.toIso8601String(),
        'from_account_id': fromAccountId,
        'type': type,
        'statement_description': statementDescription,
        'description': description,
        'amount': amount,
        'to_account_id': toAccountId,
        'entry_type': entryType,
        'from_account': fromAccount?.toJson(),
        'to_account': toAccount?.toJson(),
        'from_customer': fromCustomer?.toJson(),
      };
}
