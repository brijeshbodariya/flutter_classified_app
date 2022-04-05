import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_classified_app/Constants/constants.dart';
import 'package:flutter_classified_app/UI/Widgets/splash_screen.dart';
import 'package:flutter_classified_app/UI/main_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Classified App Clone',
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        mainUI: (BuildContext context) => const MainUI(),
        splashScreen: (BuildContext context) => const AnimatedSplashScreen(),
      },
      initialRoute: splashScreen,
    );
  }
}
