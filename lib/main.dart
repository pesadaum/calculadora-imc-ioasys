import 'package:calculadora_imc_ioasys/core/core.dart';
import 'package:calculadora_imc_ioasys/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/homepage': (context) => HomePage(),
      },
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        // ignore: deprecated_member_use
        accentColor: AppColors.backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
