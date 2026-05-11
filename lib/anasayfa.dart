import 'package:flutter/material.dart';
import 'package:flutter_application_6/ayarlarSayfasi.dart';
import 'package:flutter_application_6/girisSayfasi.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ana Sayfa")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //Ayarlar Sayfasına gitme:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Ayarlarsayfasi()),
              );
            },
            child: Text("Ayarlar Sayfasına Git"),
          ),

          ElevatedButton(
            onPressed: () {
              //Ayarlar Sayfasına gitme:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GirisSayfasi()),
              );
            },
            child: Text("Giris Sayfası"),
          ),
        ],
      ),
    );
  }
}
//-------------------------------------------------------------------------