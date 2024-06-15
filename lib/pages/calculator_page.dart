import 'package:flutter/material.dart';
import 'package:recetas_app_g8/constants/constants.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String input = '0';

  void buttonPressed(String textButton) {
    input = textButton;
    setState(() {});
  }

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
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Color(0xff32383D),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                input,
                style: TextStyle(
                  color: numberColor,
                  fontSize: 65,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                BuildBoton("7", bgNumButtonColor, numberColor,
                    () => buttonPressed("7")),
                BuildBoton("8", bgNumButtonColor, numberColor,
                    () => buttonPressed("8")),
                BuildBoton("9", bgNumButtonColor, numberColor,
                    () => buttonPressed("9")),
                BuildBoton(
                    "/", bgOprButtonColor, oprColor, () => buttonPressed("/")),
              ],
            ),
            Row(
              children: [
                BuildBoton("4", bgNumButtonColor, numberColor,
                    () => buttonPressed("4")),
                BuildBoton("5", bgNumButtonColor, numberColor,
                    () => buttonPressed("5")),
                BuildBoton("6", bgNumButtonColor, numberColor,
                    () => buttonPressed("6")),
                BuildBoton(
                    "*", bgOprButtonColor, oprColor, () => buttonPressed("*")),
              ],
            ),
            Row(
              children: [
                BuildBoton("1", bgNumButtonColor, numberColor,
                    () => buttonPressed("1")),
                BuildBoton("2", bgNumButtonColor, numberColor,
                    () => buttonPressed("2")),
                BuildBoton("3", bgNumButtonColor, numberColor,
                    () => buttonPressed("3")),
                BuildBoton(
                    "-", bgOprButtonColor, oprColor, () => buttonPressed("-")),
              ],
            ),
            Row(
              children: [
                BuildBoton(".", bgNumButtonColor, numberColor,
                    () => buttonPressed(".")),
                BuildBoton("0", bgNumButtonColor, numberColor,
                    () => buttonPressed("0")),
                BuildBoton(
                    "AC", bgACColor, oprColor, () => buttonPressed("AC")),
                BuildBoton(
                    "=", bgOprButtonColor, oprColor, () => buttonPressed("=")),
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
  VoidCallback funcion;
  BuildBoton(
    this.texto,
    this.backgroundColor,
    this.textColor,
    this.funcion,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: funcion,
        style: OutlinedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: backgroundColor,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 8,
          width: MediaQuery.of(context).size.width / 8,
          padding: texto.length == 2 ? EdgeInsets.all(2) : EdgeInsets.all(14),
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
