import 'dart:async';
import 'package:flutter/material.dart';
import 'package:internship_webapp/screens/home_screen.dart';
import 'package:internship_webapp/src/constants.dart';

NavigationRouterDelegate routerDelegate = NavigationRouterDelegate();

class NavigationRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<List<RouteSettings>> {
  final _pages = <Page>[];
  List<Completer<String>?>? _resultCompleter;

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: List.of(_pages),
      onPopPage: _onPopPage,
    );
  }

  bool _onPopPage(Route route, dynamic result) {
    if (!route.didPop(result)) return false;
    popRoute();
    return true;
  }

  @override
  Future<bool> popRoute() {
    if (_pages.length > 1) {
      _pages.removeLast();
      notifyListeners();
      return Future.value(true);
    }
    return Future.value(false);
  }

  @override
  List<Page> get currentConfiguration => List.of(_pages);

  void pushPage({required String name, dynamic arguments}) {
    _pages.add(_createPage(RouteSettings(name: name, arguments: arguments)));
    notifyListeners();
  }

  void popAllAndPushPage({required String name, dynamic arguments}) {
    clearCompleter();
    _pages.clear();
    _pages.add(_createPage(RouteSettings(
      name: name,
      arguments: arguments,
    )));
    notifyListeners();
  }

  void clearCompleter() {
    _resultCompleter?.forEach((element) {
      element?.complete(AppConstant.refresh);
    });
    _resultCompleter?.clear();
  }

  Future<String?> waitForResult(
      {required String name, dynamic arguments}) async {
    _resultCompleter ??= [];
    var currentCompleter = Completer<String>();
    _resultCompleter?.add(currentCompleter);
    _pages.add(_createPage(RouteSettings(
      name: name,
      arguments: arguments,
    )));
    notifyListeners();
    return currentCompleter.future;
  }

  void returnWith(String value) {
    if (_resultCompleter?.isNotEmpty == true) {
      var currentCompleter = _resultCompleter?.last;
      if (currentCompleter != null) {
        _pages.removeLast();
        currentCompleter.complete(value);
        notifyListeners();
        _resultCompleter?.removeLast();
      }
    } else {
      popAllAndPushPage(name: Screen.homeScreen);
    }
  }

  @override
  Future<void> setNewRoutePath(List<RouteSettings> configuration) {
    List<Page> pages = [];
    for (var config in configuration) {
      pages.add(_createPage(config));
    }

    _setPath(pages);
    return Future.value(null);
  }

  void _setPath(List<Page> pages) {
    _pages.clear();
    _pages.addAll(pages);
    notifyListeners();
  }

  MaterialPage _createPage(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return const MaterialPage(child: HomeScreen());
      default:
        return MaterialPage(
          child: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
