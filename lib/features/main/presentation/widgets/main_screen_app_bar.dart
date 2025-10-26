import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/theming/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/core/widgets/custom_text.dart';
import 'package:my_portfolio/features/main/cubit/main_cubit.dart';
import 'package:my_portfolio/features/main/cubit/main_states.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainStates>(
      builder: (context, state) {
        var cubit = MainCubit.get(context);
        final double width = MediaQuery.of(context).size.width;

        return AppBar(
          automaticallyImplyLeading: false,
          title:
              width > 640
                  ? Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: width > 1200 ? 170 : 0,
                    ),
                    child: CustomText(text: 'Naira Ali'),
                  )
                  : null,
          flexibleSpace: SafeArea(
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onTap: () => cubit.changeTab(0),
                    text: 'Home',
                    textColor:
                        cubit.currentTabIndex == 0
                            ? AppColors.blue
                            : AppColors.secondaryTextColor,
                    fillColor:
                        cubit.currentTabIndex == 0
                            ? AppColors.white1
                            : Colors.transparent,
                    hoverColor: AppColors.white1,
                    borderColor:
                        cubit.currentTabIndex == 0
                            ? AppColors.lightBlue
                            : Colors.transparent,
                  ),
                  CustomButton(
                    onTap: () => cubit.changeTab(1),
                    text: 'About',
                    textColor:
                        cubit.currentTabIndex == 1
                            ? AppColors.blue
                            : AppColors.secondaryTextColor,
                    fillColor:
                        cubit.currentTabIndex == 1
                            ? AppColors.white1
                            : Colors.transparent,
                    borderColor:
                        cubit.currentTabIndex == 1
                            ? AppColors.lightBlue
                            : Colors.transparent,
                    hoverColor: AppColors.white1,
                  ),
                  CustomButton(
                    onTap: () => cubit.changeTab(2),
                    text: 'Projects',
                    textColor:
                        cubit.currentTabIndex == 2
                            ? AppColors.blue
                            : AppColors.secondaryTextColor,
                    fillColor:
                        cubit.currentTabIndex == 2
                            ? AppColors.white1
                            : Colors.transparent,
                    borderColor:
                        cubit.currentTabIndex == 2
                            ? AppColors.lightBlue
                            : Colors.transparent,
                    hoverColor: AppColors.white1,
                  ),
                  CustomButton(
                    onTap: () => cubit.changeTab(3),
                    text: 'Contact',
                    textColor:
                        cubit.currentTabIndex == 3
                            ? AppColors.blue
                            : AppColors.secondaryTextColor,
                    fillColor:
                        cubit.currentTabIndex == 3
                            ? AppColors.white1
                            : Colors.transparent,
                    borderColor:
                        cubit.currentTabIndex == 3
                            ? AppColors.lightBlue
                            : Colors.transparent,
                    hoverColor: AppColors.white1,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
