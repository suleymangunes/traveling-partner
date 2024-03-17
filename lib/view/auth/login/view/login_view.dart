import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:traveling_partner/core/constants/svg/svg_enum.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/extension/validator/email_validator.dart';
import 'package:traveling_partner/core/extension/validator/string_validator.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
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

  void changePasswordObscure() {
    setState(() {
      passwordObscure = !passwordObscure;
    });
  }

  bool passwordObscure = false;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(context.width * 0.05),
          child: Column(
            children: [
              SizedBox(height: context.height * 0.1),
              SizedBox(
                  height: context.height * 0.15,
                  child: SvgPicture.asset(SvgEnum.traveling.path)),
              SizedBox(height: context.height * 0.1),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(),
                  hintText: "Eposta",
                  prefixIcon: const Icon(
                    Icons.mail_outline_rounded,
                    size: 25,
                  ),
                  errorStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: context.colorScheme.error,
                      ),
                ),
                style: context.titleMedium,
                validator: (value) => (value != null && value.isValidEmail())
                    ? null
                    : LocaleKeys.validEmail,
              ),
              SizedBox(height: context.height * 0.015),
              TextFormField(
                controller: _passwordController,
                obscureText: passwordObscure,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(),
                  hintText: "Şifre",
                  prefixIcon: const Icon(
                    Icons.lock_outline_rounded,
                    size: 25,
                  ),
                  errorStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: context.colorScheme.error,
                      ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 25,
                    ),
                    onPressed: changePasswordObscure,
                  ),
                ),
                style: context.titleMedium,
                validator: (value) =>
                    value.validateEmpty(LocaleKeys.validPassword),
              ),
              SizedBox(height: context.height * 0.02),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: context.colorScheme.primary,
                    padding: const EdgeInsets.all(15),
                    minimumSize: Size(
                        context.width, Theme.of(context).buttonTheme.height)),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    print("basildi");
                    // print(_emailController.text);
                    // print(_passwordController.text);
                    // print("basladi");
                    // await FirebaseAuth.instance.signInWithEmailAndPassword(
                    //     email: "email@gmail.com", password: "password");
                    // print("giri yapildi");
                    // await FirebaseAuth.instance.signOut();
                    // print("cikis yapildi");
                  }
                },
                child: Text(
                  "Giriş Yap",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: context.colorScheme.background,
                      letterSpacing: 1.5),
                ),
              ),
              SizedBox(height: context.height * 0.02),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Ya da",
                      style: context.bodyLarge,
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: context.height * 0.02),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.transparent,
                  elevation: 5,
                  padding: const EdgeInsets.all(15),
                  minimumSize:
                      Size(context.width, Theme.of(context).buttonTheme.height),
                ),
                onPressed: () async {
                  await GoogleSignIn().signOut();
                  signInWithGoogle();
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      SvgEnum.gooogle.path,
                      height: Theme.of(context).buttonTheme.height,
                    ),
                    const Spacer(),
                    Text(
                      "Google İle Giriş Yap",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            letterSpacing: 1.5,
                          ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  AppRouterObject.appRouter.push(const RegisterRoute());
                },
                child: RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                      style: context.bodyLarge,
                      text: "Hesabın yok mu? ",
                    ),
                    TextSpan(
                      style: context.bodyLargeBold,
                      text: "Hemen kaydol",
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    final UserCredential userCredential =
        await firebaseAuth.signInWithCredential(credential);
    log(userCredential.user!.email.toString());
    log(userCredential.user!.displayName.toString());
    FirebaseFirestore.instance.collection("Users").doc("email3").set({
      "email": "email3",
      "name": "isim vs3",
    });
    return userCredential.user;
  }
}
