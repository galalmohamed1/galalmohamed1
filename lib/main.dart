import 'package:flutter/material.dart';
import 'package:islami/features/layout/page/home_page.dart';
import 'package:islami/features/onboard/onboard_screen.dart';
import 'package:islami/features/splash_page/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding") ?? false;
  runApp(MyApp(
    onboarding: onboarding,
  ));
}

class MyApp extends StatelessWidget {
  final bool onboarding;

  const MyApp({super.key, this.onboarding = false});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      initialRoute: onboarding ? "splashpage" : "homepage",
      routes: {
        'splashpage': (context) => SplashPage(),
        'onboardscreen': (context) => OnboardScreen(),
        'homepage': (context) => HomePage(),
      },
    );
  }
}
