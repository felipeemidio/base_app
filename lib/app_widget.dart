import 'package:base_app/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
    Modular.setInitialRoute(AppRoutes.splash);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, _) {
        return MaterialApp.router(
          theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.blue),
          routerConfig: Modular.routerConfig,
        );
      },
    );
  }
}
