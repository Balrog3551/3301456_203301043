import 'package:flutter/material.dart';

class indirim extends StatelessWidget {
  const indirim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(
          "götür",
          style: TextStyle(
            fontSize: 25,
            color: Colors.yellow,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 87, 53, 180),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(186, 218, 218, 218)),
                      height: 230,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 0),
                        child: Column(children: [
                          Image(
                            image: AssetImage('assets/images/indirim1.jpeg'),
                          ),
                          Row(
                            children: [
                              Text(
                                "Size özel 20 TL hediye!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 53, 180)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Size özel, 90 TL ve üzeri siparişinize 20 TL indirim uygulanır.",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(186, 218, 218, 218)),
                      height: 230,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 0),
                        child: Column(children: [
                          Image(
                            image: AssetImage('assets/images/indirim2.jpeg'),
                          ),
                          Row(
                            children: [
                              Text(
                                "Size özel 2 siparişinize, 3. siparişiniz bizden!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 53, 180)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "İlk 2 sipariş, minimum 50 TL olmalıdır. Hediye sipariş, 50 TL",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                " ile sınırlıdır. Detaylar için tıklayın!",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(186, 218, 218, 218)),
                      height: 230,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 0),
                        child: Column(children: [
                          Image(
                            image: AssetImage('assets/images/indirim3.jpeg'),
                          ),
                          Row(
                            children: [
                              Text(
                                "Bir sonraki siparişinize size özel %50 indirim!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 53, 180)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Hafta içi 30 TL'ye kadar olan siparişinizde %50 indirim uygulanır.",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(186, 218, 218, 218)),
                      height: 230,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 0),
                        child: Column(children: [
                          Image(
                            image: AssetImage('assets/images/indirim7.jpeg'),
                          ),
                          Row(
                            children: [
                              Text(
                                "Herby çay ve shotlarda %50 indirim!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 53, 180)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Kampanyadan faydalanmak için sepetinize Herby çay ve shot ürünlerinden",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "eklemelisiniz.",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(186, 218, 218, 218)),
                      height: 230,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 0),
                        child: Column(children: [
                          Image(
                            image: AssetImage('assets/images/indirim4.jpeg'),
                          ),
                          Row(
                            children: [
                              Text(
                                "Seçili Su & İçecek siparişinize 20 TL indirim!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 53, 180)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Kampanyadan faydalanmak için sepetinize 40 TL değerinde seçili Su & ",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "İçecek ürünlerinden eklemelisiniz.",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(186, 218, 218, 218)),
                      height: 230,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 0),
                        child: Column(children: [
                          Image(
                            image: AssetImage('assets/images/indirim5.jpeg'),
                          ),
                          Row(
                            children: [
                              Text(
                                "Seçili atıştırmalık siparişinize 10 TL indirim!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 53, 180)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Kampanyadan faydalanmak için sepetinize 30 TL değerinde seçili atıştırmalık ",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "ürünlerinden eklemelisiniz.",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
