import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:game_frontend/backup/game_lobby.dart';
import 'package:game_frontend/backup/unsigned_main_page.dart';
import 'dart:convert';
import 'dart:html';

// void main() {
//   runApp(const MainSignedPage());
// }

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class Main_Signed_Page extends StatelessWidget {
  const Main_Signed_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          MainPageSigned(),
        ]),
      ),
    );
  }
}

class MainPageSigned extends StatelessWidget {
  Future<void> _handleLogoutButton(BuildContext context) async {
    final dio = Dio();
    final String? accessToken = window.localStorage['token'];

    if (accessToken == null) {
      print('access token null');
      return;
    }

    try {
      final Response response = await dio.post(
        // 'http://sprinboot-container:8080/user/logout',
        'http://localhost:8080/user/logout',
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken', // accessToken 변수 사용
          },
        ),
      );
      if (response.statusCode == 200) {
        print("logout successfully");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const UnsignedMainPage())); // 로그인 페이지로 이동
      } else {
        print("logout fail: ${response.statusCode}");
      }
    } catch (e) {
      print("error: $e");
    }
  }

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
              const Positioned(
                left: 69,
                top: 102,
                child: Text(
                  'Soccer Game',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 64,
                    fontFamily: 'Press Start 2P',
                    fontWeight: FontWeight.w400,
                    height: 0.02,
                  ),
                ),
              ),
              const Positioned(
                left: 69,
                top: 218,
                child: Text(
                  ':team 5',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 64,
                    fontFamily: 'Press Start 2P',
                    fontWeight: FontWeight.w400,
                    height: 0.02,
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 360,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Game_Lobby()));
                    print('Start 버튼이 눌렸습니다.');
                  },
                  borderRadius: BorderRadius.circular(2357.89),
                  child: Container(
                    width: 631,
                    height: 87,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 42.48, vertical: 28.32),
                    decoration: ShapeDecoration(
                      color: Color(0xFF758CFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2357.89),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'START',
                          style: TextStyle(
                            color: Color(0xFF141414),
                            fontSize: 28,
                            fontFamily: 'Press Start 2P',
                            fontWeight: FontWeight.w700,
                            height: 0.03,
                            letterSpacing: 1.51,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 460,
                child: InkWell(
                  onTap: () => _handleLogoutButton(context),
                  child: Container(
                    width: 631,
                    height: 87,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 42.48, vertical: 28.32),
                    decoration: ShapeDecoration(
                      color: Color(0xFFC8C5C2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2357.89),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'LOGOUT',
                          style: TextStyle(
                            color: Color(0xFF141414),
                            fontSize: 28,
                            fontFamily: 'Press Start 2P',
                            fontWeight: FontWeight.w700,
                            height: 0.03,
                            letterSpacing: 1.51,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 850,
                top: -55,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(0.0),
                  child: Container(
                    width: 751.85,
                    height: 1019.13,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage("images/game.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
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
