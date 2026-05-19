import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('rafaela'),
          backgroundColor: const Color.fromARGB(255, 18, 116, 197),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
      
              // Pontos positivos
              Text(
                'Pontos positivos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: const Color.fromARGB(255, 0, 243, 8),
                child: Center(
                  child: Text(
                    'amo aprender e estudar, descobri novas coisas.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
      
              // pontos negativos
              Text(
                'pontos negativos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: const Color.fromARGB(255, 182, 38, 28),
                child: Center(
                  child: Text(
                    'Odeio nao entender algo,ou nao entender.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
      
              // Objetivos
              Text(
                'objetivos',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: const Color.fromARGB(255, 221, 27, 255),
                child: Center(
                  child: Text(
                    ' terminar o cruso e o EM,e passar no concurso da policia federal.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}