import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/routing/app_routes_names.dart';
import 'package:my_portfolio/features/main/cubit/main_cubit.dart';
import 'package:my_portfolio/features/main/presentation/screen/main_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.mainScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => MainCubit(),
                child: MainScreen(),
              ),
        );
      default:
        return null;
    }
  }
}
