import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/Screens/HomeScreen.dart';
import 'package:store_app/Screens/UpDateScreen.dart';
import 'package:store_app/servises/upDate_prodact.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        UpDateProdacts.id: (context) => UpDateProdacts()
      },
      initialRoute: HomeScreen.id,
    );
  }
}
