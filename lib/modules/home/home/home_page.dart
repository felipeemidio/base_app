import 'package:base_app/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Home Page'),
            SizedBox(height: 32.h),
            FilledButton(
              onPressed: () {
                Modular.to.navigate(AppRoutes.login);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
