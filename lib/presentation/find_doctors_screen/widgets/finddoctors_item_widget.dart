import 'package:flutter/material.dart';
import 'package:online_doctor_app/core/app_export.dart';

// ignore: must_be_immutable
class FinddoctorsItemWidget extends StatelessWidget {
  const FinddoctorsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.v,
          width: 64.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgUserPrimary,
            height: 32.adaptSize,
            width: 32.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          "lbl_general".tr,
          style: CustomTextStyles.bodyMediumBluegray400,
        ),
      ],
    );
  }
}
