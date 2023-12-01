// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flix/core/utils/color_constant.dart';
import 'package:flix/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconButtonShape? shape;

  final IconButtonPadding? padding;

  final IconButtonVariant? variant;

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final Widget? child;

  final VoidCallback? onTap;
  const CustomIconButton({
    Key? key,
    this.shape,
    this.padding,
    this.variant,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: const EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.paddingAll4:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 10,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.fillWhiteA70063:
        return ColorConstant.whiteA70063;
      case IconButtonVariant.fillRed700:
        return ColorConstant.red700;
      case IconButtonVariant.iconButtonBg:
        return ColorConstant.blueGray90003;
      case IconButtonVariant.fillWhiteA70087:
        return ColorConstant.whiteA70087;
      case IconButtonVariant.searchBg:
        return ColorConstant.blueGray80001;
      default:
        return ColorConstant.whiteA70075;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.circleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case IconButtonShape.roundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case IconButtonShape.circleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  roundedBorder17,
  circleBorder20,
  roundedBorder5,
  circleBorder12,
}

enum IconButtonPadding {
  paddingAll11,
  paddingAll4,
}

enum IconButtonVariant {
  fillWhiteA70075,
  fillWhiteA70063,
  fillRed700,
  iconButtonBg,
  fillWhiteA70087,
  searchBg,
}
