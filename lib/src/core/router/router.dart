import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pdf_scanner/src/features/onboarding/onboarding_view.dart';
import 'package:pdf_scanner/src/features/scanner/presentation/views/%20documents_page.dart';
import 'package:pdf_scanner/src/features/scanner/presentation/views/no_documents_view.dart';
import 'package:pdf_scanner/src/features/splash_screen/presentation/views/splash_screen_view.dart';
import 'package:pdf_scanner/src/features/subsribe/presentation/views/subsribe_view.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/SubsCribeView',
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
      path: '/noDocuments',
      builder: (BuildContext context, GoRouterState state) {
        return const NoDocumentsView();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const DocumentsView();
      },
    ),
  ],
);
