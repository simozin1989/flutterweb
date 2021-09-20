import 'package:flutter/material.dart';
import 'package:flutterweb/Widgets/bottom_bar.dart';
import 'package:flutterweb/Widgets/floating_quick_qccesss_bar.dart';
import 'package:flutterweb/Widgets/freaturd_heading.dart';
import 'package:flutterweb/Widgets/main_carousel.dart';
import 'package:flutterweb/Widgets/main_hading.dart';
import 'package:flutterweb/Widgets/menu_drawer.dart';
import 'package:flutterweb/Widgets/teatured_tiles.dart';
import 'package:flutterweb/Widgets/top_bar_contents.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenSize.width < 800 ? AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(_opacity),
        title: const Center(
          child:  Text(
            'Author',
            style: TextStyle(
              color: Color(0xFF077bd7),
              fontSize: 26,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
      ): PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: TopBarContent(_opacity),
      ),
      // ignore: prefer_const_constructors
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: screenSize.height * 0.65,
                  width: screenSize.width,
                  child: Image.asset(
                    'images/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    FloatingQuickAccessBar(screenSize: screenSize),
                    FeaturedHeading(screenSize: screenSize),
                    FeaturedTiles(screenSize: screenSize),
                    MainHading(screenSize: screenSize),
                    MainCarousel(),
                    SizedBox(height: screenSize.height /10),
                    BottomBar(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
