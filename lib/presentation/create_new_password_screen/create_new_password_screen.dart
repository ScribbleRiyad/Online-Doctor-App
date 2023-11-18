import 'package:flutter/material.dart';
import 'package:online_doctor_app/core/app_export.dart';
import 'package:online_doctor_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:online_doctor_app/widgets/app_bar/custom_app_bar.dart';
import 'package:online_doctor_app/widgets/custom_elevated_button.dart';
import 'package:online_doctor_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreen extends StatelessWidget {
  CreateNewPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 42.v),
                    child: Column(children: [
                      _buildTitle(context),
                      SizedBox(height: 24.v),
                      CustomTextFormField(
                          controller: newpasswordController,
                          hintText: "msg_enter_new_password".tr,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 56.v),
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(12.h, 16.v, 24.h, 16.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmarkGray500,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          suffixConstraints: BoxConstraints(maxHeight: 56.v),
                          obscureText: true),
                      SizedBox(height: 16.v),
                      CustomTextFormField(
                          controller: confirmpasswordController,
                          hintText: "msg_confirm_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 56.v),
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmarkGray500,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          suffixConstraints: BoxConstraints(maxHeight: 56.v),
                          obscureText: true),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          text: "lbl_create_password".tr,
                          onPressed: () {
                            onTapCreatePassword(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, right: 311.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_create_new_password".tr, style: theme.textTheme.headlineSmall),
      SizedBox(height: 12.v),
      Text("msg_create_your_new".tr, style: CustomTextStyles.titleMediumGray500)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapCreatePassword(BuildContext context) {
    // TODO: implement Actions
  }
}
