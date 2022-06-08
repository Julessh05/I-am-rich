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
      theme: _theme,
      useInheritedMediaQuery: false,
      scrollBehavior: const MaterialScrollBehavior(),
    );
  }

  /// Returns the Theme of this App
  ThemeData get _theme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
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
    );
  }
}
