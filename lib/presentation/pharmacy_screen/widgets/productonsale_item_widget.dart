import 'package:flutter/material.dart';
import 'package:online_doctor_app/core/app_export.dart';

// ignore: must_be_immutable
class ProductonsaleItemWidget extends StatelessWidget {
  const ProductonsaleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: ImageConstant.imgCalciumLLysin,
                height: 68.v,
                width: 66.h,
                radius: BorderRadius.circular(
                  34.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_obh_combi".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_75ml".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 2.v),
              Row(
                children: [
                  Container(
                    height: 17.v,
                    width: 74.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 71.h,
                            margin: EdgeInsets.only(right: 3.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_9_99".tr,
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text(
                                    "lbl_10_99".tr,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 1.v,
                            width: 29.h,
                            margin: EdgeInsets.only(bottom: 5.v),
                            decoration: BoxDecoration(
                              color: appTheme.gray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlus,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
