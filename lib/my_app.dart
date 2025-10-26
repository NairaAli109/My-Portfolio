import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helpers/generale_functions.dart';
import 'package:my_portfolio/core/routing/app_routes.dart';
import 'package:my_portfolio/core/theming/app_theme.dart';

class MyPortfolioApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyPortfolioApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    GeneralFunctions.setPreferredOrientation();
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      theme: AppTheme.lightTheme,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
    );
  }
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
