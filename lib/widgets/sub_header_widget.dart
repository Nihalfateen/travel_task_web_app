import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/constant/app_colors.dart';
import 'package:travel_app/generated/assets.dart';

class SubHeaderWidget extends StatelessWidget {
  const SubHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 36.5, bottom: 40.5),
      child: Row(
        children: [
          Text(
            "Items",
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: Device.screenType == ScreenType.tablet ? 32 : 24,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(Assets.iconsFilter),
          if (Device.screenType == ScreenType.tablet) ...[
            const SizedBox(
              height: 30,
              width: 25,
              child: VerticalDivider(
                width: 2,
                color: AppColors.greyColor,
              ),
            ),
            SvgPicture.asset(Assets.iconsButton),
          ]
        ],
      ),
    );
  }
}
