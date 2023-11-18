import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:online_doctor_app/core/app_export.dart';
import 'package:online_doctor_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:online_doctor_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:online_doctor_app/widgets/app_bar/custom_app_bar.dart';
import 'package:online_doctor_app/widgets/custom_elevated_button.dart';
import 'package:online_doctor_app/widgets/custom_search_view.dart';
import 'package:online_doctor_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController searchController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildMap(context),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10.h, 83.v, 10.h, 27.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.h),
                                child: CustomSearchView(
                                    controller: searchController,
                                    hintText: "msg_search_location".tr)),
                            SizedBox(height: 69.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup183,
                                height: 268.v,
                                width: 285.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 12.h)),
                            Spacer(),
                            _buildConfirmYourAddress(context)
                          ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_ambulance".tr));
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
        height: 768.v,
        width: double.maxFinite,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }

  /// Section Widget
  Widget _buildConfirmYourAddress(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              CustomTextFormField(
                  controller: addressController,
                  hintText: "msg_confirm_your_address".tr,
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
                  borderDecoration: TextFormFieldStyleHelper.underLineGray),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLocationRed700,
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                            margin: EdgeInsets.only(top: 4.v, bottom: 10.v)),
                        Container(
                            width: 190.h,
                            margin: EdgeInsets.only(left: 17.h),
                            child: Text("msg_1111_abcd_rd_102".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 1.50)))
                      ])),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                  height: 50.v,
                  text: "msg_confirm_location".tr,
                  margin: EdgeInsets.symmetric(horizontal: 4.h))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
