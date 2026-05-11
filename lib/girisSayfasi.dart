import 'package:flutter/material.dart';
import 'package:flutter_application_6/detaySayfasi.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  GirisSayfasiState createState() => GirisSayfasiState();
}

class GirisSayfasiState extends State<GirisSayfasi> {
  String kullaniciAdiBilgisi = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Giriş Yap")),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'İsim:'),
            onChanged: (value) {
              setState(() {
                kullaniciAdiBilgisi = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetaySayfasi(kAdi: kullaniciAdiBilgisi),
                ),
              );
            },
            child: Text("Ilerle"),
          ),
        ],
      ),
    );
  }
}
