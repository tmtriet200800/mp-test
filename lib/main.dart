import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'main/store/AppStore.dart';
import 'main/utils/AppTheme.dart';
import 'musicPodcast/screen/MPSplashScreen.dart';

void main() {
  runApp(MyApp());
}

AppStore appStore = AppStore();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MPSplashScreen(),
        theme: !appStore.isDarkModeOn ? AppThemeData.lightTheme : AppThemeData.darkTheme,
      ),
    );
  }
}
