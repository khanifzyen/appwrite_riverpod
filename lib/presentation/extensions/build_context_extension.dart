import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  void showInfoSnackBar(String message) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.blue,
        ),
      );

  void showErrorSnackBar(String message) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.red,
        ),
      );
}
