import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '시험 계산기',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
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
              colors: [Colors.blue, Colors.red])),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 35, bottom: 10),
                          child: Text(
                            '시험 계산기',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 43
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                '평균 계산',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black87
                                ),
                              ),
                              alignment: Alignment(-1, 0.85),
                            ),
                            Spacer(),
                            Container(
                              child: Icon(
                                Icons.assignment,
                                size: 190,
                                color: Color.fromRGBO(255, 255, 255, 300.0),
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        color: Color.fromRGBO(255, 255, 255, 50.0),
                        onPressed: () { print('button pressed'); },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: RaisedButton(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '등급 계산',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black87
                                  ),
                                ),
                                alignment: Alignment(-1, 0.85),
                              ),
                              Spacer(),
                              Container(
                                child: Icon(
                                  Icons.assessment,
                                  size: 190,
                                  color: Color.fromRGBO(255, 255, 255, 300.0),
                                ),
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Color.fromRGBO(255, 255, 255, 50.0),
                          onPressed: () { print('button pressed'); },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: RaisedButton(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '크레딧',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black87
                                  ),
                                ),
                                alignment: Alignment(-1, 0.85),
                              ),
                              Spacer(),
                              Container(
                                child: Icon(
                                  Icons.person,
                                  size: 190,
                                  color: Color.fromRGBO(255, 255, 255, 300.0),
                                ),
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Color.fromRGBO(255, 255, 255, 50.0),
                          onPressed: () { print('button pressed'); },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}