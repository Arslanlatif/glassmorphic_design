import 'package:flutter/material.dart';
import 'package:glass_morphic_design/ios_home/glass_widget.dart';

class GlassCardList extends StatelessWidget {
  const GlassCardList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/bg_1.jpg'),
          ),
        ),
        child: SafeArea(
          child: ListView.separated(
            itemCount: 50,
            padding: const EdgeInsets.all(16),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return SizedBox(
                height: 102,
                child: GlassWidget(
                  child: ListTile(
                    title: Text(
                      'Item $index',
                      style: const TextStyle(color: Colors.white),
                    ),
                    leading: const Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      'Subtitle $index',
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
