import 'package:filmes/screens/nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Filmes',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
    ),
    home: Nav()
  ));
}
