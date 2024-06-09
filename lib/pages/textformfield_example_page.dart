import 'package:flutter/material.dart';

class TextFormFieldExamplePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = new TextEditingController();
  TextEditingController titleController2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field Example"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Por favor, ingresa algun texto";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: titleController2,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Por favor, ingresa algun texto";
                  } else if (value.length == 2) {
                    return "No puedes porque el tamaño es 2";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () {
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
    );
  }
}
