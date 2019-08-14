import  'package:flutter/material.dart';

class GradeCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Content()
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  FocusNode _nodeText1 = FocusNode();
  FocusNode _nodeText2 = FocusNode();
  FocusNode _nodeText3 = FocusNode();
  FocusNode _nodeText4 = FocusNode();
  FocusNode _nodeText5 = FocusNode();
  FocusNode _nodeText6 = FocusNode();
  FocusNode _nodeText7 = FocusNode();
  FocusNode _nodeText8 = FocusNode();
  FocusNode _nodeText9 = FocusNode();
  FocusNode _nodeText10 = FocusNode();
  FocusNode _nodeText11 = FocusNode();
  FocusNode _nodeText12 = FocusNode();

  TextEditingController _t1 = TextEditingController();
  TextEditingController _t2 = TextEditingController();
  TextEditingController _t3 = TextEditingController();
  TextEditingController _t4 = TextEditingController();
  TextEditingController _t5 = TextEditingController();
  TextEditingController _t6 = TextEditingController();
  TextEditingController _t7 = TextEditingController();
  TextEditingController _t8 = TextEditingController();
  TextEditingController _t9 = TextEditingController();
  TextEditingController _t10 = TextEditingController();
  TextEditingController _t11 = TextEditingController();
  TextEditingController _t12 = TextEditingController();

  double total = 0;
  String strTotal = '0';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blueAccent, Colors.red]
          )
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10, top: 30),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '등급 계산',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 43
                          )
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t1,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText1,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "과목1",
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t2,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText2,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "비율1"
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t3,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText3,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "과목2",
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t4,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText4,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "비율2",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t5,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText5,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "과목3",
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t6,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText6,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "비율3",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t7,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText7,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "과목4",
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t8,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText8,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "비율4",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t9,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText9,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "과목5",
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t10,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText10,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "비율5",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t11,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText11,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "과목6",
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      controller: _t12,
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textAlign: TextAlign.center,
                                      focusNode: _nodeText12,
                                      maxLength: 3,
                                      decoration: InputDecoration(
                                        hintText: "비율6",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      color: Color.fromRGBO(255, 255, 255, 50.0),
                      onPressed: () => FocusScope.of(context).requestFocus(FocusNode()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  '종합 점수',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      strTotal,
                                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    '점',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        color: Color.fromRGBO(255, 255, 255, 50.0)
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        '계산!',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      onPressed: calculate,
                      color: Colors.green[500]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void calculate() {
    double calculated = 0;
    double dummyPercent = 0;
    List<double> scoreboard = [];
    List<double> percents = [];

    if (_t1.text != '') {
      scoreboard.add(double.parse(_t1.text));
    }
    if (_t2.text != '') {
      percents.add(double.parse(_t2.text));
    }
    if (_t3.text != '') {
      scoreboard.add(double.parse(_t3.text));
    }
    if (_t4.text != '') {
      percents.add(double.parse(_t4.text));
    }
    if (_t5.text != '') {
      scoreboard.add(double.parse(_t5.text));
    }
    if (_t6.text != '') {
      percents.add(double.parse(_t6.text));
    }
    if (_t7.text != '') {
      scoreboard.add(double.parse(_t7.text));
    }
    if (_t8.text != '') {
      percents.add(double.parse(_t8.text));
    }
    if (_t9.text != '') {
      scoreboard.add(double.parse(_t9.text));
    }
    if (_t10.text != '') {
      percents.add(double.parse(_t10.text));
    }

    print(scoreboard);
    print(percents);

    for (int i = 0; i < scoreboard.length; i++) {
      dummyPercent = percents[i] / 100;
      print(dummyPercent);
      print(scoreboard[i]);
      calculated = scoreboard[i] * dummyPercent + calculated;
      print(calculated);
    }

    setState(() {
      strTotal = calculated.toStringAsFixed(2);
    });
    FocusScope.of(context).requestFocus(FocusNode());
  }
}