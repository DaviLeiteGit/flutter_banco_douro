import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/banner.png"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/images/stars.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 128),
                Image.asset("assets/images/logo.png", width: 120),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 32),
                    const Text(
                      "Sistema de Gestão de Contas",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(label: Text("E-mail")),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(label: Text("Senha")),
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "home");
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                         AppColors.orange,
                        ),
                      ),
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
