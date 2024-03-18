import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';

class DrawerText extends StatelessWidget {
  const DrawerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      FirebaseAuth.instance.currentUser!.displayName.toString(),
      style: context.titleLarge,
    );
  }
}
