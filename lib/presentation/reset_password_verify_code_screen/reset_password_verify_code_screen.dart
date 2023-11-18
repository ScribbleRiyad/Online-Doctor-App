import 'package:flutter/material.dart';
import 'package:online_doctor_app/core/app_export.dart';
import 'package:online_doctor_app/widgets/custom_elevated_button.dart';
import 'package:online_doctor_app/widgets/custom_pin_code_text_field.dart';

class ResetPasswordVerifyCodeScreen extends StatelessWidget {
  const ResetPasswordVerifyCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          margin: EdgeInsets.only(left: 1.h),
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 42.v),
                      _buildTitle(context),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: CustomPinCodeTextField(
                              context: context, onChanged: (value) {})),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                          text: "lbl_verify".tr,
                          margin: EdgeInsets.only(left: 1.h),
                          onPressed: () {
                            onTapVerify(context);
                          }),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_didn_t_receive_the".tr,
                                    style: CustomTextStyles.bodyMediumGray600),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("lbl_resend".tr,
                                        style: CustomTextStyles
                                            .titleSmallPrimary_1))
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_enter_verification".tr,
              style: theme.textTheme.headlineSmall),
          SizedBox(height: 10.v),
          Container(
              width: 273.h,
              margin: EdgeInsets.only(right: 54.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_enter_code_that2".tr,
                        style: CustomTextStyles.titleMediumGray500Medium),
                    TextSpan(
                        text: "lbl_08528188".tr,
                        style: CustomTextStyles.titleMediumMedium16)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the createNewPasswordScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createNewPasswordScreen);
  }
}
