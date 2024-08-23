import '../../utils/imports/all_imports.dart';

class AppRoute {
  static appRoute() =>
      [GetPage(name: RouteName.splashView, page: () => const SplashView())];
}
