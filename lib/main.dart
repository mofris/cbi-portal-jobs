import 'package:flutter/material.dart';
import 'package:future_jobs/pages/favorite_page.dart';
import 'package:future_jobs/pages/home_page.dart';
import 'package:future_jobs/pages/profile_page.dart';
import 'package:future_jobs/pages/splash_page.dart';
import 'package:future_jobs/pages/onboarding_page.dart';
import 'package:future_jobs/pages/sign_up_page.dart';
import 'package:future_jobs/pages/sign_in_page.dart';
import 'package:future_jobs/pages/notification_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-up': (context) => SignUpPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/notification': (context) => NotificationPage(),
        '/profile': (context) => ProfilePage(),
        '/favorite': (context) => FavoritePage(),
      },
    );
  }
}
