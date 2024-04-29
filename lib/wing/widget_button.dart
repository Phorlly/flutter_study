import 'package:flutter/material.dart';

//=================Class GetGetIconButton====================================//
class GridLayout {
  final String title;
  final String imageUrl;

  GridLayout({required this.imageUrl, required this.title});
}

//======================List Item=============================================//
List<GridLayout> options = [
  GridLayout(title: 'My Account', imageUrl: 'assets/images/wallet.png'),
  GridLayout(
      title: 'Local Transfer', imageUrl: 'assets/images/money-transfer.png'),
  GridLayout(
      title: 'World Transfer', imageUrl: 'assets/images/wire-transfer.png'),
  GridLayout(title: 'Bill Payment', imageUrl: 'assets/images/bill.png'),
  GridLayout(title: 'Phone Top Up', imageUrl: 'assets/images/top-up.png'),
  GridLayout(title: 'Code To Wing', imageUrl: 'assets/images/code-to-bank.png'),
  GridLayout(title: 'Savings', imageUrl: 'assets/images/saving.png'),
  GridLayout(title: 'Loan', imageUrl: 'assets/images/loan.png'),
  GridLayout(title: 'Free Cash Out', imageUrl: 'assets/images/cash-out.png'),
];

//=========================Class GridOptions=================================//
class GridOptions extends StatelessWidget {
  final GridLayout layout;
  const GridOptions({required this.layout, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //=====================Button=========================================//
        getButton(
            onClick: () {},
            colorBack: Colors.black,
            colorBlue: Colors.blueAccent),
      ],
    );
  }

  //====================Button================================================//
  Widget getButton(
      {required void Function()? onClick,
      required Color colorBack,
      required Color colorBlue}) {
    return TextButton(
      onPressed: onClick,
      child: Column(
        children: [
          Image.asset(layout.imageUrl, color: colorBlue),
          const Padding(
            padding: EdgeInsets.only(top: 5),
          ),
          Text(
            layout.title,
            style: TextStyle(color: colorBack),
          ),
        ],
      ),
    );
  }
}
// GridLayout(title: 'Home', icon: Icons.home),
// GridLayout(title: 'Email', icon: Icons.email),
// GridLayout(title: 'Alarm', icon: Icons.access_alarm),
// GridLayout(title: 'Wallet', icon: Icons.account_balance_wallet),
// GridLayout(title: 'Backup', icon: Icons.backup),
// GridLayout(title: 'Book', icon: Icons.book),
// GridLayout(title: 'Camera', icon: Icons.camera_alt_rounded),
// GridLayout(title: 'Person', icon: Icons.person),
// GridLayout(title: 'Print', icon: Icons.print),
// GridLayout(title: 'Phone', icon: Icons.phone),
// GridLayout(title: 'Notes', icon: Icons.speaker_notes),
// GridLayout(title: 'Music', icon: Icons.music_note_rounded),
// GridLayout(title: 'Car', icon: Icons.directions_car),
// GridLayout(title: 'Bicycle', icon: Icons.directions_bike),
// GridLayout(title: 'Boat', icon: Icons.directions_boat),
// GridLayout(title: 'Bus', icon: Icons.directions_bus),
// GridLayout(title: 'Train', icon: Icons.directions_railway),
// GridLayout(title: 'Walk', icon: Icons.directions_walk),
// GridLayout(title: 'Contact', icon: Icons.contact_mail),
// GridLayout(title: 'Duo', icon: Icons.duo),
// GridLayout(title: 'Hour', icon: Icons.hourglass_bottom),
// GridLayout(title: 'Mobile', icon: Icons.mobile_friendly),
// GridLayout(title: 'Message', icon: Icons.message),
// GridLayout(title: 'Key', icon: Icons.vpn_key),
// GridLayout(title: 'Wifi', icon: Icons.wifi),
// GridLayout(title: 'Bluetooth', icon: Icons.bluetooth),
// GridLayout(title: 'Smile', icon: Icons.sentiment_satisfied),
// GridLayout(title: 'QR', icon: Icons.qr_code),
// GridLayout(title: 'ADD', icon: Icons.add_box),
// GridLayout(title: 'Link', icon: Icons.link),
