import 'package:flutter/material.dart';
import 'package:flutter_application_6/anasayfa.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Anasayfa());
  }
}
