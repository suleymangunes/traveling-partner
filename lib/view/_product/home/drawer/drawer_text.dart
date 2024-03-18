import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';

/// A widget for displaying the current user's display name in the drawer.
class DrawerText extends StatelessWidget {
  /// Constructs a [DrawerText] widget.
  const DrawerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      FirebaseAuth.instance.currentUser!.displayName.toString(),
      style: context.titleLarge,
    );
  }
}
