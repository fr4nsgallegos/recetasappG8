import 'package:flutter/material.dart';

class TextFormFieldExamplePage extends StatelessWidget {
  Color bgColor;
  TextFormFieldExamplePage({required this.bgColor});

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController titleController2 = new TextEditingController();
  String? _errorTitleText;

  void _validateTitle(String? value) {
    if (value == null || value.isEmpty) {
      _errorTitleText = "El título no debe estar vacio";
    } else if (isValidTitleRegex(value) == false) {
      _errorTitleText = "Se excedio el tamaño del título";
    } else {
      _errorTitleText = null;
    }
  }

  bool isValidTitleRegex(String title) {
    return RegExp(r'^.{1,10}$').hasMatch(title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   title: Text("Text Form Field Example"),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Ingresa el correo",
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none,
                        ),
                        // errorText: "errrrorrrr",
                      ),
                      style: TextStyle(fontSize: 20),
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Por favor, ingresa algun texto";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: titleController2,
                      validator: (String? value) {
                        return _errorTitleText;

                        // if (value == null || value.isEmpty) {
                        //   return "Por favor, ingresa algun texto";
                        // } else if (value.length == 2) {
                        //   return "No puedes porque el tamaño es 2";
                        // }
                        // return null;
                      },
                      onChanged: (String mandarina) {},
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // isValidTitle("");
                        _validateTitle(titleController2.text);
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Procesando información"),
                              backgroundColor: Colors.green,
                            ),
                          );
                        }
                        //  else {
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(
                        //       content: Text("Llena el título"),
                        //       backgroundColor: Colors.red,
                        //     ),
                        //   );
                        // }
                        ;
                      },
                      child: Text("Agregar"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
