import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traveling_partner/core/constants/svg/svg_enum.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.listTileBigImageSize,
      width: context.listTileBigImageSize,
      child: SvgPicture.asset(SvgEnum.user.path),
    );
  }
}
