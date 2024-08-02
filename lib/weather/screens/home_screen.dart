import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:petit_weather_app/layout/screen_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      title: '오늘 날씨',
      child: Container(
        // color: Colors.red.withOpacity(0.4),
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Seoul',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    'Korea',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.wb_sunny_outlined,
                    size: 40.0,
                  ),
                  Text('Normally cloudy',
                      style: Theme.of(context).textTheme.displayMedium!),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: const Placeholder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}