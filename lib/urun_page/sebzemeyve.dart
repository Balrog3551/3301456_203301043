import 'package:flutter/material.dart';
import '../anaekran_page/anaekran.dart';

class sebzemeyve extends StatelessWidget {
  const sebzemeyve({Key? key}) : super(key: key);

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
            decoration: BoxDecoration(color: Color.fromARGB(255, 87, 53, 180)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'suicecek');
                    },
                    child: Text(
                      "Su & İçecek",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Meyve & Sebze",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        height: 1.5,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                  )
                ]),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      "Meyve",
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
                      itemekle(
                          'assets/images/meyve1.jpeg', 24.95, "Nar", "750 g"),
                      itemekle('assets/images/meyve2.jpeg', 26.50, "Ahududu",
                          "125 g"),
                      itemekle('assets/images/meyve3.jpeg', 21.95, "Yerli Muz",
                          "750 g"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/meyve6.jpeg', 16.95, "Mandalina",
                          "1 kg"),
                      itemekle('assets/images/meyve7.jpeg', 29.90, "Mandalina",
                          "2 x 1 kg"),
                      itemekle('assets/images/meyve8.jpeg', 12.95, "Portakal",
                          "1 kg"),
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
                      "Sebze",
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
                      itemekle('assets/images/sebze1.jpeg', 14.95,
                          "Mini Hıyar ", "250 g"),
                      itemekle('assets/images/sebze2.jpeg', 14.95,
                          "Tatlı Kıl Sivri Biber", "250 g"),
                      itemekle('assets/images/sebze4.jpeg', 4.95, "Kuru Soğan",
                          "1 kg"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/sebze6.jpeg', 6.95,
                          "Taşköprü Sarımsağı", "250 gr"),
                      itemekle('assets/images/sebze7.jpeg', 20.95, "Patates",
                          "2 kg"),
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
