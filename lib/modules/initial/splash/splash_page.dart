import 'dart:async';
import 'dart:math' as math;

import 'package:base_app/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const _kSplashWaitTimeInSeconds = 5;
  bool _visible = false;
  Timer? _timer;

  Future<void> _loadData() async {
    final initialTime = DateTime.now();

    // ...load some data

    final endTime = DateTime.now();
    final timeSpent = endTime.difference(initialTime).inSeconds;
    final timeLeft = math.max(0, _kSplashWaitTimeInSeconds - timeSpent);
    _timer = Timer(
      Duration(seconds: timeLeft),
      () => Modular.to.navigate(AppRoutes.login),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () => setState(() {
        _visible = true;
      }),
    );

    _loadData();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: SizedBox(
            width: 200.h,
            height: 200.w,
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
