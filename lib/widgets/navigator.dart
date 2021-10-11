import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

bool canPop() {
  return navigatorKey.currentState!.canPop();
}

void pop<T extends Object?>([T? result]) {
  if (navigatorKey.currentState!.canPop()) {
    return navigatorKey.currentState!.pop<T>(result);
  }
}

Future<T?> pushNamed<T extends Object?>(
  String routeName, {
  Object? arguments,
}) {
  return navigatorKey.currentState!.pushNamed<T>(
    routeName,
    arguments: arguments,
  );
}

Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
  String routeName, {
  TO? result,
  Object? arguments,
}) {
  return navigatorKey.currentState!.pushReplacementNamed<T, TO>(
    routeName,
    arguments: arguments,
    result: result,
  );
}

Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
  String routeName, {
  TO? result,
  Object? arguments,
}) {
  return navigatorKey.currentState!.popAndPushNamed<T, TO>(
    routeName,
    arguments: arguments,
    result: result,
  );
}

Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
  String newRouteName,
  RoutePredicate predicate, {
  Object? arguments,
}) {
  return navigatorKey.currentState!.pushNamedAndRemoveUntil<T>(
    newRouteName,
    predicate,
    arguments: arguments,
  );
}
