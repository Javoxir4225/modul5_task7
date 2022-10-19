

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul5_task7/amazon.dart';
import 'package:modul5_task7/dwed.dart';
import 'package:modul5_task7/facebook.dart';
import 'package:modul5_task7/facebook_minyu.dart';
import 'package:modul5_task7/instagram.dart';
import 'package:modul5_task7/minyu.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Minyu(),
    );
  }
}