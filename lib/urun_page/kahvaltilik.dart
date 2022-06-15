import 'package:flutter/material.dart';

import '../anaekran_page/anaekran.dart';

class kahvaltilik extends StatelessWidget {
  const kahvaltilik({Key? key}) : super(key: key);

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
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              height: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
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
                      "Sucuk",
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
                      itemekle('assets/images/suc1.jpeg', 24.50,
                          "Şahin Altın K Sucuk", "60 g"),
                      itemekle('assets/images/suc2.jpeg', 70.90,
                          "Şahin Kangal Sucuk", "180 g"),
                      itemekle('assets/images/suc3.jpeg', 103.45,
                          "Polonez Kangal Sucuk", "240 g"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/suc4.jpeg', 74.90,
                          "Namet Kangal Sucuk", "225 g"),
                      itemekle('assets/images/suc6.jpeg', 115.0,
                          "Şahin Kangal Sucuk", "350 g"),
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
