import 'package:flutter/material.dart';
import 'package:sayfa_gecisi/urun_page/F%C4%B1r%C4%B1ndan.dart';
import 'package:sayfa_gecisi/adres_page/adres.dart';
import 'package:sayfa_gecisi/anaekran_page/anaekran.dart';
import 'package:sayfa_gecisi/arama_page/arama.dart';
import 'package:sayfa_gecisi/indirimler_page/indirimler.dart';
import 'package:sayfa_gecisi/profil_page/profil.dart';
import 'package:sayfa_gecisi/urun_page/sebzemeyve.dart';
import 'package:sayfa_gecisi/sepet_page/sepet.dart';
import 'package:sayfa_gecisi/urun_page/suicecek.dart';
import 'package:sayfa_gecisi/urun_page/temelgida.dart';
import '../indirimler_page/indirimler.dart';

class routeGenerations {
  static Route<dynamic>? RouteGeneration(RouteSettings settings) {
    switch (settings.name) {
      case 'profil':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => profil(bilgi: settings.arguments),
        );

      case 'ekran':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ekran(bilgi: settings.arguments),
        );
      case 'indirim':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => indirim(),
        );
      case 'adres':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => adres(
            bilgi: settings.arguments,
          ),
        );
      case 'arama':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => arama(
            bilgi: settings.arguments,
          ),
        );
      case 'sepet':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => sepet(),
        );
      case 'suicecek':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => suicecek(),
        );
      case 'firindan':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => firindan(),
        );
      case 'sebzemeyve':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => sebzemeyve(),
        );
      case 'temelgida':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => temelgida(),
        );
    }
  }
}
