import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveling_partner/core/components/card/location_card.dart';
import 'package:traveling_partner/core/constants/animation/animation_enum.dart';
import 'package:traveling_partner/core/extension/context/context_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/navigation/app_router.gr.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/view/_product/home/page/home_error_page.dart';
import 'package:traveling_partner/view/_product/home/widget/base_home_app_bar.dart';
import 'package:traveling_partner/view/auth/login/service/login_service.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';
import 'package:traveling_partner/view/pages/home/view-model/location_state.dart';

class HomeBasePage extends StatelessWidget {
  const HomeBasePage({super.key, required this.state});
  final LocationCompletedState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
            child: Column(
          children: [
            Lottie.asset(AnimationEnum.walk.path),
            context.smallSizedBox,
            Text(
              FirebaseAuth.instance.currentUser!.displayName.toString(),
              style: context.titleLarge,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () async {
                final loginService =
                    LoginService(authInstance: FirebaseAuth.instance);
                await loginService.signOutEmail();
                await loginService.signOutGoogle();
                AppRouterObject.appRouter.pushAndPopUntil(const LoginRoute(),
                    predicate: (route) => false);
              },
              child: const Text("Çıkış Yap"),
            ),
            context.normalSizedBox,
          ],
        )),
      ),
      appBar: const BaseHomeAppBar(autoLeading: true),
      body: state.response.isNotEmpty
          ? ListView.builder(
              itemCount: state.response.length,
              itemBuilder: (BuildContext context, int index) {
                final location = state.response[index] as LocationModel;
                return LocationCard(location: location);
              },
            )
          : const HomeErrorPage(),
    );
  }
}
