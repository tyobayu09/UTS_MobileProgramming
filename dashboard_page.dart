import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'icon': Icons.cleaning_services,
        'color': Colors.purple,
        'title': 'Laundry Cuci Bersih Setrika',
        'price': 'Rp. 10.000',
      },
      {
        'icon': Icons.nature_people,
        'color': Colors.green,
        'title': 'Tukang Kebun Profesional',
        'price': 'Rp. 20.000',
      },
      {
        'icon': Icons.restaurant_menu,
        'color': Colors.orange,
        'title': 'Tukang Masak Profesional',
        'price': 'Rp. 25.000',
      },
      {
        'icon': Icons.plumbing,
        'color': Colors.blue,
        'title': 'Ahli Pipa & Plumbing',
        'price': 'Rp. 30.000',
      },
      {
        'icon': Icons.car_repair,
        'color': Colors.red,
        'title': 'Servis Kendaraan',
        'price': 'Rp. 50.000',
      },
      {
        'icon': Icons.house,
        'color': Colors.brown,
        'title': 'Jasa Renovasi Rumah',
        'price': 'Rp. 100.000',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('iJASA'),
        actions: [
          IconButton(icon: const Icon(Icons.message), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(icon: const Icon(Icons.person), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Apa yang dibutuhkan?',
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail produk
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: Card(
                      color: Colors.grey[800],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            product['icon'],
                            size: 50,
                            color: product['color'],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            product['title'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            product['price'],
                            style: const TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
