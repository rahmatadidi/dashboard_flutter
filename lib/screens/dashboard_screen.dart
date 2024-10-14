import 'package:flutter/material.dart';
import '../widgets/stat_card.dart';
import '../widgets/course_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            Text(
              'Modul',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            Text(
              'Tentang',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            Text(
              'Dashboard',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
          color: Colors.grey[200],
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  color: Colors.purple,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: SingleChildScrollView(
                      child: Transform.translate(
                        offset: const Offset(0, -180),
                        child: Container(
                          color: Colors.white,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Profile Header
                                Container(
                                  padding: const EdgeInsets.all(28.0),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 40,
                                        backgroundImage: AssetImage(
                                            'assets/images/Photos.png'),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 16.0),
                                        child: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Haris Wibuwono",
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text("Ahli Makan Mukbang",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w100)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text("Dashboard")),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text("Courses")),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text("Summary")),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text("Certificates")),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text("Wishlist")),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 16),
                                      StatCard(
                                          title: 'Makanan Terbeli',
                                          count: '3',
                                          color: Colors.pink),
                                      SizedBox(width: 16),
                                      StatCard(
                                          title: 'Makanan Selesai',
                                          count: '1',
                                          color: Colors.green),
                                      SizedBox(width: 16),
                                      StatCard(
                                          title: 'Summary Selesai',
                                          count: '1',
                                          color: Colors.blue),
                                      SizedBox(width: 16),
                                      StatCard(
                                          title: 'Total Poin',
                                          count: '35',
                                          color: Colors.orange),
                                      SizedBox(width: 16),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    'Mulai Nonton Course, Yuk!',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
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
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}
