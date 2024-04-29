import 'package:flutter/material.dart';
import 'layout.dart';

class PPCBank extends StatelessWidget {
  const PPCBank({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    var fontKhmer = 'Hanuman';
    return Scaffold(
      //==================appbar=============================================//
      appBar: AppBar(
        elevation: 0, //for clean border
        // backgroundColor: Colors.blue,
        centerTitle: true,
        title: TextButton(
          onPressed: (){},
          child: Text(
            "សូមស្វាគមន៍មនកាន់ PPCBank",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
                fontFamily: fontKhmer, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active, color: color),
              color: Colors.black54,
            ),
          ),
        ],
      ),
      //======================sidebar========================================//
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.blueAccent,
              child: const DrawerHeader(
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/bean.jpg'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 12),
                      child: Column(
                        children: [
                          Text(
                            'សួស្ដី, ផល្លី',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Text(
                            'លេខសម្គាល់៖ 0945234',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: const Text('ទូរទាត់តាមកាលវិភាគ'),
                  leading: const Icon(Icons.calendar_month),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('មូលប្បទានបត្រ'),
                  leading: const Icon(Icons.calendar_view_week_sharp),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('ទីកន្លែងទូរទាត់ ATM'),
                  leading: const Icon(Icons.location_on_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('អត្រាប្ដូរប្រាក់'),
                  leading: const Icon(Icons.currency_exchange),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('ទីតាំងរបស់ PPCBank'),
                  leading: const Icon(Icons.location_searching),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('ណែនាំដល់មិត្តភក្តិ'),
                  leading: const Icon(Icons.person_add_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('ទំនាក់ទំនងកយើងខ្ញុំ'),
                  leading: const Icon(Icons.phone_in_talk_sharp),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('លក្ខខណ្ទ'),
                  leading: const Icon(Icons.note),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('ការកំណត់ផ្សេងៗ'),
                  leading: const Icon(Icons.settings),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      //==========================body========================================//
      body: const LayoutPage(),
    );
  }
}
