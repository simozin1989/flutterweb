import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBarContent extends StatefulWidget {
  final double opacity;

  const TopBarContent(this.opacity, {Key? key}) : super(key: key);

  @override
  State<TopBarContent> createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        color: Colors.white.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: screenSize.width / 4),
                const Text(
                  'Author',
                  style: TextStyle(
                    color: Color(0xFF077bd7),
                    fontSize: 26,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[0] = true
                          : _isHovering[0] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            color: _isHovering[0]
                                ? const Color(0xFF077bd7)
                                : const Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[0],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[1] = true
                          : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                            color: _isHovering[0]
                                ? const Color(0xFF077bd7)
                                : const Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[1],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[2] = true
                          : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'History',
                        style: TextStyle(
                            color: _isHovering[0]
                                ? const Color(0xFF077bd7)
                                : const Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[2],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 15),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value
                          ? _isHovering[3] = true
                          : _isHovering[3] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Contact',
                        style: TextStyle(
                            color: _isHovering[0]
                                ? const Color(0xFF077bd7)
                                : const Color(0xFF077bd7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[3],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
