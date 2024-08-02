import 'package:flutter/material.dart';
import 'package:petit_weather_app/weather/screens/area_search_screen.dart';
import 'package:petit_weather_app/weather/screens/home_screen.dart';
import 'package:petit_weather_app/weather/screens/setting_screen.dart';

class ScreenLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const ScreenLayout({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(title, style: Theme.of(context).textTheme.displayMedium),
        centerTitle: true,
        scrolledUnderElevation: 0.0, // 스크롤시 앱바 색상 바뀌지 않게 함.
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        width: MediaQuery.of(context).size.width / 3,
        backgroundColor: Theme.of(context).colorScheme.background,
        child: ListView(
          children: [
            const SizedBox(height: 40.0),
            ListTile(
              title: Text(
                '오늘 날씨',
                style: Theme.of(context).textTheme.displaySmall!,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                        Animation<double> animation1,
                        Animation<double> animation2) {
                      return const HomeScreen(); //변경 필요
                    },
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                '지역 검색',
                style: Theme.of(context).textTheme.displaySmall!,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                        Animation<double> animation1,
                        Animation<double> animation2) {
                      return const AreaSearchScreen(); //변경 필요
                    },
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                '설정',
                style: Theme.of(context).textTheme.displaySmall!,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                        Animation<double> animation1,
                        Animation<double> animation2) {
                      return const SettingScreen();
                    },
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
