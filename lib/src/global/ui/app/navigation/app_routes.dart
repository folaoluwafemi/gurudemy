part of 'app_router.dart';

enum AppRoute {
  splash('/'),
  onboarding('/onboarding'),
  ;

  final String path;

  const AppRoute(this.path);

  String get strippedPath => path.replaceFirst('/', '');

  ///adds each route to the full path in order of entry
  static String buildPath(List<AppRoute> routes) {
    assert(routes.isNotEmpty, 'route path must not be empty');
    String path = '';
    if (routes.first.path.chars.first != '/') path += '/';
    for (int i = 0; i < (routes.length - 1); i++) {
      path += '${routes[i].path}/';
    }
    path += routes.last.path;
    return path;
  }
}
