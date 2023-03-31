import 'package:authentication/constant/constants.dart';
import 'package:authentication/controller/get_table.dart';
import 'package:authentication/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

 const HomePage({Key? key, required this.dataModel}) : super(key: key);
  final DataModel dataModel;
  @override
  Widget build(BuildContext context ) {
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
            children:[ SingleChildScrollView(
              child: DataTable(
                columnSpacing: 25,
                showBottomBorder: true,
                showCheckboxColumn: true,
                dividerThickness: 5,
                columns: const [
                  DataColumn(
                      label: Text('S.No'), tooltip: 'represents serial number'),
                  DataColumn(
                      label: Text('Date'), tooltip: 'represents date of ledger'),
                  DataColumn(
                      label: Text('From A/c'), tooltip: 'represents account from'),
                  DataColumn(
                      label: Text('To A/c'), tooltip: 'represents to account'),
                  DataColumn(
                      label: Text('Debit'),
                      tooltip: 'representing of debits amount'),
                  DataColumn(
                      label: Text('Credit'),
                      tooltip: 'representing of credit amount'),
                ],
                rows:dataModel.data!.map((data) =>
                  DataRow( cells:[
                    DataCell(Text(data.number.toString())),
                    DataCell(Text(data.date.toString())),
                    DataCell(Text(data.fromAccount)),
                    DataCell(Text(data.toAccount)),
                    DataCell(Text(data.debitAmount.toString())),
                    DataCell(Text(data.creditAmount.toString()))
                  ]
            )
                ).toList()
              ),
            ),
    ]
          ),
        ],
      ),
    );
  }
}
