import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveling_partner/core/constants/theme/theme_constants.dart';
import 'package:traveling_partner/core/extension/constant/constant_extension.dart';
import 'package:traveling_partner/core/extension/text/text_extension.dart';
import 'package:traveling_partner/core/init/cubit/radio/radio_cubit.dart';
import 'package:traveling_partner/core/init/cubit/theme/theme_cubit.dart';
import 'package:traveling_partner/core/init/navigation/app_router_object.dart';
import 'package:traveling_partner/product/init/lang/locale_keys.g.dart';

class ThemeChangeDropdown extends StatelessWidget {
  const ThemeChangeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RadioCubit(),
      child: BlocBuilder<RadioCubit, String>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _systemRadio(state, context),
              _lightRadio(state, context),
              _darkRadio(state, context),
              _actions(context, state)
            ],
          );
        },
      ),
    );
  }

  ListTile _darkRadio(String state, BuildContext context) {
    return ListTile(
      leading: Radio(
        value: ThemeConstants.darkRadio,
        groupValue: state,
        onChanged: (value) {
          context.read<RadioCubit>().changeValue(value.toString());
        },
      ),
      title: Text(
        LocaleKeys.themeDarkTheme.tr(),
        style: context.titleMedium,
      ),
    );
  }

  ListTile _lightRadio(String state, BuildContext context) {
    return ListTile(
      leading: Radio(
        value: ThemeConstants.lightRadio,
        groupValue: state,
        onChanged: (value) {
          context.read<RadioCubit>().changeValue(value.toString());
        },
      ),
      title: Text(
        LocaleKeys.themeLightTheme.tr(),
        style: context.titleMedium,
      ),
    );
  }

  ListTile _systemRadio(String state, BuildContext context) {
    return ListTile(
      leading: Radio(
        value: ThemeConstants.sysRadio,
        groupValue: state,
        onChanged: (value) {
          context.read<RadioCubit>().changeValue(value.toString());
        },
      ),
      title: Text(
        LocaleKeys.themedSystemTheme.tr(),
        style: context.titleMedium,
      ),
    );
  }

  Row _actions(BuildContext context, String state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _cancelTextButton(context),
        _okTextButton(state, context),
      ],
    );
  }

  TextButton _okTextButton(String state, BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: context.colorScheme.primaryContainer,
        padding: context.textButtonSymetricPadding,
      ),
      onPressed: () {
        switch (state) {
          case ThemeConstants.lightRadio:
            BlocProvider.of<ThemeCubit>(context).makelight();
            Navigator.pop(context);
            break;
          case ThemeConstants.darkRadio:
            BlocProvider.of<ThemeCubit>(context).makeDark();
            Navigator.pop(context);
            break;
          default:
            BlocProvider.of<ThemeCubit>(context).makeSystem();
            Navigator.pop(context);
            break;
        }
      },
      child: Text(
        LocaleKeys.buttonUpdate.tr(),
        style: context.titleLarge,
      ),
    );
  }

  TextButton _cancelTextButton(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: context.colorScheme.primaryContainer,
        padding: context.textButtonSymetricPadding,
      ),
      onPressed: () {
        AppRouterObject.appRouter.maybePop();
      },
      child: Text(
        LocaleKeys.buttonCancel.tr(),
        style: context.titleLarge,
      ),
    );
  }
}
