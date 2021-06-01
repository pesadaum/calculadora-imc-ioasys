import 'package:calculadora_imc_ioasys/core/core.dart';
import 'package:calculadora_imc_ioasys/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  String _result = '';

  void calcImc() {
    double weight = double.parse(_weightController.text);
    double height = double.parse(_heightController.text) / 100;

    final double imc = weight / (height * height);

    if (imc < 18.6) {
      _result = "Abaixo do Peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      _result = "Peso Ideal (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 24.9 && imc < 29.9) {
      _result = "Levemente acima do Peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 29.9 && imc < 34.9) {
      _result = "Obesidade Grau I (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 34.9 && imc < 39.9) {
      _result = "Obesidade Grau II (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 40) {
      _result = "Obesidade Grau III (${imc.toStringAsPrecision(4)})";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: Image.asset('assets/logo_home_1.png'),
        title: const Text('Calculadora IMC'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _result = '';
                _heightController.text = '';
                _weightController.text = '';
              });
            },
            icon: const Icon(Icons.sync),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Peso (kg)',
                    ),
                  ),
                  const SizedBox(
                    height: 33.5,
                  ),
                  TextField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
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
                    onPress: () {
                      setState(() {
                        if (_weightController.text.isNotEmpty &&
                            _heightController.text.isNotEmpty) {
                          calcImc();
                        } else {
                          _result = 'Nenhum valor inserido';
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    height: 33.0,
                  ),
                  Center(
                    child: Text(
                      _result,
                      style: const TextStyle(
                        color: AppColors.resultTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
