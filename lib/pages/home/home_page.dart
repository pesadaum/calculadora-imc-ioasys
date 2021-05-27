import 'package:calculadora_imc_ioasys/core/core.dart';
import 'package:calculadora_imc_ioasys/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: Image.asset('assets/logo_home_1.png'),
        title: const Text('Calculadora IMC'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.sync))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 36.0,
              bottom: 49.0,
            ),
            child: Image.asset('assets/img_pessoa.png'),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 46.5,
              right: 28.5,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Peso (kg)',
                    ),
                  ),
                  const SizedBox(
                    height: 33.5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Altura (cm)',
                    ),
                  ),
                  const SizedBox(
                    height: 33.5,
                  ),
                  CustomTextButton(
                    text: 'Calcular',
                    color: AppColors.primaryColor,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
