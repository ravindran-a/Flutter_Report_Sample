import 'package:flutter/material.dart';

import 'reports_debit.dart';
import 'reports_royalty.dart';
import 'reports_royalty_failed.dart';

class ReportsHomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReportsHomeScreen();
  }
}

class _ReportsHomeScreen extends State<ReportsHomeScreen> {
  Future<void> onViewRoyaltyReport() async {
    await Navigator.push(context,
        MaterialPageRoute(builder: (context) => ReportsRoyaltyScreen()));
  }

  Future<void> onViewRoyaltyFailedReport() async {
    await Navigator.push(context,
        MaterialPageRoute(builder: (context) => ReportsRoyaltyFailedScreen()));
  }

  Future<void> onViewDebitReport() async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => ReportsDebitScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("Reports Sample")),
        body: Container(
            padding: EdgeInsets.all(40.0),
            child: SafeArea(
              child: ListView(
                children: <Widget>[
                  Container(
                      width: screenSize.width / 3,
                      child: ElevatedButton(
                          onPressed: () {
                            this.onViewRoyaltyReport();
                          },
                          child: Text(
                            'View Royalty Report',
                            style: TextStyle(color: Colors.white),
                          )),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 40.0)),
                  Container(
                      width: screenSize.width / 3,
                      child: ElevatedButton(
                          onPressed: () {
                            this.onViewRoyaltyFailedReport();
                          },
                          child: Text(
                            'View Royalty Failed Report',
                            style: TextStyle(color: Colors.white),
                          )),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 40.0)),
                  Container(
                      width: screenSize.width / 3,
                      child: ElevatedButton(
                          onPressed: () {
                            this.onViewDebitReport();
                          },
                          child: Text(
                            'View Debit Report',
                            style: TextStyle(color: Colors.white),
                          )),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 40.0))
                ],
              ),
            )));
  }
}
