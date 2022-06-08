library iamrich;

import 'package:flutter/material.dart' show BuildContext, Key, MaterialApp, MaterialScrollBehavior, runApp, StatelessWidget, Widget;
import 'package:i_am_rich/homescreen.dart' show Homescreen;

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      /* Developer Section */
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,

      /* App Section */
      home: Homescreen(),
      useInheritedMediaQuery: false,
      scrollBehavior: MaterialScrollBehavior(),
    );
  }


}
