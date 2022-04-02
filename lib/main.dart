import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sayfa_gecisi/acilis_page/acilis.dart';
import 'package:sayfa_gecisi/rota_page/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routeGenerations.RouteGeneration,
      home: acilis(),
      builder: EasyLoading.init(),
    );
  }
}
