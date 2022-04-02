import 'package:flutter/material.dart';
import 'package:sayfa_gecisi/anaekran_page/anaekran.dart';

class adres extends StatelessWidget {
  var bilgi;
  adres({required this.bilgi, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(
          "adreslerim",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 87, 53, 180),
      ),
      body: Stack(children: [
        bottom_bar(context, bilgi, ' '),
        Column(
          children: [
            Card(
              child: ListTile(
                leading: Image(image: AssetImage('assets/images/ev.png')),
                title: Text("Ev"),
                subtitle:
                    Text("Bosna Hersek, Ahmet sk. No:00, 42250 Selçuklu/Konya"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image(image: AssetImage('assets/images/ev.png')),
                title: Text("Ev"),
                subtitle: Text(
                    "Bosna Hersek, Cevahir sk. No:01, 42250 Selçuklu/Konya"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image(image: AssetImage('assets/images/ev.png')),
                title: Text("Ev"),
                subtitle:
                    Text("Bosna Hersek, Çınar sk. No:02, 42250 Selçuklu/Konya"),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
