import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_category.dart';
import '../../util/constant.dart';
import '../../util/constant_widget.dart';
import '../../util/icons.dart';
import '../../util/images.dart';
import 'model_data/home_data.dart';
import 'models/home_data_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Service> serviceData = HomeData.getService();
List barberImages = [
  GetImages.user1stImage,
  GetImages.user2ndImage,
  GetImages.user3rdImage,
  GetImages.user4thImage,
  GetImages.user5thImage,
  GetImages.user6thImage,
];

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        getVerSpace(16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getSvgImage(GetIcons.menuIcon, height: 24.h, width: 24.h),
            getAssetImage(GetImages.userImage, height: 40.h, width: 40.h)
          ],
        ).paddingSymmetric(horizontal: 16.h),
        getVerSpace(16.h),
        Expanded(
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(child: getSearchField("Serch", searchController)),
                  getHorSpace(8.h),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.h),
                        color: textFieldBg),
                    child: getSvgImage(GetIcons.filteIcon).paddingAll(12.h),
                  )
                ],
              ).paddingSymmetric(horizontal: 16.h),
              getVerSpace(24.h),
              getAssetImage(GetImages.bannerImage)
                  .paddingSymmetric(horizontal: 16.h),
              getVerSpace(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getCustomFont("Our barbers", 24.sp, regularBlack, 1,
                      fontWeight: FontWeight.w500),
                  getCustomFont(" View all", 16.sp, darkGrayColor, 1,
                      fontWeight: FontWeight.w400),
                ],
              ).paddingSymmetric(horizontal: 16.h),
              getVerSpace(16.h),
              // ignore: sized_box_for_whitespace
              Container(
                height: 56.h,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  scrollDirection: Axis.horizontal,
                  itemCount: barberImages.length,
                  itemBuilder: (context, index) {
                    return getAssetImage(barberImages[index],
                            height: 56.h, width: 56.h)
                        .paddingSymmetric(horizontal: 12.h);
                  },
                ),
              ),
              getVerSpace(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getCustomFont("Service", 24.sp, regularBlack, 1,
                      fontWeight: FontWeight.w500),
                  getCustomFont(" View all", 16.sp, darkGrayColor, 1,
                      fontWeight: FontWeight.w400),
                ],
              ).paddingSymmetric(horizontal: 16.h),
              getVerSpace(16.h),
              GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                primary: false,
                shrinkWrap: true,
                itemCount: serviceData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: serviceData.length < 2 ? 1 : 2,
                    mainAxisExtent: 190.h,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 20.h),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.h),
                        image: DecorationImage(
                            image: AssetImage(Constant.assetImagePath +
                                serviceData[index].image!),
                            fit: BoxFit.fill)),
                    child: Align(
                            alignment: Alignment.bottomLeft,
                            child: getCustomFont(serviceData[index].title!,
                                18.sp, regularWhite, 1,
                                fontWeight: FontWeight.w500))
                        .paddingOnly(bottom: 16.h, left: 16.h),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
