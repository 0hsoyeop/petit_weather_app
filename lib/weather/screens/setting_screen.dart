import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:petit_weather_app/const/colors.dart';
import 'package:petit_weather_app/layout/screen_layout.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isC = true;
  bool isAlarmOk = true;
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      title: '설정',
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        child: ListView(
          children: [
            _switchTile(
                context: context,
                title: '단위',
                toggleValue: isC,
                subtitle: '기본 단위는 섭씨온도예요.',
                onChanged: (value) {
                  setState(() {
                    isC = value;
                  });
                }),
            _switchTile(
                context: context,
                title: '알림',
                toggleValue: isAlarmOk,
                onChanged: (value) {
                  setState(() {
                    isAlarmOk = value;
                  });
                }),
            _switchTile(
                context: context,
                title: '다크모드',
                toggleValue: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                }),
            ListTile(
              title: Text(
                '버전 정보',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              subtitle: const Text(
                'v1.0.0',
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SwitchListTile _switchTile(
      {required BuildContext context,
        required String title,
        required bool toggleValue,
        String? subtitle,
        required void Function(bool)? onChanged}) {
    return SwitchListTile(
        value: toggleValue,
        splashRadius: 0.0,
        hoverColor: Colors.transparent,
        activeColor: highlightColor,
        inactiveThumbColor:
        Theme.of(context).textTheme.displayMedium!.color!.withOpacity(0.3),
        inactiveTrackColor: Colors.grey,
        trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
        visualDensity: VisualDensity.comfortable,
        subtitle: subtitle != null
            ? Text(
          subtitle,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: Colors.grey, fontSize: 12.0),
        )
            : SizedBox(),
        title: Text(title, style: Theme.of(context).textTheme.displayMedium),
        onChanged: onChanged);
  }
}