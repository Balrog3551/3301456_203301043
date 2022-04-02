import 'package:flutter/material.dart';
import 'package:sayfa_gecisi/anaekran_page/anaekran.dart';

class profil extends StatelessWidget {
  var bilgi;
  profil({required this.bilgi, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(
          "profil",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 87, 53, 180),
      ),
      body: Stack(children: [
        bottom_bar(context, bilgi, 'profil'),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 90,
                    color: Color.fromARGB(255, 87, 53, 180),
                  ),
                  Text(
                    bilgi[1],
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Card(
                  child: ListTile(
                leading: Icon(
                  Icons.post_add,
                  size: 25,
                ),
                title: Text(
                  bilgi[0],
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              )),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'adres');
                },
                child: Card(
                  child: ListTile(
                      leading: Icon(
                        Icons.navigation,
                        size: 25,
                      ),
                      title: Text(
                        "Adreslerim",
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Card(
                    child: ListTile(
                  leading: Icon(Icons.door_back_door),
                  title: Text("Çıkış Yap"),
                  trailing: Icon(Icons.arrow_forward_ios),
                )),
              )
            ],
          ),
        )
      ]),
    );
  }
}
