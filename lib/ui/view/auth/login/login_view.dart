import 'package:agroo_test/ui/shared/colors.dart';
import 'package:agroo_test/ui/shared/dumb_widgets/const_ui_helpers.dart';
import 'package:agroo_test/ui/shared/dumb_widgets/reusable_button.dart';
import 'package:agroo_test/ui/shared/textstyles.dart';
import 'package:agroo_test/ui/view/auth/login/login_viewmodel.dart';
import 'package:agroo_test/ui/view/auth/login/widgets/social_icons.dart';
import 'package:agroo_test/utils/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: ThemeColors.scaffoldBGColor,
          body: viewModel.isBusy
              ? const Center(
                  child: CircularProgressIndicator(
                    color: BrandColors.orangeColor,
                  ),
                )
              : Stack(
                  children: [
                    Positioned.fill(
                      bottom: 130.h,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 16,
                            ),
                          ],
                          color: BrandColors.whiteColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(56),
                            bottomRight: Radius.circular(56),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(),
                            Center(
                              child: Image.asset(
                                ImageAssets.logoImage,
                                height: 80.h,
                                width: 80.w,
                              ),
                            ),
                            verticalSpaceRegular,
                            Text(
                              'Login',
                              style: AppTextStyles.logintextStyle.copyWith(
                                color: BrandColors.greyColor,
                              ),
                            ),
                            verticalSpaceLarge,
                            const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail),
                                hintText: 'Email Address',
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: BrandColors.greyColor),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            verticalSpaceMedium,
                            const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                hintText: 'Password',
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: BrandColors.greyColor),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            verticalSpaceExtraMedium,
                            Text(
                              'Forgot password?',
                              style: AppTextStyles.forgotPasswordtextStyle
                                  .copyWith(color: BrandColors.orangeColor),
                            ),
                            verticalSpaceExtraMedium,
                            ReusableButton(
                              onPressed: () {
                                viewModel.login('David', '12345678');
                              },
                              label: 'LOGIN',
                              labelColor: BrandColors.whiteColor,
                            ),
                            verticalSpaceRegular,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: Ce,
                              children: [
                                Text(
                                  'Don\'t have an account?',
                                  style: AppTextStyles.buttonText.copyWith(
                                    color: BrandColors.blackColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Create new',
                                    style: AppTextStyles.buttonText.copyWith(
                                      color: BrandColors.orangeColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            verticalSpaceExtraMedium,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 110.h,
                      left: (MediaQuery.of(context).size.width / 2) - 16,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: BrandColors.whiteColor,
                          radius: 24.r,
                          child: Text(
                            'OR',
                            style: AppTextStyles.buttonText.copyWith(
                              color: BrandColors.blackColor,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SocialLoginButton(
                            title: 'Login with Gmail',
                            imagePath: ImageAssets.googleLogo,
                          ),
                          SocialLoginButton(
                            imagePath: ImageAssets.metaLogo,
                            title: 'Login with Facebook',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
        );
      },
    );
  }
}
