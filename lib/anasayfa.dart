import 'package:flutter/material.dart';
import 'package:flutter_application_6/MarketlerSayfasi.dart';
import 'package:flutter_application_6/AramaSayfasi.dart';
import 'package:flutter_application_6/SepetlerSayfasi.dart';
import 'package:flutter_application_6/HesabimSayfasi.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 23, 123),
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
                hintText: "Restoran veya işletme arayın",
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
                        "Ypro Ayı'na özel %50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "indirimle sipariş ver!",
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
                //Kampanya kısmının yanındaki fotoğraf
                Container(
                  width: 120,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://iatkv.tmgrup.com.tr/495d21/0/0/0/0/0/0?u=https%3A%2F%2Fitkv.tmgrup.com.tr%2F2021%2F02%2F03%2F1612352733747.jpg&mw=616",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

           SizedBox(height: 10),

          //Mor kısımdan sonraki beyaz alta uzanan widget
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15),
                

                //sağa doğru kaydırma bölümü
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [

                          // Fırsatlarım bölümü
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration:  BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child:  Center(
                                  child: Text(
                                    "%",
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                               SizedBox(height: 5),
                               Text(
                                "Fırsatlarım",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                         SizedBox(width: 30),

                          // Kuponlarım bölümü
                          Column(
                            children: [
                              Icon(
                                Icons.confirmation_number,
                                color: Colors.pink,
                                size: 50,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Kuponlarım",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                         SizedBox(width: 30),

                          // Express bölümü
                         Column(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                color: Colors.pink,
                                size: 50,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Express",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        
                         SizedBox(width: 30),

                          // Yeni restoranlar bölümü
                         Column(
                            children: [
                              Icon(
                                Icons.shopping_bag,
                                color: Colors.pink,
                                size: 50,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Yeni",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                         SizedBox(width: 30),

                          // İndirimler bölümü
                         Column(
                            children: [
                              Icon(
                                Icons.local_offer,
                                color: Colors.pink,
                                size: 50,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "İndirimler",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                   SizedBox(height: 10),

                    // fırsatlarımın olduğu bölümün altındaki şerit
                    Container(
                      width: double.infinity,
                      height: 3,
                      color: Colors.grey.shade300,
                    ),
    SizedBox(height: 10,),
    SizedBox(
    height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: 100,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            "Döner",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1603360946369-dc9bb6258143?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

           SizedBox(height: 5),

           Text(
            "Kebap",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

           SizedBox(height: 5),

           Text(
            "Tatlı",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1600891964092-4316c288032e?auto=format&fit=crop&w=800&q=80", 
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

           SizedBox(height: 5),

           Text(
            "Çiğ Köfte",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1600891964092-4316c288032e?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

           SizedBox(height: 5),

           Text(
            "Köfte",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1550507992-eb63ffee0847?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

           SizedBox(height: 5),

           Text(
            "Tost&Sandviç",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

           SizedBox(height: 5),

           Text(
            "Ev Yemekleri",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

      ],
    ),
    
  ), 
  SizedBox(height: 15),

Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Popüler Restoranlar",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
),

SizedBox(height: 10),

SizedBox(
  height: 110,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [

      Column(
        children: [
          Container(
            width: 90,
            height: 70,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text("Doymuş"),
        ],
      ),

      Column(
        children: [
          Container(
            width: 90,
            height: 70,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1550547660-d9450f859349?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text("Komagene"),
        ],
      ),

      Column(
        children: [
          Container(
            width: 90,
            height: 70,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1551782450-a2132b4ba21d?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text("Patsocu"),
        ],
      ),

      Column(
        children: [
          Container(
            width: 90,
            height: 70,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text("Burger King"),
        ],
      ),

    ],
  ),
),                     
],

                ),
                
              ),
            ),
           ),
          ),      
        ],
      ),

      //Alttaki menü kısmı
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        indicatorColor: Colors.pink.withOpacity(0.25),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.restaurant),
            label: "Yemek"),
          NavigationDestination(
            icon: Icon(Icons.store),
            label: "Marketler"),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "Arama"),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: "Sepetler"),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Hesabım"),
        ],
        //sayfa geçişlerinin olduğu kısım
        onDestinationSelected: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Anasayfa(),
              ),
            );
          } 
          else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MarketlerSayfasi(),
              ),
            );
          } 
          else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AramaSayfasi(),
              ),
            );
          }
          else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SepetlerSayfasi(),
              ),
            );
          } 
          else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HesabimSayfasi(),
              ),
            );
          }
        },
      ),
    );
  }
}