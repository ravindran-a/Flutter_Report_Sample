import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ReportsDebitScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReportsDebitScreen();
  }
}

class _ReportsDebitScreen extends State<ReportsDebitScreen> {
  List<DataColumn> getDebitReportColumns() {
    return [
      DataColumn(
          label: Text('TRANSACTION DATE',
              style: TextStyle(
                color: HexColor("#8D8D8D"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('CENTER NAME',
              style: TextStyle(
                color: HexColor("#8D8D8D"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('DEBIT AMOUNT',
              style: TextStyle(
                color: HexColor("#8D8D8D"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('BANK ACCOUNT',
              style: TextStyle(
                color: HexColor("#8D8D8D"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('STATUS',
              style: TextStyle(
                color: HexColor("#8D8D8D"),
                fontSize: 12,
              )))
    ];
  }

  List<DataRow> getDebitReportRows() {
    return [
      DataRow(cells: [
        DataCell(Text('1')),
        DataCell(Text('Arya')),
        DataCell(Text('6')),
        DataCell(Text('6')),
        DataCell(Text('6')),
      ]),
      DataRow(cells: [
        DataCell(Text('12')),
        DataCell(Text('John')),
        DataCell(Text('9')),
        DataCell(Text('6')),
        DataCell(Text('6')),
      ]),
      DataRow(cells: [
        DataCell(Text('42')),
        DataCell(Text('Tony')),
        DataCell(Text('8')),
        DataCell(Text('6')),
        DataCell(Text('6')),
      ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Debit Report"),
        ),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: SafeArea(
              child: ListView(
            children: <Widget>[
              Text("Debit Report",
                  style: TextStyle(
                    color: HexColor("#323232"),
                    fontSize: 24,
                  )),
              Container(height: 117),
              Container(
                  child: DataTable(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(2)),
                columns: getDebitReportColumns(),
                rows: getDebitReportRows(),
              ))
            ],
          )),
        ));
  }
}
