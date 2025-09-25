import 'package:anime_app/features/details/presentation/screens/details_screen.dart';
import 'package:anime_app/features/subscription/presentation/screens/subscription_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:anime_app/core/widgets/main_layout.dart';
import 'package:anime_app/features/home/presentation/screens/home.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'main',
        pageBuilder: (context, state) => const MaterialPage(
          child: MainLayout(),
        ),
      ),

      GoRoute(
        path: '/home',
        name: 'home',
        pageBuilder: (context, state) => const MaterialPage(
          child: Home(),
        ),
      ),
      GoRoute(
        path: '/detailsscreen',
        name: 'detailsscreen',
        pageBuilder: (context, state) => const MaterialPage(
          child: DetailsScreen(),
        ),
      ),
      GoRoute(
        path: '/subscriptionscreen',
        name: 'subscriptionscreen',
        pageBuilder: (context, state) =>  MaterialPage(
          child: SubscriptionScreen(),
        ),
      ),

    ],
    errorPageBuilder: (context, state) => MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text('Route not found: ${state.uri}'),
        ),
      ),
    ),
  );
}
