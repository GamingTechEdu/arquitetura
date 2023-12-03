import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final bool obscureText;
  final Widget? error;

  const CustomTextFieldWidget({
    super.key,
    this.obscureText = false,
    required this.onChanged,
    required this.label,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        error: error,
        label: Text(label),
      ),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
