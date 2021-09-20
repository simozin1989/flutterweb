// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutterweb/Widgets/text_info.dart';

import 'bottom_bar_column.dart';

class BottomBar extends StatelessWidget {
   BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: gradientStartColor,
            offset: Offset(1.0, 6.0),
            blurRadius: 1.0,
          ),
          BoxShadow(
            color: gradientEndColor,
            offset: Offset(1.0, 6.0),
            blurRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
            colors: [
              gradientStartColor,
              gradientEndColor
            ],
            begin: FractionalOffset(0.2, 0.2),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      padding: const EdgeInsets.all(30),

      child:MediaQuery.of(context).size.width < 800 ? Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: 'ABOUT',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              BottomBarColumn(
                heading: 'HELP',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),


            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              InfoText(
                type: 'Email',
                text: 'alilousimo81@gmail.com',
              ),
              SizedBox(height: 5),
              InfoText(
                type: 'Address',
                text: '128, Trymore Road, Delft, MN - 56124',
              )
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          const Center(
            child:  Text(
              'Copyright © 2021 | simozin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ): Column(

        children: [

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               BottomBarColumn(
                heading: 'ABOUT',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              BottomBarColumn(
                heading: 'HELP',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              Container(
                color: Colors.white,
                width: 2,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  InfoText(
                    type: 'Email',
                    text: 'alilousimo81@gmail.com',
                  ),
                  SizedBox(height: 5),
                  InfoText(
                    type: 'Address',
                    text: '128, Trymore Road, Delft, MN - 56124',
                  )
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const Text(
            'Copyright © 2021 | simozin',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}