import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ReportsRoyaltyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReportsRoyaltyScreen();
  }
}

class _ReportsRoyaltyScreen extends State<ReportsRoyaltyScreen> {
  List<DataColumn> getDebitReportColumns() {
    return [
      DataColumn(
          label: Text('Center Name',
              style: TextStyle(
                color: HexColor("#484848"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('Date',
              style: TextStyle(
                color: HexColor("#484848"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('Calculated',
              style: TextStyle(
                color: HexColor("#484848"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('Adjustment',
              style: TextStyle(
                color: HexColor("#484848"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('Net',
              style: TextStyle(
                color: HexColor("#484848"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('Notes',
              style: TextStyle(
                color: HexColor("#484848"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('Payment Type',
              style: TextStyle(
                color: HexColor("#484848"),
                fontSize: 12,
              ))),
      DataColumn(
          label: Text('Status',
              style: TextStyle(
                color: HexColor("#484848"),
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
        DataCell(Text('6')),
        DataCell(Text('6')),
        DataCell(Text('6')),
      ]),
      DataRow(cells: [
        DataCell(Text('42')),
        DataCell(Text('Tony')),
        DataCell(Text('8')),
        DataCell(Text('6')),
        DataCell(Text('6')),
        DataCell(Text('6')),
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
          title: Text("Royalty Report"),
        ),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: SafeArea(
              child: ListView(
            children: <Widget>[
              Text("Reports",
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
