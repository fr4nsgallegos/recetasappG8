import 'package:flutter/material.dart';

class FormItem extends StatelessWidget {
  TextEditingController controlador;
  String hint;
  IconData icono;

  FormItem(
      {required this.controlador, required this.hint, required this.icono});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextField(
        // obscureText: true,
        // keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.orange.shade700,
        controller: controlador,
        // onChanged: (value) {
        //   print(value);
        // },
        decoration: InputDecoration(
          prefixIcon: Icon(icono),
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Color(0xff626B92),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
