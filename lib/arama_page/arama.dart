import 'package:flutter/material.dart';
import '../anaekran_page/anaekran.dart';

class arama extends StatelessWidget {
  var bilgi;
  arama({required this.bilgi, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(
          "Arama",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 87, 53, 180),
      ),
      body: Stack(children: [
        bottom_bar(context, bilgi, 'arama'),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 87, 53, 180),
                  ),
                  border: UnderlineInputBorder(),
                  labelText: 'Ürün Ara',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 0, top: 25, bottom: 8),
              child: Row(
                children: const [
                  Text(
                    "Popüler Aramalar",
                    style: TextStyle(
                        color: Color.fromARGB(255, 122, 122, 122),
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15, top: 0, bottom: 0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 233, 233, 233)),
                  height: 60,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "süt",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "cips",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "çikolata",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "yumurta",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "su",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "ekmek",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "tavuk",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "kaşar",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Stack(children: const [
                            Text(
                              "peynir",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 53, 180)),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
