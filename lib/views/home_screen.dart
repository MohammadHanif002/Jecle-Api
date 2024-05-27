import 'package:flutter/material.dart';
import 'package:jecle/views/pengelolaan_sampah_screen.dart';
import 'package:jecle/views/pickup_screen.dart';
import 'package:jecle/views/article_screen.dart';
import 'package:jecle/views/daur_ulang_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of colors for each bottom navigation bar item
  final List<Color> _itemColors = [
    Colors.blue, // Color for Home
    Colors.green, // Color for Scan
    Colors.red, // Color for Belanja
    Colors.yellow, // Color for Profil
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Helper function to build BottomNavigationBarItem with animated background color
  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData iconData, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label: label,
      backgroundColor: _itemColors[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 133, 195, 1),
        elevation: 0,
        toolbarHeight: 0, // Hide the default AppBar
      ),
      body: Column(
        children: [
          // Profile section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color.fromRGBO(48, 133, 195, 1),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Nama Pengguna',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Points and Wallet section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.attach_money, color: Colors.green),
                          SizedBox(width: 5),
                          Text('Saldo: Rp 100.000'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 5),
                          Text('Poin: 200'),
                        ],
                      ),
                    ],
                  ),
                  Divider(height: 20, color: Colors.grey),
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet, color: Colors.blue),
                      SizedBox(width: 5),
                      Text('Dompet: Rp 50.000'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          // Informasi Isu Sampah section
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => InformasiSampahScreen()),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              // child: Container(
              //   padding: EdgeInsets.all(16.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     image: DecorationImage(
              //       image: AssetImage('assets/images/informasi sampah.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   child: Text(
              //     'Informasi Isu Sampah',
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
            ),
          ),
          SizedBox(height: 20),
          // Pickup Sampah and Artikel Sampah section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Kotak 'Pickup Sampah'
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PickUpScreen()),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/pickup sampah.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Pickup Sampah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16), // Jarak antara kotak
              // Kotak 'Artikel Sampah'
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ArticleScreen()),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/artikel sampah.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Artikel Sampah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
              height:
                  20), // Jarak Pick Up Sampah dengan Panduan Pengelolaan Sampah
          // Panduan Pengelolaan Sampah section
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PengelolaanSampahScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/panduan pengelolaan.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Panduan Pengelolaan Sampah',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          // Lihat Selengkapnya section
          GestureDetector(
            onTap: () {
              // Tambahkan logika untuk perubahan tampilan di sini
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/iklan.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(48, 133, 195, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DaurUlangScreen()),
            );
          } else {
            _onItemTapped(index);
          }
        },
        items: [
          _buildBottomNavigationBarItem(Icons.home, 'Home', 0),
          _buildBottomNavigationBarItem(Icons.qr_code_scanner, 'Scan', 1),
          _buildBottomNavigationBarItem(Icons.shopping_cart, 'Belanja', 2),
          _buildBottomNavigationBarItem(Icons.person, 'Profil', 3),
        ],
      ),
    );
  }
}