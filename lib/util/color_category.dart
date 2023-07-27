import 'package:flutter/services.dart';
Color regularBlack = "#000000".toColor();
Color regularWhite = "#FFFFFF".toColor();
Color blackColor = "#222628".toColor();
Color bgColor = "#FFFFFF".toColor();
Color darkGrayColor = "#707070".toColor();
Color bordrColor = "#DFDFDF".toColor();



Color buttonColor = "#FDA55B".toColor();


Color grayColor = "#5A5A5A".toColor();
Color fruitCategoryColor = "#FBE3C3".toColor();
Color vegitableCategoryColor = "#F5FDDE".toColor();
Color meatCategoryColor = "#FFE4EC".toColor();
Color seaFoodCategoryColor = "#F6ECDB".toColor();
Color sweetCategoryColor = "#FBF0CE".toColor();
Color dairyCategoryColor = "#F4E9CA".toColor();
Color backryCategoryColor = "#FFEFE0".toColor();
Color drayfruitCategoryColor = "#FFE3D7".toColor();
Color textFieldBg = "#F5F5F5".toColor();




extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

setStatusBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: color,
  ));
}
