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
              Container(
                  height: 117,
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 117,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(right: 24.0),
                        child: Column(children: <Widget>[
                          Text("TRANSACTION DATE"),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              onPressed: () {},
                              child: Row(
                                children: <Widget>[
                                  Text("Jun 16, 2021 - Jun 17, 2021"),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ))
                        ]),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: 336.0),
                          child: Column(children: <Widget>[
                            Text("CENTERS"),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                                onPressed: () {},
                                child: Row(
                                  children: <Widget>[
                                    Text("All (4 centers)"),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ))
                          ])),
                      Container(
                          child: Row(children: <Widget>[
                        ElevatedButton(
                            onPressed: () {}, child: Icon(Icons.download)),
                        ElevatedButton(
                            onPressed: () {}, child: Icon(Icons.email)),
                        ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.question_answer)),
                        ElevatedButton(
                            onPressed: () {}, child: Icon(Icons.save)),
                      ]))
                    ],
                  )),
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
