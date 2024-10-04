import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/constant/app_colors.dart';
import 'package:travel_app/generated/assets.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key});
  final List<String> myList = [
    "Items",
    "Pricing",
    "Info",
    "Tasks",
    "Analytics"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Device.screenType == ScreenType.mobile
            ? Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset(Assets.iconsMenu),

                  ///logo
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 18, bottom: 18),
                    child: SvgPicture.asset(Assets.imagesLogo),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  SvgPicture.asset(Assets.iconsSettingIcon),
                  const SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset(Assets.iconsNotificationIcon),
                  const SizedBox(
                    height: 20,
                    width: 12,
                    child: VerticalDivider(
                      width: 2,
                      color: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(Assets.imagesJohnImage),
                  const SizedBox(
                    width: 12,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              )
            : Row(
                children: [
                  ///logo
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 18, bottom: 18),
                    child: SvgPicture.asset(Assets.imagesLogo),
                  ),
                  const Spacer(
                    flex: 4,
                  ),

                  ///list of taps
                  SizedBox(
                    height: 110,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            myList[index],
                            style: TextStyle(
                              fontSize: 14,
                              color: index == 0
                                  ? AppColors.whiteColor
                                  : AppColors.greyColor,
                            ),
                          ),
                          const Spacer(),
                          if (index == 0) ...[
                            Container(
                              width: 40,
                              color: AppColors.orangeColor,
                              height: 2,
                            ),
                          ]
                        ],
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 32,
                      ),
                      itemCount: myList.length,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  const SizedBox(
                    height: 20,
                    width: 30,
                    child: VerticalDivider(
                      width: 2,
                      color: AppColors.greyColor,
                    ),
                  ),

                  SvgPicture.asset(Assets.iconsSettingIcon),
                  const SizedBox(
                    width: 24,
                  ),
                  SvgPicture.asset(Assets.iconsNotificationIcon),
                  const SizedBox(
                    height: 20,
                    width: 30,
                    child: VerticalDivider(
                      width: 2,
                      color: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  // const Spacer(),
                  Image.asset(Assets.imagesJohnImage),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "John Doe",
                    style: TextStyle(color: AppColors.whiteColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(Assets.iconsChevronDown),
                  SizedBox(
                    width: 4.w,
                  ),
                ],
              ),
        const Divider(
          height: 1,
          thickness: .4,
          color: AppColors.greyColor,
        ),
      ],
    );
  }
}
