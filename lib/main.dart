import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'avg_calc.dart';
import 'grade_calc.dart';
import 'credit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '시험 계산기',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(body: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueAccent, Colors.red])),
      child: Center(
        child: SafeArea(
          top: false,
          left: false,
          right: false,
          bottom: true,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(left: 10, top: 100, bottom: 10),
                        child: Text(
                          '시험 계산기',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 43),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: RaisedButton(
                        child: Stack(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    '평균 계산',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black87),
                                  ),
                                )),
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.assignment,
                                size: 190,
                                color: Color.fromRGBO(255, 255, 255, 300.0),
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Color.fromRGBO(255, 255, 255, 50.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AvgCalc()));
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: RaisedButton(
                        child: Stack(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    '등급 계산',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black87),
                                  ),
                                )),
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.assessment,
                                size: 190,
                                color: Color.fromRGBO(255, 255, 255, 300.0),
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Color.fromRGBO(255, 255, 255, 50.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GradeCalc()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: RaisedButton(
                        child: Stack(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    '크레딧',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black87),
                                  ),
                                )),
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.person,
                                size: 190,
                                color: Color.fromRGBO(255, 255, 255, 300.0),
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Color.fromRGBO(255, 255, 255, 50.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Credit()));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
