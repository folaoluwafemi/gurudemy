import 'package:flutter/cupertino.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:gurudemy/src/utils/utils_barrel.dart';

part 'app_routes.dart';

part 'nav_redirects.dart';

abstract class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter router = _router;
}

final GoRouter _router = GoRouter(
  navigatorKey: AppRouter.navigatorKey,
  routes: [],
);
