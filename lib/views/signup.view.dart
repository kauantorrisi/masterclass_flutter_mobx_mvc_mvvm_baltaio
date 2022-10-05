import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  "Cadastre-se",
                  style: TextStyle(
                    color: color,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.person_rounded),
                    iconColor: Theme.of(context).primaryColor,
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Nome inválido';
                    }
                    return null;
                  },
                  onSaved: ((value) {}),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.email),
                    iconColor: Theme.of(context).primaryColor,
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'E-mail inválido';
                    }
                    return null;
                  },
                  onSaved: ((value) {}),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    iconColor: Theme.of(context).primaryColor,
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Senha inválida';
                    }
                    return null;
                  },
                  onSaved: ((value) {}),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(color),
                  ),
                  child: const Text("Cadastrar"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
