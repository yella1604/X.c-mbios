import 'package:flutter/material.dart';
import 'register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: SingleChildScrollView(
        child: Column(
          children: [

            // LOGO
            const SizedBox(height: 30),

            Image.asset(
              'assets/images/logo.jpeg',
              height: 100,
            ),

            const SizedBox(height: 20),

            // PESQUISA
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Pesquisar',
                    prefixIcon: Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.black,
                    ),

                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // BANDEIRAS
            Container(
              color: Colors.grey[400],
              padding: const EdgeInsets.all(10),

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [

                    flag('assets/flags/brasil.png'),
                    flag('assets/flags/japao.png'),
                    flag('assets/flags/eua.png'),
                    flag('assets/flags/australia.png'),
                    flag('assets/flags/canada.png'),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // CARDS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  // CARD 1
                  cardIntercambio(
                    'Study e Work',
                    'Ideal para estudar e trabalhar no exterior.',
                    'assets/images/student.jpeg',
                  ),

                  // CENTRO
                  Column(
                    children: const [

                      Icon(
                        Icons.flight,
                        size: 60,
                        color: Colors.black54,
                      ),

                      SizedBox(height: 10),

                      Text(
                        '30%\nOFF',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  // CARD 2
                  cardIntercambio(
                    'Universidade',
                    'Cursos universitários no exterior.',
                    'assets/images/university.jpeg',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // BARRA
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Container(
                height: 20,

                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    width: 150,

                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // IMAGENS PEQUENAS
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [

                  miniImage('assets/images/img1.jpeg'),
                  miniImage('assets/images/img2.jpeg'),
                  miniImage('assets/images/img3.jpeg'),
                  miniImage('assets/images/img4.jpeg'),
                  miniImage('assets/images/img5.jpeg'),

                ],
              ),
            ),

            const SizedBox(height: 20),

            // LOGIN
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: [

                  // CAMPOS
                  Expanded(
                    child: Column(
                      children: [

                        const Text(
                          'usuario',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 10),

                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          'senha',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 10),

                        TextField(
                          obscureText: true,

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          'Esqueceu a Senha?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 20),

                  // FOTO
                  Container(
                    width: 150,
                    height: 150,

                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),

                    child: const Icon(
                      Icons.image,
                      color: Colors.white,
                      size: 80,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // BANDEIRAS
  Widget flag(String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),

      child: Image.asset(
        image,
        width: 80,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }

  // CARD
  Widget cardIntercambio(
      String titulo,
      String descricao,
      String imagem,
      ) {

    return Container(
      width: 170,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),

      child: Column(
        children: [

          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),

            child: Image.asset(
              imagem,
              height: 170,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),

            child: Column(
              children: [

                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  descricao,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // MINI IMAGENS
  Widget miniImage(String image) {
    return Padding(
      padding: const EdgeInsets.all(8),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),

        child: Image.asset(
          image,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}