import 'package:flutter/material.dart';
import 'package:online_doctor_app/core/app_export.dart';

// ignore: must_be_immutable
class MessagehistoryItemWidget extends StatelessWidget {
  const MessagehistoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 7.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_dr_marcus_horizon".tr,
                style: CustomTextStyles.titleMedium16,
              ),
              SizedBox(height: 4.v),
              Text(
                "msg_i_don_t_have_any2".tr,
                style: CustomTextStyles.bodySmallBluegray400,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 28.h,
            top: 11.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "lbl_10_24".tr,
                style: CustomTextStyles.bodySmallBluegray700,
              ),
              SizedBox(height: 3.v),
              Container(
                width: 13.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl_1".tr,
                  style: CustomTextStyles.labelSmallInterWhiteA700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
