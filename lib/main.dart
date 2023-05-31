import 'package:flutter/material.dart';
import 'package:porto_mobile1/pages/booking_page/booking_page.dart';
import 'package:porto_mobile1/pages/error_page/error_page.dart';
import 'package:porto_mobile1/pages/home_page/home_page.dart';
import 'package:porto_mobile1/pages/specific_page/specific_page.dart';
import 'package:porto_mobile1/pages/splash_page/splash_page.dart';
import 'package:porto_mobile1/providers/space_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        title: 'Cozy App',
        home: const SplashPage(),
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          BookingPage.routeName: (context) => const BookingPage(),
          ErrorPage.routeName: (context) => const ErrorPage(),
        },
      ),
    );
  }
}
