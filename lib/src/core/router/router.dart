import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pdf_scanner/src/core/widgets/loader.dart';
import 'package:pdf_scanner/src/features/onboarding/onb.dart';
import 'package:pdf_scanner/src/features/onboarding/onboarding.dart';
import 'package:pdf_scanner/src/features/scanner/presentation/views/%20documents_page.dart';
import 'package:pdf_scanner/src/features/scanner/presentation/views/no_documents_view.dart';
import 'package:pdf_scanner/src/features/subsribe/presentation/views/subsribe_view.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const DocumentsPage();
      },
    ),
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) {
        return const Onboarding();
      },
    ),
    GoRoute(
      path: '/subscribe',
      builder: (BuildContext context, GoRouterState state) {
        return const Onboarding();
      },
    ),
  ],
);
