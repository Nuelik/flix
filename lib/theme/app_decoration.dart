import 'package:flix/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray9006c => BoxDecoration(
        color: ColorConstant.blueGray9006c,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get fillWhiteA70063 => BoxDecoration(
        color: ColorConstant.whiteA70063,
      );
  static BoxDecoration get outlineWhiteA700cc => BoxDecoration(
        color: ColorConstant.gray900,
        border: Border.all(
          color: ColorConstant.whiteA700Cc,
          width: (1),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtStyle => BoxDecoration(
        color: ColorConstant.red700,
      );
  static BoxDecoration get fillBluegray800 => BoxDecoration(
        color: ColorConstant.blueGray800,
      );
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: (4),
        ),
      );
  static BoxDecoration get fillGray90090 => BoxDecoration(
        color: ColorConstant.gray90090,
      );
  static BoxDecoration get cardBg => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get txtWhite => BoxDecoration(
        color: ColorConstant.whiteA70063,
      );
  static BoxDecoration get style => BoxDecoration(
        color: ColorConstant.red700,
      );
  static BoxDecoration get fillWhiteA7005e => BoxDecoration(
        color: ColorConstant.whiteA7005e,
      );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
        color: ColorConstant.blueGray90001,
      );
  static BoxDecoration get fillBluegray90002 => BoxDecoration(
        color: ColorConstant.blueGray90002,
      );
  static BoxDecoration get gradientBlack9000001Bluegray900 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.5,
            0,
          ),
          end: const Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black9000001,
            ColorConstant.blueGray900,
          ],
        ),
      );
  static BoxDecoration get fillAmber300 => BoxDecoration(
        color: ColorConstant.amber300,
      );
  static BoxDecoration get searchBg => BoxDecoration(
        color: ColorConstant.blueGray80001,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL20 = const BorderRadius.only(
    topLeft: Radius.circular(
      (20),
    ),
    bottomLeft: Radius.circular(
      (20),
    ),
  );

  static BorderRadius customBorderBL12 = const BorderRadius.only(
    bottomLeft: Radius.circular(
      (12),
    ),
    bottomRight: Radius.circular(
      (12),
    ),
  );

  static BorderRadius customBorderTL10 = const BorderRadius.only(
    topLeft: Radius.circular(
      (10),
    ),
    topRight: Radius.circular(
      (10),
    ),
  );

  static BorderRadius customBorderTL18 = const BorderRadius.only(
    topLeft: Radius.circular(
      (18),
    ),
    topRight: Radius.circular(
      (18),
    ),
  );

  static BorderRadius circleBorder45 = BorderRadius.circular(
    (45),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    (25),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    (15),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    (10),
  );

  static BorderRadius circleBorder42 = BorderRadius.circular(
    (42),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    (1),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    (30),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    (20),
  );

  static BorderRadius txtCircleBorder14 = BorderRadius.circular(
    (14),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

    