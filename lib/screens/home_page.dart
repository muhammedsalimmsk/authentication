import 'package:authentication/constant/constants.dart';

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../models/data_model/data_model.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.dataModel}) : super(key: key);
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    // final data=tableDataController.fetchData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Ledger"),
      ),
      body: Column(
        children: [
          Row(
              //scrollDirection: Axis.horizontal,
              children: [
                SingleChildScrollView(
                    child: DataTable(
                  columnSpacing: 25,
                  showBottomBorder: true,
                  showCheckboxColumn: true,
                  dividerThickness: 5,
                  columns: const [
                    DataColumn(
                        label: Text('S.No'),
                        tooltip: 'represents serial number'),
                    DataColumn(
                        label: Text('Date'),
                        tooltip: 'represents date of ledger'),
                    DataColumn(
                        label: Text('From A/c'),
                        tooltip: 'represents account from'),
                    DataColumn(
                        label: Text('To A/c'),
                        tooltip: 'represents to account'),
                    DataColumn(
                        label: Text('Debit'),
                        tooltip: 'representing of debits amount'),
                    DataColumn(
                        label: Text('Credit'),
                        tooltip: 'representing of credit amount'),
                  ],
                  rows: List<DataRow>.generate(dataModel.data!.length, (index) {
                    final item = dataModel.data![index];

                    return DataRow(cells: [
                      DataCell(Text((index + 1).toString())),
                      DataCell(
                          Text((DateFormat('dd/MM/yyyy').format(item.date!)))),
                      DataCell(Text(item.fromAccount==null?"${item.fromEmployee!.firstName!} ${item.fromEmployee!.lastName!}":item.fromAccount!.name.toString())),
                      DataCell(Text(item.toAccount==null?item.toCustomer!.customerName.toString():
                      item.toAccount!.name.toString())),
                      // DataCell(Text("e")),
                      DataCell(Text(item.entryType == "CREDIT"
                          ? item.amount.toString()
                          : "0")),
                      DataCell(Text(item.entryType == "DEBIT"
                          ? item.amount.toString()
                          : "0"))
                    ]);
                  }),
                ))
              ])
        ],
      ),
    );
  }
}
