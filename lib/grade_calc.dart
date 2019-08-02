import  'package:flutter/material.dart';
import  'package:keyboard_actions/keyboard_actions.dart';


//Full screen
class GradeCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: FormKeyboardActions(
        child: Content(),
      ),
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

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.white,
      nextFocus: true,
      actions: [
        KeyboardAction(
          focusNode: _nodeText1,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText2,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText3,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText4,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText5,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText6,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText7,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText8,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText9,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText10,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText11,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
        KeyboardAction(
          focusNode: _nodeText12,
          closeWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '완료',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    FormKeyboardActions.setKeyboardActions(context, _buildConfig(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blueAccent, Colors.red]
        )
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
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
                                    hintText: "과목2"
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
                                    hintText: "과목3",
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
                                    hintText: "과목4",
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
                                    hintText: "과목5",
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
                                    hintText: "과목6",
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
                                    hintText: "과목7",
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
                                    hintText: "과목8",
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
                                    hintText: "과목9",
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
                                    hintText: "과목10",
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
                  onPressed: () {},
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
                              '종합 평균',
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
    );
  }

  void calculate() {
    int calculated = 0;
    List<int> scoreboard = [];

    if (_t1.text != '') {
      scoreboard.add(int.parse(_t1.text));
      print(scoreboard[0]);
    }
    if (_t2.text != '') {
      scoreboard.add(int.parse(_t2.text));
    }
    if (_t3.text != '') {
      scoreboard.add(int.parse(_t3.text));
    }
    if (_t4.text != '') {
      scoreboard.add(int.parse(_t4.text));
    }
    if (_t5.text != '') {
      scoreboard.add(int.parse(_t5.text));
    }
    if (_t6.text != '') {
      scoreboard.add(int.parse(_t6.text));
    }
    if (_t7.text != '') {
      scoreboard.add(int.parse(_t7.text));
    }
    if (_t8.text != '') {
      scoreboard.add(int.parse(_t8.text));
    }
    if (_t9.text != '') {
      scoreboard.add(int.parse(_t9.text));
    }
    if (_t10.text != '') {
      scoreboard.add(int.parse(_t10.text));
    }

    print(scoreboard);

    for (int i = 0; i < scoreboard.length; i++) {
      calculated = calculated + scoreboard[i];
    }
    total = calculated / scoreboard.length;
    setState(() {
      strTotal = total.toStringAsFixed(2);
    });
  }
}