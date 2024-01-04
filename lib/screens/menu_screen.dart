import 'package:flutter/material.dart';
import 'package:scanmyktp/screens/camera_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 926,
        decoration: BoxDecoration(
          color: Color(0xffeef5ff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 147,
              top: 900,
              child: Align(
                child: SizedBox(
                  width: 134,
                  height: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 5,
              top: 0,
              child: Container(
                width: 433,
                height: 923.93,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(23, 0, 5, 27),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 0, 6),
                            width: 390,
                            height: 203,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 186,
                                  top: 0,
                                  child: Align(
                                    child: SizedBox(
                                      width: 204,
                                      height: 165,
                                      child: Image.asset(
                                        'assets/images/righttop_splash.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 111,
                                  child: Align(
                                    child: SizedBox(
                                      width: 400,
                                      height: 92,
                                      child: Text(
                                        'Welcome\nto ScanMyKTP',
                                        style: TextStyle(
                                          fontFamily: 'Judson',
                                          fontSize: 40,
                                          fontWeight: FontWeight.w400,
                                          height: 1.15,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 121, 24),
                            constraints: BoxConstraints(
                              maxWidth: 254,
                            ),
                            child: Text(
                              'Scan your ID Card, Guaranteed Security, Unlimited Verification!',
                              style: TextStyle(
                                fontFamily: 'Judson',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 1.15,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 22, 0),
                            width: 383,
                            height: 389,
                            child: Image.asset(
                              'assets/images/midLogo_home.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 239.93,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 155,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 14.21),
                              width: 433,
                              height: 84.93,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff354259)),
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(74.46, 0, 88.96, 0),
                                    width: double.infinity,
                                    height: 59.32,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 23.54, 0),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  width: 39.66,
                                                  height: 37.29,
                                                  child: Image.asset(
                                                    'assets/images/historyBT.png', //history
                                                    width: 39.66,
                                                    height: 37.29,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'History',
                                                style: TextStyle(
                                                  fontFamily: 'JejuGothic',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  color: Color(0xff808080),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 16.83, 4.71),
                                          width: 134,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        Container(
                                          width: 46.21,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 38.3215332031,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 42,
                                                    height: 21,
                                                    child: Text(
                                                      'Result',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'JejuGothic',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.2575,
                                                        color:
                                                            Color(0xff808080),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 4.4118652344,
                                                top: 0,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 41.8,
                                                    height: 40.39,
                                                    child: TextButton(
                                                      onPressed: () {},
                                                      style:
                                                          TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/resultBT.png',
                                                        width: 41.8,
                                                        height: 40.39,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: 220,
                                height: 155,
                                child: Image.asset(
                                  'assets/images/leftbot_splash.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 174,
                            top: 108,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CameraScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    16.63, 16.46, 15.59, 16.46),
                                width: 75.88,
                                height: 79,
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/scanmidBT.png',
                                    width: 43.66,
                                    height: 46.08,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
