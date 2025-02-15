import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glass_morphic_design/ios_home/glass_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class IosHome extends StatelessWidget {
  const IosHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const IosBody(),
      ),
    );
  }
}

class IosBody extends StatelessWidget {
  const IosBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: [
          const SizedBox(height: 40),
          GridView.count(
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              TimeWidget(),
              BatteryWidget(),
              CalendarWidget(),
              GoogleWidget(),
            ],
          ),
          const SizedBox(height: 20.0),
          Flexible(child: WeatherWidget()),
          const Spacer(),
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  final textStyle = GoogleFonts.raleway(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );

  TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Quarter', style: textStyle),
          Text('Past', style: textStyle),
          Text('Four', style: textStyle),
        ],
      ),
    );
  }
}

class BatteryWidget extends StatelessWidget {
  final textStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.w500,
  );

  BatteryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FaIcon(
            FontAwesomeIcons.batteryQuarter,
            color: Colors.white,
            size: 40.0,
          ),
          Text('62%', style: textStyle),
        ],
      ),
    );
  }
}

class CalendarWidget extends StatelessWidget {
  final textStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.w500,
  );

  CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 5.0),
              Text(
                'FRIDAY',
                style: textStyle.copyWith(
                  fontSize: 12.0,
                  color: const Color(0xff252550),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('28', style: textStyle),
            ],
          )
        ],
      ),
    );
  }
}

class GoogleWidget extends StatelessWidget {
  final textStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );

  GoogleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.35),
                  Colors.white.withOpacity(0.05),
                ],
              ),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Image.asset('assets/google.png', width: 25.0)],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Search', style: textStyle),
              Text('Google', style: textStyle),
            ],
          )
        ],
      ),
    );
  }
}

class WeatherWidget extends StatelessWidget {
  final textStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  final List<Weather> _timeWeatherList = [
    Weather(time: '7PM', iconData: FontAwesomeIcons.cloud, temp: '24°'),
    Weather(time: '8PM', iconData: FontAwesomeIcons.cloud, temp: '22°'),
    Weather(time: '9PM', iconData: FontAwesomeIcons.cloudMoon, temp: '21°'),
    Weather(time: '10PM', iconData: FontAwesomeIcons.solidMoon, temp: '21°'),
    Weather(time: '11PM', iconData: FontAwesomeIcons.solidMoon, temp: '20°'),
    Weather(time: '12PM', iconData: FontAwesomeIcons.solidMoon, temp: '19°'),
  ];

  WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kanpur', style: textStyle),
                  Text('24°', style: textStyle.copyWith(fontSize: 30)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Cloudy', style: textStyle.copyWith(fontSize: 12.0)),
                  Text('H:30° L:19°',
                      style: textStyle.copyWith(fontSize: 12.0)),
                  const SizedBox(height: 5.0),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _timeWeatherList,
          ),
        ],
      ),
    );
  }
}

class Weather extends StatelessWidget {
  Weather({
    super.key,
    required this.time,
    required this.iconData,
    required this.temp,
  });

  final String time;
  final IconData iconData;
  final String temp;

  final textStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(time, style: textStyle.copyWith(color: const Color(0xff252550))),
        const SizedBox(height: 10.0),
        FaIcon(
          iconData,
          color: Colors.white,
          size: 15.0,
        ),
        const SizedBox(height: 10.0),
        Text(temp, style: textStyle),
      ],
    );
  }
}
