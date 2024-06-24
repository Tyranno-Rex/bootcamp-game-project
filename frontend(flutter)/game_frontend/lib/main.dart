import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_frontend/backup/unsigned_main_page.dart';
import 'package:game_frontend/firebase_options.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  KakaoSdk.init(javaScriptAppKey: '038930029f4c94d4bf024f6553f1ba23');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
// <<<<<<< HEAD
      title: 'Unsigned start page',
      theme: ThemeData(),
      // home: GameResultPage(playerId: "2", score1: 1, score2: 1, gameId: int.parse("1")),
      // home: GameRoomPage(myUuid: '1', GameId: 11),
      // home: IngameLobby2(myUuid: '1', GameId: 11, method: "1"),
      // home: Game_Lobby(),
      home: LobbyPage(),
      // home: UnsignedMainPage(),
    );
// >>>>>>> main
  }
}
