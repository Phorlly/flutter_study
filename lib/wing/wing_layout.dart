import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/wing/widget_image.dart';
import 'widget_button.dart';

class WingLayout extends StatefulWidget {
  const WingLayout({super.key});

  @override
  State<WingLayout> createState() => _WingLayoutState();
}

class _WingLayoutState extends State<WingLayout> {
  @override
  Widget build(BuildContext context) {
    //=========================Declare variable=======================================//
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double widthSizeBox = 30;
    final controller = CarouselController();
    final imageUrl = [
      'assets/images/wing-inclusion.png',
      'assets/images/wing-time.png',
      'assets/images/wing-quickly.png',
      'assets/images/wing-pay.png',
      'assets/images/wing-official.png',
      'assets/images/wing-mobile.png',
      'assets/images/wing-market.png',
    ];

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      //=========================AppBar=======================================//
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.amberAccent,
        // leading: const Text(''),
        title: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/hide.png', color: Colors.white),
                ],
              ),
              const SizedBox(
                width: 2,
              ),
              const Column(
                children: [
                  Text(
                    '-------------',
                    style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/qr-code.png',
                          color: Colors.pinkAccent),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      child: const Text('CASH IN'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      //========================Body==========================================//
      body: ListView(
        children: [
          Column(
            children: [
              //===================Button GridView================================//
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white),
                //=================GridView===========================================//
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: buttonOptions.length,
                  itemBuilder: (context, index) =>
                      GridOptions(layout: buttonOptions[index]),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // mainAxisSpacing: 5,
                    // crossAxisSpacing: 5,
                    childAspectRatio: width / (height / 3),
                  ),
                ),
              ),
              //==================Image Scroller==================================//
              SizedBox(
                height: 100,
                child: Scaffold(
                  backgroundColor: Colors.white70,
                  body: ListView.builder(
                    itemBuilder: (context, index) =>
                        ListOptions(layout: imageOptions[index]),
                    itemCount: imageOptions.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              //======================Text====================================//
              Container(
                color: Colors.white70,
                height: 30,
                child: AppBar(
                  backgroundColor: Colors.white70,
                  elevation: 0,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Promotion',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text(
                                  'Show All',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                Icon(Icons.navigate_next),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //======================Image Slider=============================//
              Container(
                color: Colors.white70,
                child: CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: imageUrl.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = imageUrl[index];
                    return getImage(urlImage, index, () {});
                  },
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    // enableInfiniteScroll: false,
                    // autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                  ),
                ),
              ),
              //=====================BottomBar=================================//
              Container(
                color: Colors.white,
                child: ButtonBar(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        getBottomBar(
                            size: 25,
                            title: 'Home',
                            color: Colors.yellow,
                            icon: Icons.home,
                            onClick: () {}),
                        SizedBox(
                          width: widthSizeBox,
                        ),
                        getBottomBar(
                            size: 25,
                            title: 'Favorites',
                            color: Colors.redAccent,
                            icon: Icons.favorite,
                            onClick: () {}),
                        SizedBox(
                          width: widthSizeBox,
                        ),
                        getBottomBar(
                            title: '',
                            size: 50,
                            color: Colors.blueAccent,
                            icon: Icons.qr_code_scanner_outlined,
                            onClick: () {}),
                        SizedBox(
                          width: widthSizeBox,
                        ),
                        getBottomBar(
                            size: 25,
                            title: 'Location',
                            color: Colors.black,
                            icon: Icons.location_on_outlined,
                            onClick: () {}),
                        SizedBox(
                          width: widthSizeBox,
                        ),
                        getBottomBar(
                            size: 25,
                            title: 'Profile',
                            color: Colors.black,
                            icon: Icons.person,
                            onClick: () {}),
                        SizedBox(
                          width: widthSizeBox,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  //========================Widget getButtonBar==================================//
  Widget getBottomBar(
      {required String? title,
      required IconData icon,
      required void Function()? onClick,
      required Color color,
      required double size}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: TextButton(
        onPressed: onClick,
        child: Column(
          children: [
            Icon(icon, color: color, size: size),
            Text(
              title!,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  //========================Widget getImage===================================//
  Widget getImage(String imageUrl, int index, Function()? onClick) => Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: TextButton(
          onPressed: onClick,
          child: Container(
            // height: 200,
            // width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
        ),
      );
}
