library iamrich;

import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Clipboard, ClipboardData;

/// Screen that explains a bit about the App
class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// URL for the App Repository
    const String repoURL = 'https://github.com/Jules-sh/I-am-rich';

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('About'),
      ),
      body: ListView(
        addRepaintBoundaries: true,
        addAutomaticKeepAlives: true,
        addSemanticIndexes: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        dragStartBehavior: DragStartBehavior.start,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 15),
          FittedBox(
            alignment: Alignment.center,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            fit: BoxFit.fill,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'This App is just a proof of how stupid I\'m rich '
                  'Apps actually are. There are multiple Apps like this '
                  'in the App Stores. Most of them can\'t do anything more '
                  'than this App, which is just to show a Message, telling you '
                  'that you are rich. \n'
                  '\n'
                  'With this App I wanted to proof, that it\'s possible to build '
                  'your own I\'m rich App in less than one hour. \n'
                  '\n',
                  maxLines: 100,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  textWidthBasis: TextWidthBasis.parent,
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: true,
                    applyHeightToLastDescent: true,
                    leadingDistribution: TextLeadingDistribution.even,
                  ),
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text('Version'),
            subtitle: Text(
              'FREE \n'
              'You are currently using the free Version of this App',
            ),
            autofocus: false,
            isThreeLine: true,
            enabled: true,
          ),
          ListTile(
            title: const Text('Repository URL'),
            subtitle: const Text(repoURL),
            isThreeLine: false,
            onTap: () => Clipboard.setData(
              const ClipboardData(text: repoURL),
            ),
          ),
        ],
      ),
    );
  }
}
