import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    //========================DeclareVariable=================================//
    Color color = Colors.blue;
    var fontKhmer = 'Hanuman';
    double widthBox = 235;
    double heightBox = 55;
    FontWeight bold = FontWeight.bold;
    return Scaffold(
      //=====================appbar============================================//
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.pending_outlined, color: Colors.white),
              label: Text(
                'ជជែកផ្ទាល់',
                style: TextStyle(fontFamily: fontKhmer, color: Colors.white),
              ),
            ),
          ),
        ],
        leading: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          child: Image.asset('assets/images/hide.png', color: Colors.white),
        ),
      ),
      //=======================body============================================//
      body: ListView(
        children: [
          //=====================row==========================================//
          Padding(
            padding: const EdgeInsets.all(12.0),
            //==================column all body========================================//
            child: Column(
              children: [
                //=====================row1 of main column==========================================//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //=====================button1 of row1==========================================//
                    Column(
                      children: [
                        SizedBox(
                          width: widthBox,
                          height: 110,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.paid_outlined),
                                      Icon(Icons.east_outlined),
                                      Icon(Icons.supervised_user_circle),
                                    ],
                                  ),
                                  Text(
                                    "ផ្ទេរប្រាក់",
                                    style: TextStyle(
                                        fontFamily: fontKhmer,
                                        fontWeight: bold,
                                        color: color),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //=====================column 2 button==========================================//
                    Column(
                      children: [
                        SizedBox(
                          width: widthBox,
                          height: heightBox,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton.icon(
                              icon: const Icon(Icons.add_card),
                              label: Text(
                                'បញ្ចូលកាត',
                                style: TextStyle(
                                    fontFamily: fontKhmer,
                                    fontWeight: bold,
                                    color: color),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),

                        //=====================button==========================================//
                        SizedBox(
                          width: widthBox,
                          height: heightBox,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton.icon(
                              label: Text(
                                'បង់វិក័យបត្រ',
                                style: TextStyle(
                                    fontFamily: fontKhmer,
                                    fontWeight: bold,
                                    color: color),
                              ),
                              icon: const Icon(Icons.inventory),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //=====================row2 of main column==========================================//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //=====================button1 of row1==========================================//
                    Column(
                      children: [
                        SizedBox(
                          width: widthBox,
                          height: heightBox,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton.icon(
                              onPressed: () {},
                              label: Text(
                                'ស្នើសុំប្រាក់កម្ចី',
                                style: TextStyle(
                                    fontFamily: fontKhmer,
                                    fontWeight: bold,
                                    color: color),
                              ),
                              icon: const Icon(Icons.account_balance),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //=====================column 2 button==========================================//
                    Column(
                      children: [
                        SizedBox(
                          width: widthBox,
                          height: heightBox,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton.icon(
                              label: Text(
                                'ប័ណ្ណរបស់ខ្ញុំ',
                                style: TextStyle(
                                    fontFamily: fontKhmer,
                                    fontWeight: bold,
                                    color: color),
                              ),
                              icon: const Icon(Icons.account_balance_wallet),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //=====================row3 of main column==========================================//
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //=====================button1 of row1==========================================//
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            const Icon(Icons.qr_code),
                            Text(
                              'ទទួលតាម QR Code',
                              style: TextStyle(
                                  fontFamily: fontKhmer,
                                  fontWeight: bold,
                                  color: color),
                            ),
                          ],
                        ),
                      ),

                      //=====================column 2 button==========================================//
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            const Icon(Icons.qr_code_scanner_outlined),
                            Text(
                              'បង់តាម QR Code',
                              style: TextStyle(
                                  fontFamily: fontKhmer,
                                  fontWeight: bold,
                                  color: color),
                            ),
                          ],
                        ),
                      ),

                      //=====================column 2 button==========================================//
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            const Icon(Icons.star_outlined),
                            Text(
                              'ចំណូលចិត្តខ្ញុំ',
                              style: TextStyle(
                                  fontFamily: fontKhmer,
                                  fontWeight: bold,
                                  color: color),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //=====================column of main column==========================================//
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox(
                          width: double.infinity,
                          // height: 170,
                          // size: const Size.fromRadius(220), // Image radius
                          child: Image.asset('assets/images/ppcbank.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
