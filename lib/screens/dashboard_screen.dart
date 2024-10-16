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
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.purple.withOpacity(0.2),
                                        width: 0.3),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        // ignore: sort_child_properties_last
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Text("Dashboard"),
                                        ),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                          bottom: BorderSide(
                                              color: Colors.orange, width: 2.0),
                                        )),
                                      ),
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
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 12,
                                    crossAxisSpacing: 12,
                                    children: const [
                                      CourseCard(
                                          imageSrc: 'assets/images/image1.png',
                                          title: 'Nasi Padang',
                                          subtitle: 'Nasi Padang Pedas',
                                          buttonText: 'Mulai Tonton Video'),
                                      CourseCard(
                                          imageSrc: 'assets/images/image1.png',
                                          title: 'Nasi Paha',
                                          subtitle: 'Nasi Paha Pedas',
                                          buttonText: 'Lanjut Tonton'),
                                      CourseCard(
                                          imageSrc: 'assets/images/image1.png',
                                          title: 'Nasi Uduk',
                                          subtitle: 'Nasi Uduk Pedas',
                                          buttonText: 'Mulai Tonton Video'),
                                      CourseCard(
                                          imageSrc: 'assets/images/image1.png',
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
                Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height / 2,
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0, top: 50.0),
                          child: SizedBox(
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Image(
                                    image: AssetImage(
                                        'assets/images/logo-figma.png')),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Solusi untuk hidup sehat diawali dengan membeli makanan yang enak ya",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/logoyt.png",
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      "assets/images/logoig.png",
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset("assets/images/logofb.png")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
