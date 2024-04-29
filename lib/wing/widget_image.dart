//=================Class GetImageButton====================================//
import 'package:flutter/material.dart';

class ListLayout {
  final String imageUrl;

  ListLayout({required this.imageUrl});
}

//======================List Item=============================================//
List<ListLayout> imageOptions = [
  ListLayout(imageUrl: 'assets/images/wing-delivery.png'),
  ListLayout(imageUrl: 'assets/images/wing-express.png'),
  ListLayout(imageUrl: 'assets/images/wing-loan.png'),
  ListLayout(imageUrl: 'assets/images/wing-mall.png'),
  ListLayout(imageUrl: 'assets/images/wing-map.png'),
  ListLayout(imageUrl: 'assets/images/wing-ticket.png'),
  ListLayout(imageUrl: 'assets/images/wing-point.png'),
];

//=========================Class ListOptions=================================//
class ListOptions extends StatelessWidget {
  final ListLayout layout;
  const ListOptions({required this.layout, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //=====================Button=========================================//
        getImageItem(
          onClick: () {},
        ),
      ],
    );
  }

  //=================getImageItem============================================//
  Widget getImageItem({required Function()? onClick}) {
    return Container(
      height: 100,
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: TextButton(
          onPressed: onClick,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(20),
            ),
            child: Image.asset(
              layout.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
