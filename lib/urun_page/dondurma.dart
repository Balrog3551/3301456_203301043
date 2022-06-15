import 'package:flutter/material.dart';
import '../anaekran_page/anaekran.dart';

class dondurma extends StatelessWidget {
  const dondurma({Key? key}) : super(key: key);

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
                      "Dondurma",
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
                      itemekle('assets/images/dnd1.jpeg', 24.95,
                          "Magnum Cookie", "95 ml"),
                      itemekle('assets/images/dnd2.jpeg', 26.50, "Magnum Beyaz",
                          "100 ml"),
                      itemekle('assets/images/dnd3.jpeg', 21.95,
                          "Magnum Caramel G", "90 ml"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemekle('assets/images/dnd4.jpeg', 22.95,
                          "Magnum Çikolata", "95 ml"),
                      itemekle('assets/images/dnd5.jpeg', 17.25,
                          "Magnum Karadut", "95 ml"),
                      itemekle('assets/images/dnd6.jpeg', 15.8,
                          "Golf Bravo Crazy Nutty", "100 ml"),
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
