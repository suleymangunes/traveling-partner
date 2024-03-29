import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traveling_partner/core/constants/svg/svg_enum.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';

/// A widget that displays a login image.
class LoginImage extends StatelessWidget {
  /// Constructs a [LoginImage] widget.
  const LoginImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.svgBigHeight,
      child: SvgPicture.asset(
        SvgEnum.traveling.path,
      ),
    );
  }
}
