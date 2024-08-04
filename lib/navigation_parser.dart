import 'package:flutter/material.dart';

class NavigationRouteInformationParser
    extends RouteInformationParser<List<RouteSettings>> {
  const NavigationRouteInformationParser() : super();
  @override
  Future<List<RouteSettings>> parseRouteInformation(
      RouteInformation routeInformation) {
    var path = routeInformation.uri.path;
    var query = routeInformation.uri.query;
    var location = "$path?$query";
    if (location.isEmpty) {
      return Future.value([const RouteSettings(name: '/')]);
    }
    Uri uri = Uri.parse(location);
    List<RouteSettings> route = [];
    var segments = uri.pathSegments;
    // var params = uri.queryParameters;
    if (segments.isEmpty) {
      route.add(const RouteSettings(name: '/'));
    } else {
      var firstSegment = segments.first;
      route.add(RouteSettings(name: "/$firstSegment"));
    }
    return Future.value(route);
  }

  @override
  RouteInformation restoreRouteInformation(List<RouteSettings> configuration) {
    if (configuration.isEmpty) {
      return RouteInformation(uri: Uri.parse('/'));
    }
    var location = '';
    for (var settings in configuration) {
      location += settings.name ?? "";
    }
    return RouteInformation(uri: Uri.parse(location));
  }
}
