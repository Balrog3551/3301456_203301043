import 'package:flutter/material.dart';
import '../anaekran_page/anaekran.dart';

class atistirmalik extends StatelessWidget {
  const atistirmalik({Key? key}) : super(key: key);

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
                            style: TextStyle(color: Colors.white)),
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
                      "Cips",
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
                      itemekle('assets/images/cips1.jpeg', 24.95,
                          "Ruffles Mangalda Et", "107 g"),
                      itemekle('assets/images/cips2.png', 26.50,
                          "Doritos Nacho Peynirli", "113 g"),
                      itemekle('assets/images/cips3.jpeg', 21.95,
                          "Çerezza Soğanlı", "117 g"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/cips4.jpeg', 22.95,
                          "Çerezza Süt Mısırı", "117 g"),
                      itemekle('assets/images/cips5.jpeg', 17.25,
                          "Çerezza Acılı", "117 g"),
                      itemekle('assets/images/cips6.jpeg', 2.8,
                          "Çerezza Kokteyl", "117 g"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/cips7.jpeg', 22.95,
                          "Çerezza Aile Boy Cips", "3 x 33 g"),
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
