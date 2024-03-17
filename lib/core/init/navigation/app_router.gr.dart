// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:traveling_partner/view/auth/login/view/login_page.dart' as _i4;
import 'package:traveling_partner/view/auth/register/view/register_page.dart'
    as _i5;
import 'package:traveling_partner/view/pages/attendees/view/attendees_page.dart'
    as _i1;
import 'package:traveling_partner/view/pages/destination/view/destination_page.dart'
    as _i2;
import 'package:traveling_partner/view/pages/home/model/location_model.dart'
    as _i8;
import 'package:traveling_partner/view/pages/home/view/home_page.dart' as _i3;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AttendeesRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AttendeesPage(),
      );
    },
    DestinationRoute.name: (routeData) {
      final args = routeData.argsAs<DestinationRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DestinationPage(
          key: args.key,
          location: args.location,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AttendeesPage]
class AttendeesRoute extends _i6.PageRouteInfo<void> {
  const AttendeesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AttendeesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AttendeesRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DestinationPage]
class DestinationRoute extends _i6.PageRouteInfo<DestinationRouteArgs> {
  DestinationRoute({
    _i7.Key? key,
    required _i8.LocationModel location,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DestinationRoute.name,
          args: DestinationRouteArgs(
            key: key,
            location: location,
          ),
          initialChildren: children,
        );

  static const String name = 'DestinationRoute';

  static const _i6.PageInfo<DestinationRouteArgs> page =
      _i6.PageInfo<DestinationRouteArgs>(name);
}

class DestinationRouteArgs {
  const DestinationRouteArgs({
    this.key,
    required this.location,
  });

  final _i7.Key? key;

  final _i8.LocationModel location;

  @override
  String toString() {
    return 'DestinationRouteArgs{key: $key, location: $location}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
