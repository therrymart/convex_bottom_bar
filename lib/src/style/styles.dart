import 'package:convex_bottom_bar/src/style/titled_tab_style.dart';
import 'package:flutter/cupertino.dart';

import '../bar.dart';
import '../item.dart';
import 'fixed_circle_tab_style.dart';
import 'fixed_tab_style.dart';
import 'flip_tab_style.dart';
import 'textin_tab_style.dart';
import 'react_circle_tab_style.dart';
import 'react_tab_style.dart';

DelegateBuilder supportedStyle(TabStyle style,
    {List<TabItem> items,
    Color color,
    Color activeColor,
    Color backgroundColor,
    Curve curve}) {
  DelegateBuilder builder;
  switch (style) {
    case TabStyle.fixed:
      builder = FixedTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        convexIndex: items.length ~/ 2,
      );
      break;
    case TabStyle.fixedCircle:
      builder = FixedCircleTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        backgroundColor: backgroundColor,
        convexIndex: items.length ~/ 2,
      );
      break;
    case TabStyle.react:
      builder = ReactTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        curve: curve,
      );
      break;
    case TabStyle.reactCircle:
      builder = ReactCircleTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        backgroundColor: backgroundColor,
        curve: curve,
      );
      break;
    case TabStyle.textIn:
      builder = TextInTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        curve: curve,
      );
      break;
    case TabStyle.titled:
      builder = TitledTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        curve: curve,
        backgroundColor: backgroundColor,
      );
      break;
    case TabStyle.flip:
      builder = FlipTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        curve: curve,
      );
      break;
    default:
      builder = FixedTabStyle(
        items: items,
        color: color,
        activeColor: activeColor,
        convexIndex: items.length ~/ 2,
      );
      break;
  }
  return builder;
}
