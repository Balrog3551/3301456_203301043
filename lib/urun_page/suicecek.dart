import 'package:flutter/material.dart';
import '../anaekran_page/anaekran.dart';

class suicecek extends StatelessWidget {
  const suicecek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(
          "ürünler",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 87, 53, 180),
      ),
      body: ListView(
        children: [
          Container(
              height: 50,
              width: 420,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 87, 53, 180)),
              child: SingleChildScrollView(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const TextButton(
                        onPressed: null,
                        child: Text("Su & İçecek",
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              height: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'sebzemeyve');
                        },
                        child: const Text("Meyve & Sebze",
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'firindan');
                        },
                        child: const Text("Fırından",
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'temelgida');
                        },
                        child: const Text("Temel Gıda",
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'atistirmalik');
                        },
                        child: const Text("Atıştırmalık",
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'dondurma');
                        },
                        child: const Text("Dondurma",
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'suturunleri');
                        },
                        child: const Text("Süt Ürünleri",
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'kahvaltilik');
                        },
                        child: const Text("Kahvaltılık",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ]),
                scrollDirection: Axis.horizontal,
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      "Su",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 107, 107, 107)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/su1.jpeg', 24.95, "Kuzeyden",
                          "12 x 330 ml"),
                      itemekle('assets/images/su2.jpeg', 26.50, "Kuzeyden",
                          "12 x 500 ml"),
                      itemekle('assets/images/su3.jpeg', 21.95, "Kuzeyden",
                          "6 x 1 L"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/su4.jpeg', 22.95, "Kuzeyden",
                          "6 x 1.5 L"),
                      itemekle('assets/images/su5.jpeg', 17.25, "Kuzeyden",
                          "2 x 5 L"),
                      itemekle(
                          'assets/images/su6.jpeg', 2.8, "Kuzeyden", "500 ml"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/su7.jpeg', 22.95, "Kuzeyden",
                          "6 x 1.5 L"),
                      itemekle('assets/images/su8.jpeg', 17.25, "Kuzeyden",
                          "2 x 5 L"),
                      itemekle(
                          'assets/images/su9.jpeg', 2.8, "Kuzeyden", "500 ml"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/su10.jpeg', 22.95, "Kuzeyden",
                          "6 x 1.5 L"),
                      itemekle('assets/images/su11.jpeg', 17.25, "Kuzeyden",
                          "2 x 5 L"),
                      itemekle(
                          'assets/images/su12.jpeg', 2.8, "Kuzeyden", "500 ml"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      "Gazlı İçecek",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 107, 107, 107)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/icecek1.jpeg', 4.90,
                          "Pepsi Twist", "250 ml"),
                      itemekle('assets/images/icecek2.jpeg', 17.45, "Pepsi",
                          "4 x 250 ml"),
                      itemekle('assets/images/icecek3.jpeg', 17.45, "Pepsi Max",
                          "4 x 250 ml"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
