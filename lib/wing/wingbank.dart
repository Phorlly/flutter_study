import 'package:flutter/material.dart';
import 'package:flutter_study/wing/wing_layout.dart';

class WingBank extends StatelessWidget {
  const WingBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //=========================Appbar========================================//
        appBar: AppBar(
          elevation: 0, //for clean border
          backgroundColor: Colors.amberAccent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Wing',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Text(
                    'Bank',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              )
            ],
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ),
          ],
        ),
        //========================Drawer=======================================//
        drawer: Drawer(
          child: ListView(
            children: [
              //=================DrawerHeader===================================//
              Container(
                color: Colors.lightBlue,
                width: double.infinity,
                child: const DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'LANN Phorlly',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Account# 0973200826',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Current Account',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //================================ListTile==========================//
              Column(
                children: [
                  ListTile(
                    title: const Text('Home'),
                    leading: const Icon(Icons.home),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Manage All Cards'),
                    leading: const Icon(Icons.credit_card),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Refer A Friend'),
                    leading: const Icon(Icons.person),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('About'),
                    leading: const Icon(Icons.info_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('FAQs'),
                    leading: const Icon(Icons.contact_support_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Contact Us'),
                    leading: const Icon(Icons.phone_in_talk_sharp),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Terms & Conditions'),
                    leading: const Icon(Icons.note_alt_sharp),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Settings'),
                    leading: const Icon(Icons.settings),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        //==================Body================================================//
        body: const WingLayout(),
      ),
    );
  }
}
