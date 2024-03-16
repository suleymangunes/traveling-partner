import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/auth/register/view/register_view.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RegisterView();
  }
}
