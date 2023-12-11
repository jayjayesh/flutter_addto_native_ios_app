import 'package:flutter/material.dart';
import 'package:flutter_nps/capture/view/capture_end_page.dart';
import 'package:flutter_nps/capture/view/capture_page.dart';
import 'package:flutter_nps/default_counter/default_counter_page.dart';
import 'package:flutter_nps/default_counter/default_hello_world_page.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case CapturePage.routeName:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (_, __, ___) => const CapturePage(),
          transitionsBuilder: buildTransitionBuilder,
        );
      case CaptureEndPage.routeName:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (_, __, ___) => const CaptureEndPage(),
          transitionsBuilder: buildTransitionBuilder,
        );
      case DefaultCounterPage.routeName:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, __, ___) {
            String argumentReceived = '';
            if (args is Map) {
              argumentReceived = args["message"] as String;
            }
            return DefaultCounterPage(title: argumentReceived);
          },
          transitionsBuilder: buildTransitionBuilder,
        );
      case DefaultHelloWorldPage.routeName:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (_, __, ___) => const DefaultHelloWorldPage(),
          transitionsBuilder: buildTransitionBuilder,
        );
      default:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (_, __, ___) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
          transitionsBuilder: buildTransitionBuilder,
        );
    }
  }

  static Widget buildTransitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
