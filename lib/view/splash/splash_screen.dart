import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hair_service_app/util/color_category.dart';
import 'package:hair_service_app/util/constant.dart';
import 'package:hair_service_app/util/images.dart';

import '../../routes/app_routes.dart';
import '../../util/constant_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}




class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return WillPopScope(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      Constant.assetImagePath + GetImages.splashImage),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                    color: regularBlack.withOpacity(0.3)),
                child: Column(
                  children: [
                    getMultilineCustomFont(
                        "The professional specialists in near by",
                        30.sp,
                        regularWhite,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center),
                    getVerSpace(16.h),
                    getMultilineCustomFont(
                        "We welcome you to make an appoinments and join our family of clients.",
                        16.sp,
                        regularWhite,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center),
                    getVerSpace(56.h),
                    getButton(context, buttonColor, "Get started", regularWhite,
                            () {
                      Constant.sendToNext(context, Routes.homeMainScreenRoute);
                            }, 18.sp,
                            weight: FontWeight.w500,borderRadius: BorderRadius.circular(16.h))
                        .paddingSymmetric(horizontal: 59.h)
                  ],
                ).paddingSymmetric(horizontal: 24.h, vertical: 16.h),
              ).paddingSymmetric(horizontal: 16.h,vertical: 16.h)
            ],
          ).paddingOnly(top: 16.h),
        ),
      ),
      onWillPop: () async {
        Constant.backToFinish();
        return true;
      },
    );
  }
}
