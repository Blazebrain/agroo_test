import 'dart:math';

import 'package:agroo_test/ui/shared/colors.dart';
import 'package:agroo_test/ui/shared/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      onModelReady: (viewModel) => viewModel.setUp(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: ThemeColors.scaffoldBGColor,
          appBar: AppBar(
            backgroundColor: BrandColors.orangeColor,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(
              'Peoples List',
              style: AppTextStyles.logintextStyle.copyWith(fontSize: 24),
            ),
          ),
          body: viewModel.isBusy
              ? const Center(
                  child:
                      CircularProgressIndicator(color: BrandColors.orangeColor),
                )
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: viewModel.peoplesList.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: BrandColors.whiteColor,
                                elevation: 1.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                    horizontal: 16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name: ${viewModel.peoplesList[index].name!}',
                                        style: AppTextStyles
                                            .forgotPasswordtextStyle
                                            .copyWith(fontSize: 20.sp),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Gender: ${viewModel.peoplesList[index].gender!}',
                                        maxLines: 1,
                                        style: AppTextStyles
                                            .forgotPasswordtextStyle
                                            .copyWith(fontSize: 18.sp),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Birth Year: ${viewModel.peoplesList[index].birthYear!}',
                                        style: AppTextStyles
                                            .forgotPasswordtextStyle
                                            .copyWith(fontSize: 18.sp),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Eye color: ${viewModel.peoplesList[index].eyeColor!}',
                                        style: AppTextStyles
                                            .forgotPasswordtextStyle
                                            .copyWith(fontSize: 18.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
