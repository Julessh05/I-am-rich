library iamrich;

import 'package:flutter/material.dart';
import 'package:i_am_rich/about_screen.dart';

/// Homescreen of this App.
/// This screen is shown when you open the App.
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

/// State of the Homescreen
class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('💲 I am rich 💲'),
        automaticallyImplyLeading: false,
        actions: <IconButton>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) {
                  return const AboutScreen();
                },
              ));
            },
            icon: const Icon(Icons.info_outline_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.diamond_outlined,
              size: 100,
            ),
            const SizedBox(height: 20),
            Text('I am super rich', style: _style),
            Text('💸 💸 💸', style: _style)
          ],
        ),
      ),
    );
  }

  /// Text Style for the Text
  /// shown underneath the Icon
  TextStyle get _style {
    return const TextStyle(
      fontSize: 20,
      decoration: TextDecoration.none,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    );
  }
}
