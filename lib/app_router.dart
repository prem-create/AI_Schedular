// lib/app_router.dart
import 'package:ai_schedular/pages/time_table_generation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/login_page.dart';
import 'pages/admin_dashboard.dart';
import 'pages/conflict_and_scenerio.dart';
import 'pages/timetable_view.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const LoginPage(),
    ),
    GoRoute(
      path: '/admin',
      builder: (BuildContext context, GoRouterState state) => const AdminDashboard(),
    ),
    GoRoute(path: '/timetable_gen',
    builder: (BuildContext context, GoRouterState state) => const TimetableGeneration(),
    ),
    GoRoute(path: '/conflict_and_scenerio',
    builder: (BuildContext context, GoRouterState state) => const ConflictAndScenerio(),
    ),
    GoRoute(path: '/timetable_view',
    builder: (BuildContext context, GoRouterState state) => const TimetableView(),
    ),
  ],
);
