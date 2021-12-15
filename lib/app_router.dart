// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:check_auto_route_bug/auth_page.dart';
import 'package:check_auto_route_bug/main_page.dart';
import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        page: EmptyRouterPage,
        path: '/',
        name: 'EmptyMainRouter',
        children: [
          AutoRoute(page: MainPage, path: ''),
        ]),
    AutoRoute(page: AuthPage, path: '/auth'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
