import 'package:flutter/material.dart';

import 'layout.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ការសិក្សាកូដទូរសព្ទដៃ',
          style: TextStyle(fontFamily: 'Moul', fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Column(
              children: [
                Image.network(
                    'https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                const SizedBox(height: 12),
                const Text(
                  'ស្រីស្អាត',
                  style: TextStyle(
                      fontFamily: 'Hanuman',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueAccent),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    icon: const Icon(Icons.login),
                    label: const Text(
                      'ចូលទៅកាន់ទំព័រដើម',
                      style: TextStyle(fontFamily: 'Moul', fontSize: 10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'សូមស្វាគមន៍មកកាន់ទំព័រដើម',
          style: TextStyle(fontFamily: 'Moul', fontSize: 20),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/cute_girl.jpg'),
            radius: 100,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset('assets/images/cute_girl.jpg'),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "ស្រីស្អាតជនជាតិជប៉ុន",
                  style: TextStyle(
                      fontFamily: 'Hanuman',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                const SizedBox(
                  height: 12,
                ),
                Image.network(
                    'https://1.bp.blogspot.com/-OBP81mz_X_A/YGmf4jRoc0I/AAAAAAAAHnw/tYp8IFdAOegnKZrXBYGNFw-vKowDI-NYACPcBGAsYHg/w919/cute-iu-korean-girl-uhdpaper.com-4K-8.2999-wp.thumbnail.jpg'),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "ស្រីស្អាតជនជាតិកូរ៉េ",
                  style: TextStyle(
                      fontFamily: 'Hanuman',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.logout),
                    label: const Text(
                      "ត្រឡប់ក្រោយ",
                      style: TextStyle(fontFamily: 'Moul', fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LayoutPage(),
                      ),
                    ),
                    icon: const Icon(Icons.login),
                    label: const Text(
                      "ចូលទៅកាន់ទំព័របន្ទាប់",
                      style: TextStyle(fontFamily: 'Moul', fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListTest extends StatefulWidget {
  const ListTest({super.key});

  @override
  State<ListTest> createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  List<Carditem> items = [
    const Carditem(
        urlImage: 'https://wallpapershome.com/images/pages/pic_h/21486.jpg',
        title: 'Love',
        subtitle: '\$90'),
    const Carditem(
        urlImage:
        'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        title: 'Photo',
        subtitle: '\$80'),
    const Carditem(
        urlImage:
        'https://media.npr.org/assets/img/2014/08/07/monkey-selfie_custom-7117031c832fc3607ee5b26b9d5b03d10a1deaca-s400-c85.webp',
        title: 'Phan Chry',
        subtitle: '\$80'),
    const Carditem(
        urlImage:
        'https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        title: 'Love',
        subtitle: '\$90'),
    const Carditem(
        urlImage:
        'https://images.unsplash.com/photo-1603201101485-e232d22ad18b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        title: 'Love',
        subtitle: '\$80'),
    const Carditem(
        urlImage: 'https://wallpapershome.com/images/pages/pic_h/21486.jpg',
        title: 'Love',
        subtitle: '\$70')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 300,
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, _) => const SizedBox(width: 10),
            itemBuilder: (context, index) => buildCard(item: items[index]),
          ),
        ),
      ),
    );
  }

  Widget buildCard({required Carditem item}) => SizedBox(
    width: 300,
    child: Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                item.urlImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          item.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          item.subtitle,
          style: const TextStyle(fontSize: 20, color: Colors.blue),
        )
      ],
    ),
  );
}

class Carditem {
  final String urlImage;
  final String title;
  final String subtitle;

  const Carditem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}
