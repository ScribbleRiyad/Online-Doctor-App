import 'package:flutter/material.dart';
import 'package:online_doctor_app/core/app_export.dart';
import 'package:online_doctor_app/widgets/custom_elevated_button.dart';

class SignUpSuccessDialog extends StatelessWidget {
  const SignUpSuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 36.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 26.v),
              Container(
                  height: 102.adaptSize,
                  width: 102.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
                  decoration: AppDecoration.fillBlue
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder51),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkPrimary,
                      height: 31.v,
                      width: 41.h,
                      radius: BorderRadius.circular(3.h),
                      alignment: Alignment.center)),
              SizedBox(height: 43.v),
              Text("lbl_success".tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 6.v),
              SizedBox(
                  width: 172.h,
                  child: Text("msg_your_account_has".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBluegray400
                          .copyWith(height: 1.50))),
              SizedBox(height: 22.v),
              CustomElevatedButton(text: "lbl_go_to_home".tr)
            ]));
  }
}
