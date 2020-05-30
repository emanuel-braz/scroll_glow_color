import 'package:flutter/material.dart';

class _GlowBehavior extends ScrollBehavior {
  final Color color;
  final bool hideGlow;

  _GlowBehavior({this.color, this.hideGlow});

  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    if (hideGlow) return child;

    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
        return child;
      default:
        return GlowingOverscrollIndicator(
          child: child,
          axisDirection: axisDirection,
          color: color ?? Theme.of(context).accentColor,
        );
    }
  }
}

class ScrollGlowColor extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool hideGlow;

  const ScrollGlowColor({
    Key key,
    @required this.child,
    this.color,
    this.hideGlow = false,
  })  : assert(child != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: _GlowBehavior(hideGlow: hideGlow, color: color),
      child: child,
    );
  }
}
