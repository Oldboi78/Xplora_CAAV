import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/src/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(color: Colors.pinkAccent),
            child: Image.asset(
              'assets/logotipo.png',
              width: 100,
            ),
          ),
          Container(
            // ignore: sort_child_properties_last
            child: ElevatedButton(
              key: key,
              // ignore: prefer_const_constructors
              child: const Icon(Icons.account_tree),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const RegisterPage()));
              },
            ),
            height: 200,
            decoration: const BoxDecoration(color: Colors.blueAccent),
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(color: Colors.pink),
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(color: Colors.pink),
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(color: Colors.pink),
          ),
        ]),
      ),
    );
  }
}
