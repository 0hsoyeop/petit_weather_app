import 'package:flutter/material.dart';
import 'package:petit_weather_app/const/colors.dart';
import 'package:petit_weather_app/layout/screen_layout.dart';

class AreaSearchScreen extends StatelessWidget {
  const AreaSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.4)),
      borderRadius: BorderRadius.circular(8.0),
    );

    return ScreenLayout(
      title: '지역 검색',
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.red.withOpacity(0.4),
        ),
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    autofocus: true,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.displaySmall,
                    decoration: InputDecoration(
                      hintText: '지역이 어디인가요?',
                      hintStyle: TextStyle(
                        color: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .color!
                            .withOpacity(0.3),
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      border: baseBorder,
                      enabledBorder: baseBorder,
                      focusedBorder: baseBorder.copyWith(
                          borderSide: BorderSide(
                            color: highlightColor,
                          )),
                      disabledBorder: baseBorder,
                    ),
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_rounded,
                    size: 36.0,
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  '검색 결과가 없습니다.',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}