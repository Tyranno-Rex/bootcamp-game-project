import 'package:flutter/material.dart';


class Lobbytest extends StatelessWidget {
  const Lobbytest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          GamePage(),
        ]),
      ),
    );
  }
}

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1600,
          height: 960,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFF2F2F2)),
          child: Stack(
            children: [
              Positioned(
                left: 50,
                top: 862,
                child: Container(
                  width: 1500,
                  height: 70,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1175,
                        top: 0,
                        child: Container(
                          width: 325,
                          height: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 325,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFC8C5C2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 25,
                                top: 17,
                                child: SizedBox(
                                  width: 274,
                                  height: 36,
                                  child: Text(
                                    'CREATE ROOM',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Press Start 2P',
                                      fontWeight: FontWeight.w400,
                                      height: 0.07,
                                      letterSpacing: 0.96,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 220,
                          height: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 220,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFC8C5C2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 22,
                                top: 17,
                                child: SizedBox(
                                  width: 176,
                                  height: 36,
                                  child: Text(
                                    'SETTING',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Press Start 2P',
                                      fontWeight: FontWeight.w400,
                                      height: 0.07,
                                      letterSpacing: 0.96,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 94,
                child: Container(
                  width: 1501,
                  height: 748,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 452,
                        top: 0,
                        child: Container(
                          width: 1049,
                          height: 748,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFF080808),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x7FFFFFFF),
                                blurRadius: 2.83,
                                offset: Offset(0, 2.83),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 34,
                                top: 34,
                                child: Container(
                                  width: 980.80,
                                  height: 680.17,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF1B1B1B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2.83),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      const Positioned(
                                        left: 40,
                                        top: 7,
                                        child: SizedBox(
                                          width: 848.09,
                                          height: 33,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 575.11,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 272.98,
                                                  height: 32,
                                                  child: Text(
                                                    'name',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'Press Start 2P',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                      letterSpacing: -0.60,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 119.62,
                                                top: 1,
                                                child: SizedBox(
                                                  width: 466.22,
                                                  height: 32,
                                                  child: Text(
                                                    'Room name',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'Press Start 2P',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                      letterSpacing: -0.60,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 1,
                                                child: SizedBox(
                                                  width: 84.86,
                                                  height: 32,
                                                  child: Text(
                                                    'No.',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'Press Start 2P',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                      letterSpacing: -0.60,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 11,
                                        top: 64,
                                        child: Container(
                                          width: 959,
                                          height: 73,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              const Positioned(
                                                left: 28,
                                                top: 24,
                                                child: SizedBox(
                                                  width: 774.77,
                                                  height: 32,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 582.61,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 192.16,
                                                          height: 32,
                                                          child: Text(
                                                            'name',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                              letterSpacing:
                                                                  -0.60,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 116.52,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 454.85,
                                                          height: 32,
                                                          child: Text(
                                                            'Room name',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                              letterSpacing:
                                                                  -0.60,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 87.75,
                                                          height: 32,
                                                          child: Text(
                                                            'No.',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0,
                                                              letterSpacing:
                                                                  -0.60,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 829.10,
                                                top: 7,
                                                child: Container(
                                                  width: 122.95,
                                                  height: 59,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 42.48,
                                                      vertical: 28.32),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF393434),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                  ),
                                                  child: const Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'JOIN',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 24,
                                                          fontFamily:
                                                              'Press Start 2P',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0.07,
                                                          letterSpacing: -0.60,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 424,
                          height: 748,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFF080808),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.97),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x7FFFFFFF),
                                blurRadius: 2.83,
                                offset: Offset(0, 2.83),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 34,
                                top: 34,
                                child: Container(
                                  width: 355.80,
                                  height: 680.17,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF1B1B1B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2.83),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      const Positioned(
                                        left: -8,
                                        top: 393,
                                        child: SizedBox(
                                          width: 369,
                                          height: 248,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 242,
                                                top: 102,
                                                child: SizedBox(
                                                  width: 120,
                                                  height: 52,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 32,
                                                        child: SizedBox(
                                                          width: 120,
                                                          height: 20,
                                                          child: Text(
                                                            '0',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 120,
                                                          height: 20,
                                                          child: Text(
                                                            'DRAW',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 120,
                                                top: 102,
                                                child: SizedBox(
                                                  width: 120,
                                                  height: 52,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 32,
                                                        child: SizedBox(
                                                          width: 120,
                                                          height: 20,
                                                          child: Text(
                                                            '0',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 120,
                                                          height: 20,
                                                          child: Text(
                                                            'LOSE',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 102,
                                                child: SizedBox(
                                                  width: 120,
                                                  height: 52,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 120,
                                                          height: 20,
                                                          child: Text(
                                                            'WIN',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 32,
                                                        child: SizedBox(
                                                          width: 120,
                                                          height: 20,
                                                          child: Text(
                                                            '0',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 8,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 230,
                                                  height: 52,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 16,
                                                        top: 32,
                                                        child: SizedBox(
                                                          width: 214,
                                                          height: 20,
                                                          child: Text(
                                                            'MARIO',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 230,
                                                          height: 20,
                                                          child: Text(
                                                            'USERNAME',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 8,
                                                top: 196,
                                                child: SizedBox(
                                                  width: 230,
                                                  height: 52,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 32,
                                                        child: SizedBox(
                                                          width: 230,
                                                          height: 20,
                                                          child: Text(
                                                            '0 %',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  -2.40,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 230,
                                                          height: 20,
                                                          child: Text(
                                                            'WIN RATE',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 238,
                                                top: 196,
                                                child: SizedBox(
                                                  width: 131,
                                                  height: 52,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 32,
                                                        child: SizedBox(
                                                          width: 131,
                                                          height: 20,
                                                          child: Text(
                                                            'TIER',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 131,
                                                          height: 20,
                                                          child: Text(
                                                            'RANK',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 24,
                                                              fontFamily:
                                                                  'Press Start 2P',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.07,
                                                              letterSpacing:
                                                                  0.96,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 356,
                                          height: 356,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFD9D9D9),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 20,
                child: Container(
                  width: 1500,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1310,
                        top: 0,
                        child: Container(
                          width: 190,
                          height: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 190,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF758CFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 18,
                                top: 15,
                                child: SizedBox(
                                  width: 153,
                                  height: 29,
                                  child: Text(
                                    'LOGOUT',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Press Start 2P',
                                      fontWeight: FontWeight.w400,
                                      height: 0.07,
                                      letterSpacing: 0.96,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 190,
                          height: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 190,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF758CFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 22,
                                top: 18,
                                child: SizedBox(
                                  width: 146,
                                  height: 23,
                                  child: Text(
                                    'HOME',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Press Start 2P',
                                      fontWeight: FontWeight.w400,
                                      height: 0.07,
                                      letterSpacing: 0.96,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
