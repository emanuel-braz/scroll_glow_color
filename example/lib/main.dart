import 'package:flutter/material.dart';
import 'package:scroll_glow_color/widget/scroll_glow_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ScrollGlowColor Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: Scaffold(
              body: ScrollGlowColor( // Use ScrollGlowColor as parent of "Scrollables" widgets
                  color: Color(0xFFB900A5), // use a custom color instead default accentColor theme color
                  hideGlow: false, // default is false
                  child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(' Tile ${i+1}'),
                      );
                    },
                  ))),
        ));
  }
}
