import 'package:base_app/core/app_routes.dart';
import 'package:base_app/modules/home/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(AppRoutes.homeSuffix, child: (_) => const HomePage());
  }
}
