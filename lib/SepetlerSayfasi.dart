import 'package:flutter/material.dart';
import 'package:flutter_application_6/Anasayfa.dart';
import 'package:flutter_application_6/AramaSayfasi.dart';
import 'package:flutter_application_6/MarketlerSayfasi.dart';
import 'package:flutter_application_6/HesabimSayfasi.dart';

class SepetlerSayfasi extends StatefulWidget {
  const SepetlerSayfasi({super.key});

  @override
  State<SepetlerSayfasi> createState() => _SepetlerSayfasiState();
}

class _SepetlerSayfasiState extends State<SepetlerSayfasi> {

  List<Map<String, dynamic>> sepet = [
    {"isim": "Hamburger", "fiyat": 120, "adet": 1},
    {"isim": "Pizza", "fiyat": 180, "adet": 2},
    {"isim": "Kola", "fiyat": 30, "adet": 1},
  ];

  int toplamFiyat() {
    int toplam = 0;
    for (var item in sepet) {
      toplam += item["fiyat"] * item["adet"] as int;
    }
    return toplam;
  }

  void artir(int index) {
    setState(() {
      sepet[index]["adet"]++;
    });
  }

  void azalt(int index) {
    setState(() {
      if (sepet[index]["adet"] > 1) {
        sepet[index]["adet"]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 121, 23, 123),

      body: Column(
        children: [

          const SizedBox(height: 40),

          // 🛒 BAŞLIK
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sepetim",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // ⚪ İÇERİK
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,

              child: Column(
                children: [

                  Expanded(
                    child: ListView.builder(
                      itemCount: sepet.length,
                      itemBuilder: (context, index) {

                        final item = sepet[index];

                        return Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8,
                          ),
                          padding: const EdgeInsets.all(12),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // 📦 ÜRÜN
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item["isim"],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  Text(
                                    "${item["fiyat"]} ₺",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ],
                              ),

                              // ➕➖ ADET
                              Row(
                                children: [

                                  IconButton(
                                    onPressed: () => azalt(index),
                                    icon: const Icon(Icons.remove_circle_outline),
                                  ),

                                  Text(
                                    "${item["adet"]}",
                                    style: const TextStyle(fontSize: 16),
                                  ),

                                  IconButton(
                                    onPressed: () => artir(index),
                                    icon: const Icon(Icons.add_circle_outline),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  // 💰 ALT TOPLAM
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 10,
                          offset: const Offset(0, -3),
                        )
                      ],
                    ),

                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Toplam",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "${toplamFiyat()} ₺",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              padding: const EdgeInsets.all(15),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text("Sipariş"),
                                  content: const Text("Siparişiniz alındı 🎉"),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text("Tamam"),
                                    )
                                  ],
                                ),
                              );
                            },
                            child: const Text("Siparişi Tamamla"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // 📌 NAVIGATION BAR
      bottomNavigationBar: NavigationBar(
        selectedIndex: 3,
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
}