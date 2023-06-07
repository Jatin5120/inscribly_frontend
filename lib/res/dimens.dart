import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimens {
  const AppDimens._();

  /// Get the height with the percent value of the screen height.
  static double percentHeight(double value) => value.sh;

  /// Get the width with the percent value of the screen width.
  static double percentWidth(double value) => value.sw;

  static final double zero = 0.sp;
  static final double two = 2.sp;
  static final double four = 4.sp;
  static final double eight = 8.sp;
  static final double ten = 10.sp;
  static final double twelve = 12.sp;
  static final double sixteen = 16.sp;
  static final double twenty = 20.sp;
  static final double twentyFour = 24.sp;
  static final double thirty = 30.sp;
  static final double forty = 40.sp;
  static final double fortyEight = 48.sp;
  static final double fifty = 50.sp;
  static final double sixty = 60.sp;
  static final double seventy = 70.sp;
  static final double eighty = 80.sp;
  static final double ninty = 90.sp;
  static final double hundred = 100.sp;
  static final double hundredFifty = 150.sp;
  static final double twoHundred = 200.sp;

  static final Widget box0 = SizedBox(height: zero);

  static final Widget boxHeight2 = SizedBox(height: two);
  static final Widget boxHeight4 = SizedBox(height: four);
  static final Widget boxHeight8 = SizedBox(height: eight);
  static final Widget boxHeight10 = SizedBox(height: ten);
  static final Widget boxHeight12 = SizedBox(height: twelve);
  static final Widget boxHeight16 = SizedBox(height: sixteen);
  static final Widget boxHeight20 = SizedBox(height: twenty);
  static final Widget boxHeight24 = SizedBox(height: twentyFour);
  static final Widget boxHeight30 = SizedBox(height: thirty);

  static final Widget boxWidth2 = SizedBox(width: two);
  static final Widget boxWidth4 = SizedBox(width: four);
  static final Widget boxWidth8 = SizedBox(width: eight);
  static final Widget boxWidth10 = SizedBox(width: ten);
  static final Widget boxWidth12 = SizedBox(width: twelve);
  static final Widget boxWidth16 = SizedBox(width: sixteen);
  static final Widget boxWidth20 = SizedBox(width: twenty);
  static final Widget boxWidth24 = SizedBox(width: twentyFour);
  static final Widget boxWidth30 = SizedBox(width: thirty);

  static final EdgeInsets edgeInsets0 = EdgeInsets.all(zero);
  static final EdgeInsets edgeInsets4 = EdgeInsets.all(four);
  static final EdgeInsets edgeInsets8 = EdgeInsets.all(eight);
  static final EdgeInsets edgeInsets10 = EdgeInsets.all(ten);
  static final EdgeInsets edgeInsets12 = EdgeInsets.all(twelve);
  static final EdgeInsets edgeInsets16 = EdgeInsets.all(sixteen);
  static final EdgeInsets edgeInsets24 = EdgeInsets.all(twentyFour);

  static final EdgeInsets edgeInsets4_0 =
      EdgeInsets.symmetric(horizontal: four, vertical: zero);
  static final EdgeInsets edgeInsets0_4 =
      EdgeInsets.symmetric(horizontal: zero, vertical: four);

  static final EdgeInsets edgeInsets8_0 =
      EdgeInsets.symmetric(horizontal: eight, vertical: zero);
  static final EdgeInsets edgeInsets0_8 =
      EdgeInsets.symmetric(horizontal: zero, vertical: eight);

  static final EdgeInsets edgeInsets12_0 =
      EdgeInsets.symmetric(horizontal: twelve, vertical: zero);
  static final EdgeInsets edgeInsets0_12 =
      EdgeInsets.symmetric(horizontal: zero, vertical: twelve);

  static final EdgeInsets edgeInsets16_0 =
      EdgeInsets.symmetric(horizontal: sixteen, vertical: zero);
  static final EdgeInsets edgeInsets0_16 =
      EdgeInsets.symmetric(horizontal: zero, vertical: sixteen);

  static final EdgeInsets edgeInsets4_8 =
      EdgeInsets.symmetric(horizontal: four, vertical: eight);
  static final EdgeInsets edgeInsets8_4 =
      EdgeInsets.symmetric(horizontal: eight, vertical: four);

  static final EdgeInsets edgeInsets4_12 =
      EdgeInsets.symmetric(horizontal: four, vertical: twelve);
  static final EdgeInsets edgeInsets12_4 =
      EdgeInsets.symmetric(horizontal: twelve, vertical: four);

  static final EdgeInsets edgeInsets4_16 =
      EdgeInsets.symmetric(horizontal: four, vertical: sixteen);
  static final EdgeInsets edgeInsets16_4 =
      EdgeInsets.symmetric(horizontal: sixteen, vertical: four);

  static final EdgeInsets edgeInsets8_16 =
      EdgeInsets.symmetric(horizontal: eight, vertical: sixteen);
  static final EdgeInsets edgeInsets16_8 =
      EdgeInsets.symmetric(horizontal: sixteen, vertical: eight);
}
