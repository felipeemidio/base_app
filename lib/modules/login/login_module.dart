import 'package:base_app/core/app_routes.dart';
import 'package:base_app/modules/login/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(AppRoutes.loginSuffix, child: (_) => const LoginPage());
  }
}
