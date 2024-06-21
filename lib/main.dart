import 'package:car_rental_app/showroom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// HomeScreen dosyasını içe aktarın

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Rental App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home:
          const Showroom(), // SplashScreen'i uygulama başlangıcı olarak belirtiyoruz
    );
  }
}
