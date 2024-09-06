import 'package:base_app/core/app_routes.dart';
import 'package:base_app/modules/initial/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(AppRoutes.splash, child: (_) => const SplashPage());
  }
}
