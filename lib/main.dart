import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/login.dart';
import 'package:flutter_study/ppc/ppcbank.dart';
import 'package:flutter_study/telegram/telegram.dart';
import 'package:flutter_study/wing/wingbank.dart';

void main() async {
  //=====================Auth=================================================//
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );
  //=================Run App=================================================//
  runApp(
    MaterialApp(
      title: 'Flutter Basic',
      // home: const Login(),
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/ppc-bank': (context) => const PPCBank(),
        '/wing-bank': (context) => const WingBank(),
        '/telegram': (context) => const TelegramApp(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.orange`  ,
      // ),
    ),
  );
}

//====================Class MyApp=============================================//
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //=================Initial Firebase App=====================================//
  Future<FirebaseApp> _initializeFirebase() async {
    final firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const Login();
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

//===================Class allow Scroller====================================//
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
