library iamrich;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:i_am_rich/homescreen.dart' show Homescreen;

/// Main Method,
/// runs the App
void main() {
  runApp(const App());
}

/// Main Class of this App
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* Developer Section */
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,

      /* App Section */
      home: const Homescreen(),
      themeMode: ThemeMode.light,
      theme: _theme,
      useInheritedMediaQuery: false,
      scrollBehavior: const MaterialScrollBehavior(),
    );
  }

  /// Returns the Theme of this App
  ThemeData get _theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        color: Color.fromRGBO(255, 215, 0, 1),
        centerTitle: true,
        elevation: 15.0,
        systemOverlayStyle: SystemUiOverlayStyle(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      listTileTheme: const ListTileThemeData(
        style: ListTileStyle.list,
        enableFeedback: true,
      ),
    );
  }
}
