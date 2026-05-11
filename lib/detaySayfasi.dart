import 'package:flutter/material.dart';

class DetaySayfasi extends StatelessWidget {
  final String kAdi;
  DetaySayfasi({required this.kAdi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hoşgeldiniz")),
      body: Center(child: Text("Merhaba $kAdi")),
    );
  }
}
