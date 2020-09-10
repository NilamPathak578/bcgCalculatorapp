import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int firstnum;
  int secondnum;
  String result;
  String texttodisplay = "";
  String operationtoperform;

  void btnclicked(String btntext) {
    if (btntext == "C") {
      firstnum = 0;
      secondnum = 0;
      texttodisplay = "";
      result = "";
    } else if (btntext == "⌫") {
      result = result.substring(0, texttodisplay.length - 1);
    } else if (btntext == "%") {
      firstnum = int.parse(texttodisplay);
      result = (firstnum / 100).toString();
    } else if (btntext == "+" ||
        btntext == "-" ||
        btntext == "*" ||
        btntext == "/") {
      firstnum = int.parse(texttodisplay);
      secondnum = int.parse(texttodisplay);
      texttodisplay = btntext;
      result = "";
      operationtoperform = btntext;
    } else if (btntext == "=") {
      //firstnum = int.parse(texttodisplay);
      secondnum = int.parse(texttodisplay);
      if (operationtoperform == "+") {
        result = (firstnum + secondnum).toString();
      }
      if (operationtoperform == "-") {
        result = (firstnum - secondnum).toString();
      }
      if (operationtoperform == "*") {
        result = (firstnum * secondnum).toString();
      }
      if (operationtoperform == "/") {
        result = (firstnum / secondnum).toString();
      }
    } else {
      result = int.parse(texttodisplay + btntext).toString();
    }

    setState(() {
      texttodisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator_App"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50.0,
              width: double.infinity,
              child: Card(
                child: Center(
                  child: Text(
                    "$firstnum",
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              child: Card(
                child: Center(
                  child: Text("$secondnum"),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 15.0),
                  child: Text(
                    "$texttodisplay",
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('C'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('⌫'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('%'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('/'),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('7'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('8'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('9'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('*'),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('4'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('5'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('6'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('-'),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('1'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('2'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('3'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('+'),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('.'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('0'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('00'),
                    SizedBox(
                      width: 5.0,
                    ),
                    customButton('='),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customButton(String btnval) {
    return Expanded(
      child: OutlineButton(
        onPressed: () => btnclicked(btnval),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '$btnval',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
