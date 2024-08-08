import 'package:flutter/material.dart';

import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Email'),
                        hintText: 'veuillez entrer votre email',
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.indigo,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: 'veuillez entrer un mot de passe',
                        suffixIcon: Icon(
                          Icons.lock,
                          color: Colors.indigo,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    child: Text('Sign Up'),
                  )
                ],
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
