import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar({required BuildContext context, required String title}) {
  return AppBar(
    iconTheme: Theme.of(context).iconTheme,
    backgroundColor: Theme.of(context).colorScheme.background,
    title: Text(title, style: Theme.of(context).textTheme.displayMedium),
    centerTitle: true,
    scrolledUnderElevation: 0.0, // 스크롤시 앱바 색상 바뀌지 않게 함.
  );
}