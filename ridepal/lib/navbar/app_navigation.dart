import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ridepal/Pages/Home.dart';
import 'package:ridepal/Pages/Trips.dart';
import 'package:ridepal/Pages/newsfeed.dart';
import 'package:ridepal/Pages/weather.dart';
import 'package:ridepal/navbar/NavigationBar.dart';

class AppNavigation {
  AppNavigation._();

  static String initRoute = '/home';

  // Private navigation keys
  static final GlobalKey<NavigatorState> _rootNavigationKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _rootNavigationHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final GlobalKey<NavigatorState> _rootNavigationVegestat =
      GlobalKey<NavigatorState>(debugLabel: 'shellvege');
  static final GlobalKey<NavigatorState> _rootNavigationBlog =
      GlobalKey<NavigatorState>(debugLabel: 'shellinfor');
  static final GlobalKey<NavigatorState> _rootNavigationlogin =
      GlobalKey<NavigatorState>(debugLabel: 'shelllogin');

  // Define the routes for GoRouter
  static final GoRouter router = GoRouter(
    initialLocation: initRoute,
    navigatorKey: _rootNavigationKey,
    debugLogDiagnostics: true,
    routes: [
      // Main navbar
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return CustomBottomNavigationBar(
            navigationShell: navigationShell,
          );
        },
        branches: [
          // Home
          StatefulShellBranch(
            navigatorKey: _rootNavigationHome,
            routes: [
              GoRoute(
                path: '/home',
                name: 'Home',
                builder: (context, state) {
                  return Home(
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          // Vegestatus
          StatefulShellBranch(
            navigatorKey: _rootNavigationVegestat,
            routes: [
              GoRoute(
                path: '/vegestatus',
                name: 'Vegestatus',
                builder: (context, state) {
                  return Trips(
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          // Info
          StatefulShellBranch(
            navigatorKey: _rootNavigationBlog,
            routes: [
              GoRoute(
                path: '/info',
                name: 'Info',
                builder: (context, state) {
                  return newsfeeds(
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            navigatorKey: _rootNavigationlogin,
            routes: [
              GoRoute(
                path: '/login',
                name: 'Login',
                builder: (context, state) {
                  return weather(
                    key: state.pageKey,
                  );
                },
                // Profileview
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
