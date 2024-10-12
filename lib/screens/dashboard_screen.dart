// screen/dashboard_screen.dart
import 'package:flutter/material.dart';
import '../widgets/stat_card.dart'; // Import reusable StatCard
import '../widgets/course_card.dart'; // Import reusable CourseCard

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Home'),
            Text('Modul'),
            Text('Tentang'),
            Text('Dashboard'),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: SingleChildScrollView(
            // ignore: avoid_unnecessary_containers
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Section Profile Header
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Haris Wibuwono',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Ahli Makan Makan Mukbang',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    // Bagian Tab Navigasi (Dashboard, Courses, Summary, dll.)
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: () {}, child: const Text("Dashboard")),
                          TextButton(
                              onPressed: () {}, child: const Text("Courses")),
                          TextButton(
                              onPressed: () {}, child: const Text("Summary")),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Certificates")),
                          TextButton(
                              onPressed: () {}, child: const Text("Wishlist")),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Bagian Statistik menggunakan reusable StatCard
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatCard(
                              title: 'Makanan Terbeli',
                              count: '3',
                              color: Colors.pink),
                          StatCard(
                              title: 'Makanan Selesai',
                              count: '1',
                              color: Colors.green),
                          StatCard(
                              title: 'Summary Selesai',
                              count: '1',
                              color: Colors.blue),
                          StatCard(
                              title: 'Total Poin',
                              count: '35',
                              color: Colors.orange),
                        ],
                      ),
                    ),

                    // Bagian List Courses menggunakan reusable CourseCard
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Mulai Nonton Course, Yuk!',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        children: const [
                          CourseCard(
                              title: 'Nasi Padang',
                              subtitle: 'Nasi Padang Pedas',
                              buttonText: 'Mulai Tonton Video'),
                          CourseCard(
                              title: 'Nasi Paha',
                              subtitle: 'Nasi Paha Pedas',
                              buttonText: 'Lanjut Tonton'),
                          CourseCard(
                              title: 'Nasi Uduk',
                              subtitle: 'Nasi Uduk Pedas',
                              buttonText: 'Mulai Tonton Video'),
                          CourseCard(
                              title: 'Nasi Ayam',
                              subtitle: 'Nasi Ayam Geprek',
                              buttonText: 'Beli Course Ini'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
