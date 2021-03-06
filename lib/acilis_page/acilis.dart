import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class acilis extends StatefulWidget {
  acilis({Key? key}) : super(key: key);

  @override
  State<acilis> createState() => _acilisState();
}

class _acilisState extends State<acilis> {
  final sifre = TextEditingController();
  final mail = TextEditingController();
  final adsoyad = TextEditingController();

  String? mailtext;
  String? adsoyadtext;
  String? sifretext;

  girisYap(var bilgi) async {
    try {
      var control = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: mailtext!, password: sifretext!)
          .then((kullanici) {
        Navigator.pushNamed(
          context,
          'ekran',
          arguments: bilgi,
        );
      });
    } catch (error) {
      print(error.toString);
      EasyLoading.showToast(
        "Hatalı Bilgi Girişi!",
        duration: const Duration(seconds: 2),
        toastPosition: EasyLoadingToastPosition.center,
      );
    }
    ;
  }

  @override
  void dispose() {
    sifre.dispose();
    mail.dispose();
    super.dispose();
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 30, left: 30, top: 40, bottom: 200),
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (data) {
                      mailtext = data!;
                    },
                    controller: mail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mail',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onSaved: (data) {
                      adsoyadtext = data!;
                    },
                    controller: adsoyad,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ad Soyad',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onSaved: (data) {
                      sifretext = data!;
                    },
                    controller: sifre,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şifre',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'kayit');
                          },
                          child: Text("Kayıt Ol")),
                    ],
                  )
                ],
              ),
            ),
            Align(
              child: Container(
                height: 60,
                width: 350,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 87, 53, 180)),
                child: TextButton(
                    onPressed: () {
                      _formkey.currentState?.save();
                      var bilgi = [mailtext, adsoyadtext, sifretext];
                      print(bilgi);
                      if (bilgi[0] == '' || bilgi[1] == '' || bilgi[2] == '') {
                        EasyLoading.showToast(
                          "Eksik Bilgi Girişi!",
                          duration: Duration(seconds: 2),
                          toastPosition: EasyLoadingToastPosition.center,
                        );
                      } else {
                        girisYap(bilgi);
                      }
                    },
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
