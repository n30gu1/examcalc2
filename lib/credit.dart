import 'package:flutter/material.dart';

class Credit extends StatelessWidget {
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
              colors: [Colors.blueAccent, Colors.red]
          )
        ),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 8),
                          child: Text(
                            '크레딧',
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
                      child: RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 8),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    '제작자',
                                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'n30gu1 (박성헌)',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        color: Color.fromRGBO(255, 255, 255, 50.0),
                        onPressed: () {}
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3, bottom: 8),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '제작 기간',
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '2019년 7월 15일 ~ \n8월 14일',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Color.fromRGBO(255, 255, 255, 50.0),
                          onPressed: () {}
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 3),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '앱 버전',
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
<<<<<<< HEAD
                                      '0.2.1 RC',
=======
                                      '0.2.1 Beta',
>>>>>>> 35be5c06ad79dd95e8ad93467ba5f69b69f28c56
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          color: Color.fromRGBO(255, 255, 255, 50.0),
                          onPressed: () {}
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Text('Made with ', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),),
                          FlutterLogo(),
                          Text('Flutter', style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
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