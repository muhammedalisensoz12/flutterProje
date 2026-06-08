import 'package:flutter/material.dart';
import 'package:flutter_application_6/Anasayfa.dart';
import 'package:flutter_application_6/AramaSayfasi.dart';
import 'package:flutter_application_6/SepetlerSayfasi.dart';
import 'package:flutter_application_6/HesabimSayfasi.dart';

class MarketlerSayfasi extends StatelessWidget {
  const MarketlerSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 121, 23, 123),
      body: Column(
        children: [
         SizedBox(height: 10),

          // Adres satırı
          Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(width: 3),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buseyit Busait Küme Evler 4A",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Giresun Giresun 28400",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              SizedBox(width: 10),
            ],
          ),

         SizedBox(height: 10),

          // Arama kutusu burada
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Market var",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),

         SizedBox(height: 20),

          // Kampanya kısmı burada
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ypro'lular Yemeksepeti",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Market'te %50 indirimli!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Ypro'lu ol!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ]
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
                    "Popüler Marketler",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  marketCard(
                    "Migros",
                    "Süpermarket • 30-40 dk",
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Migros_logo.png/512px-Migros_logo.png",
                  ),

                  marketCard(
                    "A101",
                    "Uygun fiyatlı market • 25-35 dk",
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/A101_logo.png/512px-A101_logo.png",
                  ),

                  marketCard(
                    "BİM",
                    "Ekonomik alışveriş • 20-30 dk",
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Bim_logo.png/512px-Bim_logo.png",
                  ),

                  marketCard(
                    "ŞOK",
                    "Haftalık fırsatlar • 25-40 dk",
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/%C5%9Eok_logo.png/512px-%C5%9Eok_logo.png",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // 📌 NAVIGATION BAR
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
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
          } else if (index == 1) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MarketlerSayfasi()));
          } else if (index == 2) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AramaSayfasi()));
          } else if (index == 3) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SepetlerSayfasi()));
          } else if (index == 4) {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HesabimSayfasi()));
          }
        },
      ),
    );
  }

  // 🧱 MARKET KARTI (TAŞMA YOK + STABİL)
  Widget marketCard(String name, String desc, String image) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      child: Row(
        children: [

          // 🖼 LOGO
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.store, size: 40, color: Colors.grey);
              },
            ),
          ),

          const SizedBox(width: 12),

          // 📄 YAZILAR (TAŞMA YOK)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  desc,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios,
              size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}