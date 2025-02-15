import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:glass_morphic_design/ios_home/ios_home.dart';

void main() {
  runApp(const GlassKitApp());
}

class GlassKitApp extends StatelessWidget {
  const GlassKitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IosHome(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GlassContainer(
          height: 200,
          width: 330,
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.40),
              Colors.white.withOpacity(0.10),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderGradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.60),
              Colors.white.withOpacity(0.10),
              Colors.purpleAccent.withOpacity(0.05),
              Colors.purpleAccent.withOpacity(0.60),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 0.39, 0.40, 1.0],
          ),
          blur: 20,
          borderRadius: BorderRadius.circular(24.0),
          borderWidth: 1.0,
          elevation: 3.0,
          isFrostedGlass: true,
          shadowColor: Colors.purple.withOpacity(0.20),
        ),
      ),
    );
  }
}
