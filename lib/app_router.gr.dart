// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    EmptyMainRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    AuthRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: AuthPage(key: args.key, onLogin: args.onLogin));
    },
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(EmptyMainRouter.name, path: '/', children: [
          RouteConfig(MainRoute.name, path: '', parent: EmptyMainRouter.name)
        ]),
        RouteConfig(AuthRoute.name, path: '/auth')
      ];
}

/// generated route for
/// [EmptyRouterPage]
class EmptyMainRouter extends PageRouteInfo<void> {
  const EmptyMainRouter({List<PageRouteInfo>? children})
      : super(EmptyMainRouter.name, path: '/', initialChildren: children);

  static const String name = 'EmptyMainRouter';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({Key? key, required dynamic Function() onLogin})
      : super(AuthRoute.name,
            path: '/auth', args: AuthRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, required this.onLogin});

  final Key? key;

  final dynamic Function() onLogin;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '');

  static const String name = 'MainRoute';
}
