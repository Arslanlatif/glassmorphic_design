import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class BankCardPage extends StatelessWidget {
  const BankCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(0.90),
        child: const BankCard(),
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/bg_1.jpg'),
        ),
      ),
      child: Center(
        child: SizedBox(
          height: 200,
          width: 330,
          child: GlassContainer.frostedGlass(
            borderRadius: BorderRadius.circular(25.0),
            borderWidth: 1.5,
            blur: 15.0,
            frostedOpacity: 0.06,
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.0),
                Colors.white.withOpacity(0.06),
              ],
              begin: const Alignment(-0.10, -1.0),
              end: const Alignment(0.00, 1.0),
            ),
            borderGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.white.withOpacity(0.0),
                  Colors.grey.withOpacity(0.0),
                  Colors.grey.withOpacity(0.0),
                ],
                begin: const Alignment(0.35, -1.0),
                end: Alignment.bottomRight,
                stops: const [0.0, 0.30, 0.31, 1.0]),
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
            elevation: 5.0,
            child: CardChild(),
          ),
        ),
      ),
    );
  }
}

class CardChild extends StatelessWidget {
  final textStyle = GoogleFonts.sourceCodePro(
    color: Colors.white,
    fontSize: 16.0,
  );

  CardChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.fiveHundredPx,
              color: Colors.white,
              size: 32.0,
            ),
            Text('DART BANK', style: textStyle),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '5022 3386 9820 1246',
              style: textStyle.copyWith(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Monkey D Luffy', style: textStyle),
                Text(
                  '01/23',
                  style: textStyle.copyWith(
                      fontSize: 14.0, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
