import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    setState(() {
                      email = text;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                    errorText: email.isEmpty || email.contains("@")
                        ? null
                        : "Insira um email válido",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    setState(() {
                      password = text;
                    });
                  },
                  decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(),
                    errorText: password.isEmpty || password.length >= 5
                        ? null
                        : "A senha deve ter pelo menos 5 caracteres",
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (email == "admin@email.com" && password == "12345") {
                      print("correto");
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print("Login inválido");
                    }
                  },
                  child: Text("Entrar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
