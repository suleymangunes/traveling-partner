import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/core/components/exception/custom_exception.dart';
import 'package:traveling_partner/core/constants/enum/url_launcher_enum.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MailSenderService {
  factory MailSenderService(String url) {
    _instance ??= MailSenderService._internal(url);
    return _instance!;
  }
  MailSenderService._internal(this.url);

  static MailSenderService? _instance;

  final String url;

  static Future<bool> getContact(
      {required Users user, required LocationModel location}) async {
    try {
      final name = FirebaseAuth.instance.currentUser?.displayName;
      final subject = LocaleKeys.mailTravelPartnerRequest.tr();
      final body =
          "${LocaleKeys.mailHiIam.tr()} $name. ${user.startingDate} - ${user.endingDate} ${LocaleKeys.mailBetwwen.tr()} ${location.country}, ${location.city}, ${location.name} ${LocaleKeys.mailMakeTravel.tr()} ${LocaleKeys.mailTravelWithMe.tr()}";

      final params = Uri(
        scheme: UrlLauncherEnum.mailto.name,
        path: user.email,
        query:
            '${UrlLauncherEnum.subject.name}=$subject&${UrlLauncherEnum.body.name}=$body',
      );

      if (await canLaunchUrl(params)) {
        if (await launchUrl(params)) {
          await launchUrl(params);
        } else {
          throw CustomException();
        }
      } else {
        throw CustomException();
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}
