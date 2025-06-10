import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pdf_scanner/src/features/onboarding/onb.dart';
import 'package:pdf_scanner/src/features/onboarding/onboarding.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return OnboardingPage();
      },
    ),
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) {
        return const Onboarding();
      },
    ),
  ],
);
