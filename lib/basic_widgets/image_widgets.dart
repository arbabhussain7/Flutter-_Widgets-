import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/dr-israr.png'),
          SizedBox(
            height: 22,
          ),
          Container(
            width: 121,
            height: 121,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/molana-ishaq.png'))),
          ),
          SizedBox(
            height: 22,
          ),
          Image.network(
              'http://newsimage.radio.gov.pk/20240922/20318115941726981680.jpg'),
          SizedBox(
            height: 22,
          ),
          CircleAvatar(
            maxRadius: 50,
            backgroundImage: NetworkImage(
                'https://faraan.org/en/wp-content/uploads/2024/09/jawad-naqvi.jpg'),
          )
        ],
      ),
    );
  }
}
