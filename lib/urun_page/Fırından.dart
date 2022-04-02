import 'package:flutter/material.dart';
import '../anaekran_page/anaekran.dart';

class firindan extends StatelessWidget {
  const firindan({Key? key}) : super(key: key);

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
                    child: Text("Su & İçecek",
                        style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'sebzemeyve');
                    },
                    child: Text("Meyve & Sebze",
                        style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Fırından",
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
                      Navigator.pushNamed(context, 'temelgida');
                    },
                    child: Text("Temel Gıda",
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
                      "Paketli Ekmek",
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
                      itemekle('assets/images/ekmek1.jpeg', 17.95,
                          "Çavdarlı Ekmek", "350 g"),
                      itemekle('assets/images/ekmek2.jpeg', 16.50,
                          "Büyük Tost Ekmeği", "550 g"),
                      itemekle('assets/images/ekmek3.jpeg', 18.95,
                          "Tahıllı Ekmek", "550 g"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/ekmek4.jpeg', 18.95,
                          "Lifli Ekmek", "520 g"),
                      itemekle('assets/images/ekmek5.jpeg', 19.95,
                          "Otantik Ekmek", "550 g"),
                      itemekle('assets/images/ekmek6.jpeg', 17.5, "Çok Ekmek",
                          "350 g"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/ekmek7.jpeg', 22.95,
                          "Tam Buğday Ekmeği", "520 g"),
                      itemekle('assets/images/ekmek8.jpeg', 17.25,
                          "Tost Ekmeği", "350 g"),
                      itemekle('assets/images/ekmek9.jpeg', 17.25,
                          "Glütensiz Ekmek", "240 g"),
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
