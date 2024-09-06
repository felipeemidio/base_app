import 'package:flutter/material.dart';

abstract class AppValidators {
  const AppValidators._();

  static FormFieldValidator<String> required({String? message}) {
    return (value) {
      if (value == null || value.isEmpty) return message ?? 'Required field';
      return null;
    };
  }
}
