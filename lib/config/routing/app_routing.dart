// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stage_up/config/routing/app_routes.dart';
import 'package:stage_up/features/interships/ui/pages/internship_info_page.dart';
import 'package:stage_up/features/security/ui/pages/login_page.dart';
import 'package:stage_up/features/security/ui/pages/register_page.dart';
import 'package:stage_up/skeleton/pages/on_boarding_page.dart';
import 'package:stage_up/skeleton/pages/root_page.dart';
import 'package:stage_up/skeleton/pages/splash_page.dart';

class AppRouting {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        name: AppRoutes.splashRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashPage());
        }),
    GoRoute(
        path: '/onBoard',
        name: AppRoutes.onBoarding,
        pageBuilder: (context, state) {
          return const MaterialPage(child: OnBoardingPage());
        }),
    GoRoute(
        path: '/root',
        name: AppRoutes.rootRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AppRoot(),
          );
        }),
    GoRoute(
        path: '/login',
        name: AppRoutes.loginRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginPage(),
          );
        }),
    GoRoute(
        path: '/register',
        name: AppRoutes.registerRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: RegisterPage(),
          );
        }),
    GoRoute(
        path: '/internshipInfo',
        name: AppRoutes.internshipInfo,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: InternshipInfoPage(),
          );
        }),
  ]);
}