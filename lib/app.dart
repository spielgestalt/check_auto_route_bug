import 'package:auto_route/auto_route.dart';
import 'package:check_auto_route_bug/app_router.dart';
import 'package:flutter/material.dart';

enum LoginState { authorized, unauthorized }

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  LoginState _loginState = LoginState.unauthorized;

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser:
            _appRouter.defaultRouteParser(includePrefixMatches: true),
        routerDelegate:
            AutoRouterDelegate.declarative(_appRouter, routes: (context) {
          switch (_loginState) {
            case LoginState.authorized:
              return const [EmptyMainRouter()];
            case LoginState.unauthorized:
              // If you return the EmptyMainRouter immediately, the stack gets two MainRoutes
              //return const [EmptyMainRouter()];
              return [
                AuthRoute(onLogin: () {
                  setState(() {
                    _loginState = LoginState.authorized;
                  });
                })
              ];
          }
        }));
  }
}
