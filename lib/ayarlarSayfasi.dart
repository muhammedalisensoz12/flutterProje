import 'package:flutter/material.dart';

class Ayarlarsayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ayarlar")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Önceki Sayfaya Geri Dön
            Navigator.pop(context);
          },
          child: Text("Geri Dön (POP)"),
        ),
      ),
    );
  }
}
