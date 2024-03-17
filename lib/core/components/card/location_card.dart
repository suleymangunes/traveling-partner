import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_common_keys.dart';
import 'package:traveling_partner/core/init/localization/locale_keys.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key, required this.location});
  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.cardHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: context.cardBorderRadius,
        ),
        elevation: context.cardShadow,
        surfaceTintColor: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        margin: context.cardMargin,
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              SizedBox(
                height: context.imageHeightInCard,
                width: context.width,
                child: Image.network(
                  location.image ?? LocaleCommonKeys.untitledImage,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: context.cardContentPadding,
                child: Column(
                  children: [
                    Text(
                      location.name ?? LocaleKeys.notFound,
                      style: context.spacingBoldTitleLarge,
                    ),
                    context.tinySSizedBox,
                    Text(
                      location.definition ?? LocaleKeys.notFound,
                      style: context.titleSmall,
                    ),
                    context.tinySizedBox,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(location.city ?? LocaleKeys.notFound,
                            style: context.bodyLarge),
                        Text(", ", style: context.bodyLarge),
                        Text(location.country ?? LocaleKeys.notFound,
                            style: context.bodyLarge),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
