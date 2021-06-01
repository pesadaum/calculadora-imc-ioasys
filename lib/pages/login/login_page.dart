import 'package:calculadora_imc_ioasys/core/app_colors.dart';
import 'package:calculadora_imc_ioasys/pages/login/components/input_login_widget.dart';
import 'package:calculadora_imc_ioasys/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 76, 0, 129),
                child: Image.asset('assets/logo_ioasys.png')),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Seja bem Vindo!',
                          style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontSize: 31,
                          ),
                        ),
                        const Text(
                          'Calculadora IMC',
                          style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 43.0,
                  ),
                  InputLogin(
                    hintText: 'Usuário',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InputLogin(
                    hintText: 'Senha',
                    isObscureText: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomTextButton(
                    color: AppColors.loginButtonColor,
                    text: 'ENTRAR',
                    onPress: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
