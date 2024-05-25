import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext get currentContext => navigatorKey.currentContext!;

/// Media Query Helpers
Size mediaSize(BuildContext context) => MediaQuery.of(context).size;
double mediaHeight(BuildContext context) => MediaQuery.of(context).size.height;
double mediaWidth(BuildContext context) => MediaQuery.of(context).size.width;
MediaQueryData mediaQuery(BuildContext context) => MediaQuery.of(context);
