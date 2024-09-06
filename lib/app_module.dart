import 'package:base_app/core/app_routes.dart';
import 'package:base_app/modules/home/home_module.dart';
import 'package:base_app/modules/initial/initial_module.dart';
import 'package:base_app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(AppRoutes.initialModule, module: InitialModule());
    r.module(AppRoutes.loginModule, module: LoginModule());
    r.module(AppRoutes.homeModule, module: HomeModule());
  }
}
