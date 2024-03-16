import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/view/auth/register/service/register_service.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordAgainController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordAgainController = TextEditingController();
    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordAgainController.dispose();
    super.dispose();
  }

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
            ),
            TextFormField(
              controller: _emailController,
            ),
            TextFormField(
              controller: _passwordController,
            ),
            TextFormField(
              controller: _passwordAgainController,
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  print(_nameController.text);
                  print(_emailController.text);
                  print(_passwordController.text);
                  print(_passwordAgainController.text);

                  // await AuthService().createPerson("name", "email", "password");
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: "email7@gmail.com", password: "password");
                  await FirebaseFirestore.instance
                      .collection("Users")
                      .doc("email")
                      .set({
                    "name": "suleyman",
                    "email": "asdf",
                  });
                }
              },
              child: const Text("Register"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {
                AppRouterObject.appRouter.maybePop();
              },
              child: const Text("you have an account login"),
            ),
          ],
        ),
      ),
    );
  }
}
