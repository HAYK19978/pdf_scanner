import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pdf_scanner/src/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:pdf_scanner/src/features/rate_my_app/presentation/views/rate_my_app.dart';
import 'package:pdf_scanner/src/features/scanner/presentation/views/%20documents_view.dart';
import 'package:pdf_scanner/src/features/scanner/presentation/views/current_document_view.dart';
import 'package:pdf_scanner/src/features/scanner/presentation/views/no_documents_view.dart';
import 'package:pdf_scanner/src/features/splash_screen/presentation/views/splash_screen_view.dart';
import 'package:rate_my_app/rate_my_app.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        // return const SplashScreenView();
        return OnboardingView();
      },
    ),
    GoRoute(
      path: '/subsCribeView',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreenView();
      },
    ),
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) {
        return OnboardingView();
      },
    ),
    GoRoute(
      path: '/documents',
      builder: (BuildContext context, GoRouterState state) {
        return const DocumentsView();
      },
    ),
    GoRoute(
      path: '/rateMyApp',
      builder: (BuildContext context, GoRouterState state) {
        return const RateMyAppView();
      },
    ),
  ],
);
