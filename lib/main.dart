import 'package:fitness_app/ui/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ui/home/home_page.dart';
import 'ui/login/login_page.dart';
import 'ui/profile/profile_page.dart';
import 'ui/splash/splash_page.dart';
import 'ui/tracker/progress_tracker_page.dart';
import 'ui/workout/workout_tracker_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      initialRoute: WelcomePage.route,
      routes: {
        WelcomePage.route: (context) => const WelcomePage(),
        LoginPage.route: (context) => const LoginPage(),
        DashboardPage.route: (context) => const DashboardPage(),
        HomePage.route: (context) => const HomePage(),
        ProfilePage.route: (context) => const ProfilePage(),
        WorkoutTrackerPage.route: (context) => const WorkoutTrackerPage(),
        ProgressTrackerPage.route: (context) => const ProgressTrackerPage(),
      },
    );
  }
}
