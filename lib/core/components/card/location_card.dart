import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/localization/locale_common_keys.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

/// **LocationCard Widget**
///
/// A widget representing a card displaying information about a location.
/// This card includes an image, name, definition, city, and country of the
/// location.
///
/// Requires the following dependencies:
/// - easy_localization:s
///
/// Example Usage:
/// ```dart
/// LocationCard(location: locationData)
/// ```
class LocationCard extends StatelessWidget {
  /// Constructor for LocationCard.
  ///
  /// [location] specifies the LocationModel containing location information.
  /// [key] is an optional parameter for widget identification.
  const LocationCard({required this.location, super.key});

  /// The LocationModel containing location information.
  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Adjusting card height for better appearance
      height: context.cardHeight * 1.03,
      child: Card(
        shape: RoundedRectangleBorder(
          // Applying border radius to the card
          borderRadius: context.cardBorderRadius,
        ),
        elevation: context.cardShadow, // Applying shadow to the card
        surfaceTintColor: Colors.transparent, // Making card surface transparen
        clipBehavior: Clip.antiAlias, // Applying anti-aliasing to the card clip
        margin: context.cardMargin, // Setting margin for the card
        child: InkWell(
          onTap: () {
            // Navigating to destination route on tap
            AppRouterObject.appRouter
                .push(DestinationRoute(location: location));
          },
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
                      // ignore: lines_longer_than_80_chars
                      // Displaying location name with bold and large spacing style
                      location.name ?? LocaleKeys.alertNotFound.tr(),
                      style: context.spacingBoldTitleLarge,
                    ),
                    context.tinySSizedBox,
                    Text(
                      // Displaying location definition with small title style
                      location.definition ?? LocaleKeys.alertNotFound.tr(),
                      style: context.titleSmall,
                    ),
                    context.tinySizedBox,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          // Displaying location city with large body style
                          location.city ?? LocaleKeys.alertNotFound.tr(),
                          style: context.bodyLarge,
                        ),
                        Text(', ', style: context.bodyLarge),
                        Text(
                          // Displaying location country with large body style
                          location.country ?? LocaleKeys.alertNotFound.tr(),
                          style: context.bodyLarge,
                        ),
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
