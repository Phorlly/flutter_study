import 'package:flutter/material.dart';
import 'package:flutter_study/telegram/telegram_layout.dart';

class TelegramApp extends StatelessWidget {
  const TelegramApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //=========================Appbar========================================//
      appBar: AppBar(
        backgroundColor: Colors.grey,
        // bottom: const TabBar(
        //   tabs: [
        //     Tab(icon: Icon(Icons.directions_car)),
        //     Tab(icon: Icon(Icons.directions_transit)),
        //     Tab(icon: Icon(Icons.directions_bike)),
        //   ],
        // ),
        title: TextButton(
          onPressed: () {},
          child: const Text(
            'Telegram',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: const Icon(Icons.lock),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
        ],
      ),
      //==================Body================================================//
      body: const TelegramLayout(),
      //========================Drawer=======================================//
      drawer: Drawer(
        child: ListView(
          children: [
            //=================DrawerHeader===================================//
            Container(
              color: Colors.grey,
              child: const DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('assets/images/bean.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: ListTile(
                        title: Text(
                          'LANN Phorlly',
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          '+855 973200826',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //================================ListTile==========================//
            Column(
              children: [
                ListTile(
                  //=================Center===================================//
                  title: const Text('New Group'),
                  //=================Left===================================//
                  leading: const Icon(Icons.group),
                  //=================Click===================================//
                  onTap: () {},
                  //=================Right===================================//
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
                ListTile(
                  title: const Text('Contact'),
                  leading: const Icon(Icons.person),
                  onTap: () {},
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
                ListTile(
                  title: const Text('Calls'),
                  leading: const Icon(Icons.phone),
                  onTap: () {},
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
                ListTile(
                  title: const Text('People Nearby'),
                  leading: const Icon(Icons.location_searching_outlined),
                  onTap: () {},
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
                ListTile(
                  title: const Text('Saved Messages'),
                  leading: const Icon(Icons.save),
                  onTap: () {},
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
                ListTile(
                  title: const Text('Settings'),
                  leading: const Icon(Icons.settings),
                  onTap: () {},
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
                ListTile(
                  title: const Text('Invite Friends'),
                  leading: const Icon(Icons.person_add_outlined),
                  onTap: () {},
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
                ListTile(
                  title: const Text('Telegram Features'),
                  leading: const Icon(Icons.help_outline),
                  onTap: () {},
                  trailing: const Icon(Icons.label_important_outline_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
