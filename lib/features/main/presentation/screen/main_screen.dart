import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/main/cubit/main_cubit.dart';
import 'package:my_portfolio/features/main/cubit/main_states.dart';
import 'package:my_portfolio/features/main/presentation/widgets/main_screen_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainStates>(
      builder: (context, state) {
        var cubit = MainCubit.get(context);

        return Scaffold(
          appBar: MainScreenAppBar(),
          body: cubit.screens[cubit.currentTabIndex],
        );
      },
    );
  }
}
