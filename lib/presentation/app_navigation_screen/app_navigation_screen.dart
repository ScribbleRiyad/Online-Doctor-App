import 'package:flutter/material.dart';
import 'package:online_doctor_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Reset Password - Email - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.resetPasswordEmailTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password - Verify Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordVerifyCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Top Doctor".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topDoctorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Find Doctors".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.findDoctorsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Doctor Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booking Doctor".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingDoctorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat with Doctor".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatWithDoctorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Audio Call".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.audioCallScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Video Call".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.videoCallScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Articles".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.articlesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pharmacy".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pharmacyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Drugs Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.drugsDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Cart".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.myCartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
