import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          SignupPage(),
        ]),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isVerifyCodeSent = false;
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _RealnameController = TextEditingController();
  final TextEditingController _NicknameController = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();
  final TextEditingController _ReconfirmpasswordController =
      TextEditingController();
  final TextEditingController _VerifycodeController = TextEditingController();

  Future<void> _handleVerifyCodeButton() async {
    final dio = Dio();

    // get 예시
    // try {
    //   final response = await dio.get(
    //     'http://localhost:8080/member/test',
    //   );
    //   print(response);
    // } catch (e) {
    //   print(e);
    // }

    // post 예시
    try {
      final Response response = await dio
          .post('http://localhost:8080/user/signup/email/verify', data: {
        'email': _EmailController.text,
      });
      if (response.statusCode == 200) {
        print(response);
      } else {
        print(response);
      }
    } catch (e) {
      print(e);
    }

    // final email = _EmailController.text;
    // final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$'); //email format check
    // if (!isVerifyCodeSent && (!emailRegex.hasMatch(email) || email.isEmpty)) {
    //   // 이메일 형식이 잘못되었거나 공란일 때
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('잘못된 이메일 형식입니다. 다시 시도해 주세요.')),
    //   );
    //   return;
    // }

    // final verifycode = _VerifycodeController.text;

    // setState(() { //verifycode send logic
    //   if (isVerifyCodeSent) {
    //     // Verify code 확인 로직을 여기에 추가
    //     print('Verify code 확인');
    //     print('verifycode: $verifycode');
    //   } else {
    //     // Verify code 보내는 로직을 여기에 추가
    //     print('Verify code 보냄');
    //     print('email: $email');
    //   }
    //   isVerifyCodeSent = !isVerifyCodeSent;
    // });
  }

  Future<void> _handleSginupButton() async {
    //sign up null exception, data send logic
    final dio = Dio();

    try {
      final Response response =
          await dio.post('http://localhost:8080/user/signup', data: {
        'email': _EmailController.text,
        'realname': _RealnameController.text,
        'nickname': _NicknameController.text,
        'password': _PasswordController.text,
        'reconfirm_password': _ReconfirmpasswordController.text,
      });
      if (response.statusCode == 200) {
        print(response);
      } else {
        print(response);
      }
    } catch (e) {
      print(e);
    }

    // final email = _EmailController.text;
    // final realname = _RealnameController.text;
    // final nickname = _NicknameController.text;
    // final password = _PasswordController.text;
    // final reconfirm_password = _ReconfirmpasswordController.text;
    // final verifycode = _VerifycodeController.text;

    // if (email.isEmpty || realname.isEmpty || nickname.isEmpty || password.isEmpty || reconfirm_password.isEmpty) {
    //   print('모든 입력란을 채워주세요.');
    //   return;
    // } else {
    //     print('email: $email');
    //     print('realname: $realname');
    //     print('nickname: $nickname');
    //     print('password: $password');
    //     print('reconfirmpassword: $reconfirm_password');
    // }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    var realnameController = _RealnameController;
    return Column(
      children: [
        Container(
          width: 1600,
          height: 960,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 925,
                top: 41,
                child: SizedBox(
                  width: 556,
                  height: 870,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        //sign up text
                        width: 175,
                        height: 93,
                        child: Text(
                          'sign up',
                          style: TextStyle(
                            color: Color(0xFF07021F),
                            fontSize: 48,
                            fontFamily: 'Literata',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.96,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            //email
                            height: 91,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Email',
                                  style: TextStyle(
                                    color: Color(0xFF7D7D7D),
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  width: 522,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextField(
                                    controller: _EmailController,
                                    decoration: const InputDecoration(
                                      hintText: 'example@exam.com',
                                      hintStyle: TextStyle(
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            //real name
                            height: 91,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'real name',
                                  style: TextStyle(
                                    color: Color(0xFF7D7D7D),
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  width: 522,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextField(
                                    controller: _RealnameController,
                                    decoration: const InputDecoration(
                                      hintText: 'real name',
                                      hintStyle: TextStyle(
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            //nickname
                            height: 91,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'nickname',
                                  style: TextStyle(
                                    color: Color(0xFF7D7D7D),
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  width: 522,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextField(
                                    controller: _NicknameController,
                                    decoration: const InputDecoration(
                                      hintText: 'nickname',
                                      hintStyle: TextStyle(
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            //password
                            height: 91,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'password',
                                  style: TextStyle(
                                    color: Color(0xFF7D7D7D),
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  width: 522,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextField(
                                    controller: _PasswordController,
                                    decoration: const InputDecoration(
                                      hintText: 'password',
                                      hintStyle: TextStyle(
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.text,
                                    obscureText:
                                        true, // 여기서 obscureText를 true로 설정합니다.
                                    obscuringCharacter:
                                        '●', // 원하는 크기의 문자로 설정 (예: '●' 또는 '◼')
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            //reconfirm password
                            height: 91,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'reconfirm password',
                                  style: TextStyle(
                                    color: Color(0xFF7D7D7D),
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  width: 522,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextField(
                                    controller: _ReconfirmpasswordController,
                                    decoration: const InputDecoration(
                                      hintText: 'reconfirm password',
                                      hintStyle: TextStyle(
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                    obscuringCharacter: '●',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (isVerifyCodeSent)
                            SizedBox(
                              //verifty code
                              height: 91,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'verify code',
                                    style: TextStyle(
                                      color: Color(0xFF7D7D7D),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Container(
                                    width: 522,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                    ),
                                    child: TextField(
                                      controller: _VerifycodeController,
                                      decoration: const InputDecoration(
                                        hintText: 'verify code',
                                        hintStyle: TextStyle(
                                          color: Color(0xFFC1C1C1),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      keyboardType: TextInputType.text,
                                      obscureText:
                                          true, // 여기서 obscureText를 true로 설정합니다.
                                      obscuringCharacter:
                                          '●', // 원하는 크기의 문자로 설정 (예: '●' 또는 '◼')
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        //back to login
                        height: 24,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    // 여기서 로그인 페이지로 돌아가는 로직을 추가합니다.
                                    Navigator.pushReplacementNamed(
                                        context, '/login');
                                  },
                                  child: const Text(
                                    'Back to Log in',
                                    style: TextStyle(
                                      color: Color(0xFF6153BD),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                      height: 1.2, // 텍스트의 높이를 조정합니다.
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 519,
                        height: 144,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              // verify code btn
                              onTap: _handleVerifyCodeButton,
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x7F07021F)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      isVerifyCodeSent
                                          ? 'Check Verify code'
                                          : 'Get Verify code',
                                      style: const TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            InkWell(
                              // signup btn
                              onTap: _handleSginupButton,
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                decoration: ShapeDecoration(
                                  color: Color(0xFF120071),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x7F07021F)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sign up',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // const SizedBox(height: 24),
                            //   InkWell( // signup btn
                            //     onTap: _handleSginupButton
                            //     child: Container(
                            //       width: double.infinity,
                            //       height: 60,
                            //       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            //       decoration: ShapeDecoration(
                            //         color: Color(0xFF120071),
                            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                            //       ),
                            //       child: const Row(
                            //         mainAxisSize: MainAxisSize.min,
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         crossAxisAlignment: CrossAxisAlignment.center,
                            //         children: [
                            //           Text(
                            //             'Sign up',
                            //             style: TextStyle(
                            //               color: Colors.white,
                            //               fontSize: 24,
                            //               fontFamily: 'Inter',
                            //               fontWeight: FontWeight.w500,
                            //               height: 0.04,
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -201,
                top: 144.59,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-0.26),
                  child: Container(
                    width: 751.85,
                    height: 1019.13,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://via.placeholder.com/752x1019"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
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
