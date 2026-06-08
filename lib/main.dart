import 'package:flutter/material.dart';
import 'package:flutter_application_6/anasayfa.dart';

void main() {
  runApp(Uygulamam());
}


class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});
  
  // Uygulama sabitleri
 static const String appName = 'Final Ödev';
 static const String version = '1.0.0';
 // Öğrenci onay kodu - silmeyiniz
 final String _ogrenciOnayKodu = "MOBIL2026";

@override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: appName,
 theme: ThemeData(
 primarySwatch: Colors.blue,
 useMaterial3: true,
 ),
 home: const Anasayfa(),
 );
 }
}
 // Bu uygulama Mobil Programlama dersi kapsamında geliştirilmiştir