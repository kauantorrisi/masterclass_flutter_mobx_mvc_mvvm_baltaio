import 'package:flutter/material.dart';
import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/controllers/signup.controller.dart';
import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/view-models/signup.viewmodel.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();

  final _controller = SignupController();

  final SignupViewModel model = SignupViewModel();

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
                  onSaved: ((value) {
                    model.name = value!;
                  }),
                ),
                const SizedBox(height: 20),
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
                  onSaved: ((value) {
                    model.email = value!;
                  }),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
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
                  onSaved: ((value) {
                    model.password = value!;
                  }),
                ),
                const SizedBox(height: 20),
                model.busy
                    ? const Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.black,
                        ),
                      )
                    : ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(color),
                        ),
                        child: const Text("Cadastrar"),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                          }

                          setState(() {
                            _controller.create(model).then((data) {
                              // TODO:
                              setState(() {});
                            });
                          });
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
