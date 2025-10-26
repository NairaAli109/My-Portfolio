import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/theming/app_colors.dart';
import 'package:my_portfolio/features/about/presentation/screen/about_screen.dart';
import 'package:my_portfolio/features/contact/presentation/screen/contact_screen.dart';
import 'package:my_portfolio/features/home/presentation/screen/home_screen.dart';
import 'package:my_portfolio/features/main/cubit/main_states.dart';
import 'package:my_portfolio/features/projects/presentation/screen/projects_screen.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(InitialMainState());

  static MainCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    HomeScreen(),
    AboutScreen(),
    ProjectsScreen(),
    ContactScreen(),
  ];

  int currentTabIndex = 0;
  void changeTab(int index) {
    currentTabIndex = index;
    print(currentTabIndex);
    emit(ChangeTabState());
  }
}
