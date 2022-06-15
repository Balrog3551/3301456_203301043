import 'package:flutter/material.dart';
import '../anaekran_page/anaekran.dart';

class temelgida extends StatelessWidget {
  const temelgida({Key? key}) : super(key: key);

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
                      "Et, Tavuk & Balık",
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
                      itemekle('assets/images/et1.jpeg', 48.90, "Namet Kıyma",
                          "400 g"),
                      itemekle('assets/images/et2.jpeg', 52.50, "Namet Kuşbaşı",
                          "400 g"),
                      itemekle('assets/images/et3.jpeg', 59.90,
                          "Erpiliç Bonfile", "750 g"),
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
                      "Makarna",
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
                      itemekle('assets/images/makarna1.jpeg', 17.95,
                          "Makarna + Yoğurt", "500 g + 250 g"),
                      itemekle('assets/images/makarna2.jpeg', 9.75,
                          "Pastavilla Spagetti", "500 g"),
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
                      "Bulgur",
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
                      itemekle('assets/images/bulgur1.jpeg', 17.38,
                          "Pilavlık Bulgur", "1 kg"),
                      itemekle('assets/images/bulgur2.jpeg', 17.37,
                          "Köftelik Bulgur", "1 kg"),
                      itemekle('assets/images/bulgur3.jpeg', 19.69,
                          "Pilavlık Bulgur", "1 kg"),
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
                      "Pirinç",
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
                      itemekle('assets/images/pirinç1.jpeg', 19.95,
                          "Osmancık Pirinç", "1 kg"),
                      itemekle('assets/images/pirinç2.jpeg', 46.06,
                          "Pilavlık Pirinç", "2 kg"),
                      itemekle('assets/images/pirinç3.jpeg', 27.65,
                          "Baldo Pirinç", "1 kg"),
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
