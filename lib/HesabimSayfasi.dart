import 'package:flutter/material.dart';
import 'package:flutter_application_6/Anasayfa.dart';
import 'package:flutter_application_6/AramaSayfasi.dart';
import 'package:flutter_application_6/MarketlerSayfasi.dart';
import 'package:flutter_application_6/SepetlerSayfasi.dart';

class HesabimSayfasi extends StatelessWidget {
  const HesabimSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 121, 23, 123),

      body: Column(
        children: [

          const SizedBox(height: 40),

          // 👤 BAŞLIK
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hesabım",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // ⚪ ANA İÇERİK
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,

              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [

                  // 👤 PROFİL KARTI
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        )
                      ],
                    ),

                    child: Row(
                      children: [

                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.pink,
                          child: Icon(Icons.person, color: Colors.white, size: 30),
                        ),

                        const SizedBox(width: 15),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Kullanıcı Adı",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "0555 555 55 55",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 📌 MENÜLER
                  menuItem(Icons.receipt_long, "Siparişlerim"),
                  menuItem(Icons.location_on, "Adreslerim"),
                  menuItem(Icons.favorite, "Favorilerim"),
                  menuItem(Icons.payment, "Ödeme Yöntemleri"),
                  menuItem(Icons.settings, "Ayarlar"),
                  menuItem(Icons.help_outline, "Yardım"),

                  const SizedBox(height: 20),

                  // 🚪 ÇIKIŞ
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.all(15),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("Çıkış"),
                          content: const Text("Çıkış yapmak istiyor musunuz?"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("İptal"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Çıkış"),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text("Çıkış Yap"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // 📌 NAVIGATION BAR
      bottomNavigationBar: NavigationBar(
        selectedIndex: 4,
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

  // 🧱 MENÜ KARTI
  Widget menuItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
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

          Icon(icon, color: Colors.pink),

          const SizedBox(width: 15),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 15),
            ),
          ),

          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}