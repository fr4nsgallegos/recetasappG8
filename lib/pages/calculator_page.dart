import 'package:flutter/material.dart';
import 'package:recetas_app_g8/constants/constants.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        // appBar: AppBar(
        //   title: Text("Calculator"),
        // ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Color(0xff32383D),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                BuildBoton("7", bgNumButtonColor, numberColor),
                BuildBoton("8", bgNumButtonColor, numberColor),
                BuildBoton("9", bgNumButtonColor, numberColor),
                BuildBoton("/", bgOprButtonColor, oprColor),
              ],
            ),
            Row(
              children: [
                BuildBoton("4", bgNumButtonColor, numberColor),
                BuildBoton("5", bgNumButtonColor, numberColor),
                BuildBoton("6", bgNumButtonColor, numberColor),
                BuildBoton("*", bgOprButtonColor, oprColor),
              ],
            ),
            Row(
              children: [
                BuildBoton("1", bgNumButtonColor, numberColor),
                BuildBoton("2", bgNumButtonColor, numberColor),
                BuildBoton("3", bgNumButtonColor, numberColor),
                BuildBoton("-", bgOprButtonColor, oprColor),
              ],
            ),
            Row(
              children: [
                BuildBoton(".", bgNumButtonColor, numberColor),
                BuildBoton("0", bgNumButtonColor, numberColor),
                BuildBoton("AC", bgACColor, oprColor),
                BuildBoton("=", bgOprButtonColor, oprColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BuildBoton extends StatelessWidget {
  String texto;
  Color backgroundColor;
  Color textColor;
  BuildBoton(
    this.texto,
    this.backgroundColor,
    this.textColor,
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            // padding: EdgeInsets.symmetric(horizontal: 30),
            shape: CircleBorder(),
            // backgroundColor: Color(0xff282A2E),

            backgroundColor: backgroundColor),
        child: Container(
          height: MediaQuery.of(context).size.height / 8,
          width: MediaQuery.of(context).size.width / 8,
          padding: EdgeInsets.all(8),
          child: FittedBox(
            child: Text(
              texto,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
