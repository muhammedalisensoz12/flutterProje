import 'package:flutter/material.dart';
import 'package:flutter_application_6/Anasayfa.dart';
import 'package:flutter_application_6/MarketlerSayfasi.dart';
import 'package:flutter_application_6/SepetlerSayfasi.dart';
import 'package:flutter_application_6/HesabimSayfasi.dart';

class AramaSayfasi extends StatelessWidget {
  const AramaSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 121, 23, 123),

      body: Column(
        children: [

          const SizedBox(height: 40),

          // 🔍 ARAMA BAR
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Yemek, market veya ürün ara",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // ⚪ İÇERİK
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,

              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [

                  const Text(
                    "Son Aramalar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  searchItem("Hamburger"),
                  searchItem("Pizza"),
                  searchItem("Migros"),
                  searchItem("Kola"),
                  searchItem("BİM"),

                  const SizedBox(height: 20),

                  const Text(
                    "Popüler Aramalar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  searchItem("Döner"),
                  searchItem("Tavuk"),
                  searchItem("Market fırsatları"),
                  searchItem("İndirimli ürünler"),
                ],
              ),
            ),
          ),
        ],
      ),

      // 📌 NAVIGATION BAR
      bottomNavigationBar: NavigationBar(
        selectedIndex: 2,
        indicatorColor: Colors.pink.withOpacity(0.25),

        destinations: const [
          NavigationDestination(icon: Icon(Icons.restaurant), label: "Yemek"),
          NavigationDestination(icon: Icon(Icons.store), label: "Marketler"),
          NavigationDestination(icon: Icon(Icons.search), label: "Arama"),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: "Sepetler"),
          NavigationDestination(icon: Icon(Icons.person), label: "Hesabım"),
        ],

        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Anasayfa()));
          }

          else if (index == 1) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MarketlerSayfasi()));
          }

          else if (index == 2) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AramaSayfasi()));
          }

          else if (index == 3) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SepetlerSayfasi()));
          }

          else if (index == 4) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HesabimSayfasi()));
          }
        },
      ),
    );
  }

  // 🧱 ARAMA SATIRI
  Widget searchItem(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),

      child: Row(
        children: [

          const Icon(Icons.history, color: Colors.grey),

          const SizedBox(width: 10),

          Text(
            text,
            style: const TextStyle(fontSize: 15),
          ),

          const Spacer(),

          const Icon(Icons.north_west, color: Colors.grey, size: 18),
        ],
      ),
    );
  }
}