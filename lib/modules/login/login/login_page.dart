import 'package:base_app/core/app_routes.dart';
import 'package:base_app/core/app_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _loginFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      Modular.to.navigate(AppRoutes.home);
    }
  }

  @override
  void dispose() {
    _loginFieldController.dispose();
    _passwordFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 100.h),
                    FlutterLogo(size: 100.r),
                    SizedBox(height: 32.h),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: _loginFieldController,
                            decoration: const InputDecoration(
                              label: Text('Login'),
                            ),
                            validator: AppValidators.required(),
                          ),
                          SizedBox(height: 16.h),
                          TextFormField(
                            controller: _passwordFieldController,
                            decoration: const InputDecoration(
                              label: Text('Password'),
                            ),
                            validator: AppValidators.required(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
            FilledButton(
              onPressed: _onSubmit,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
