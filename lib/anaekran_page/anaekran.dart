import 'package:flutter/material.dart';

class ekran extends StatelessWidget {
  var bilgi;
  ekran({required this.bilgi, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bilgi = ModalRoute.of(context)?.settings.arguments;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          title: const Text(
            "götür",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 87, 53, 180),
        ),
        body: Stack(
          children: [
            bottom_bar(context, bilgi, 'ekran'),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.extended(
                      heroTag: const Text("adres"),
                      onPressed: () {
                        Navigator.pushNamed(context, 'adres', arguments: bilgi);
                      },
                      label: const Text(
                        "| Ev Bosna Hersek Selçuklu >",
                        style: TextStyle(
                            color: Color.fromARGB(255, 110, 110, 110)),
                      ),
                      icon: const Image(
                          image: AssetImage('assets/images/ev.png')),
                      backgroundColor: Colors.white,
                    ),
                    FloatingActionButton.extended(
                      heroTag: const Text("sepet"),
                      onPressed: () {
                        Navigator.pushNamed(context, 'sepet');
                      },
                      label: const Text(
                        "| sepet",
                        style: TextStyle(color: Colors.yellow, fontSize: 15),
                      ),
                      icon: const Icon(
                        Icons.shopping_basket,
                        color: Colors.yellow,
                      ),
                      backgroundColor: const Color.fromARGB(255, 87, 53, 180),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 410.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/reklam2.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: 410.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/indirim1.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: 410.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/indirim2.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: 410.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/indirim3.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/su.jpeg'),
                          iconSize: 70,
                          onPressed: () {
                            Navigator.pushNamed(context, 'suicecek');
                          },
                        ),
                        const Text("Su & İçecek")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/sebze.jpeg'),
                          iconSize: 70,
                          onPressed: () {
                            Navigator.pushNamed(context, 'sebzemeyve');
                          },
                        ),
                        const Text("Meyve & Sebze")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/fırın.jpeg'),
                          iconSize: 70,
                          onPressed: () {
                            Navigator.pushNamed(context, 'firindan');
                          },
                        ),
                        const Text("Fırından")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/temelgida.jpeg'),
                          iconSize: 70,
                          onPressed: () {
                            Navigator.pushNamed(context, 'temelgida');
                          },
                        ),
                        const Text("Temel Gıda")
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

itemekle(@required String resimadres, @required double fiyat,
    @required String marka, @required String ekbilgi) {
  return SizedBox(
    height: 175,
    width: 120,
    child: Column(
      children: [
        Image(image: AssetImage(resimadres)),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text("₺ $fiyat",
                style: TextStyle(color: Color.fromARGB(255, 87, 53, 180))),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              marka,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              ekbilgi,
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),
      ],
    ),
  );
}

Align bottom_bar(BuildContext context, var bilgi, String page) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(190, 255, 255, 255)),
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                if (page != 'ekran') {
                  Navigator.pushNamed(context, 'ekran', arguments: bilgi);
                }
              },
              icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {
                if (page != 'arama') {
                  Navigator.pushNamed(context, 'arama', arguments: bilgi);
                }
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                if (page != 'profil') {
                  Navigator.pushNamed(context, 'profil', arguments: bilgi);
                }
              },
              icon: const Icon(Icons.person)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'indirim');
            },
            icon: const Icon(Icons.card_giftcard),
          )
        ],
      ),
    ),
  );
}
