import 'package:calculadora_imc_ioasys/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputLogin extends StatelessWidget {
  InputLogin({required this.hintText, this.isObscureText = false});

  final String hintText;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(24.0, 14, 0, 11),
        hintText: hintText,
        filled: true,
        fillColor: AppColors.backgroundColor,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        hintStyle: const TextStyle(
          color: AppColors.placeholderLoginColor,
        ),
      ),
    );
  }
}
