import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
            ),
            TextFormField(
              controller: _passwordController,
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  print(_emailController.text);
                  print(_passwordController.text);
                  print("basladi");
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: "email@gmail.com", password: "password");
                  print("giri yapildi");
                  await FirebaseAuth.instance.signOut();
                  print("cikis yapildi");
                }
              },
              child: const Text("Login"),
            ),
            const Divider(),
            ElevatedButton(
                onPressed: () {}, child: const Text("sign in with google")),
            TextButton(
                onPressed: () {
                  AppRouterObject.appRouter.push(const RegisterRoute());
                },
                child: const Text("register"))
          ],
        ),
      ),
    );
  }
}
