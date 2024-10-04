import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/constant/app_colors.dart';
import 'package:travel_app/generated/assets.dart';

class GraidViewListWidget extends StatelessWidget {
  GraidViewListWidget({super.key});
  final List<String> listOfImages = [
    Assets.imageYellowBackground,
    Assets.imagePurpleBackground,
    Assets.imageYellowBackground,
    Assets.imageBlueBackground,
    Assets.imageYellowBackground,
    Assets.imageYellowBackground,
    Assets.imagePurpleBackground,
    Assets.imageYellowBackground,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Device.screenType == ScreenType.tablet
              ? 5
              : 1, // Number of columns
          crossAxisSpacing: 15.0, // Horizontal space between grid items
          mainAxisSpacing: 15.0, // Vertical space between grid items
          childAspectRatio: Device.screenType == ScreenType.tablet ? 1 / 1.18 : 0.98,
        ),
        itemCount: listOfImages.length, // Number of items in the grid
        itemBuilder: (context, index) {
          return buildGridItem(context, index);
        },
      ),
    );
  }

  Widget buildGridItem(BuildContext context, int index) {
    return Container( 
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: AppColors.blackColor2.withOpacity(0.60),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.bottomLeft, children: [
            PositionedDirectional(
              start: 15,
              bottom: 20,
              child: SvgPicture.asset(Assets.iconsPendingApproval,fit: BoxFit.contain,width:40,height:40,),
            ),
            Image.asset(
              listOfImages[index],
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Item title",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                  ),
                ),
               const SizedBox(height:12,),
                Row(
                  children: [
                    SvgPicture.asset(Assets.iconsCalendar),
                    const SizedBox(width: 4),
                    const Expanded(
                      child: Text(
                        "5 Nights (Jan 16 - Jan 20, 2024) ",
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(
                  thickness: 0.1,
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
             right: 15
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(Assets.imagesUsers,fit: Device.screenType == ScreenType.tablet
                             ?BoxFit.fill:BoxFit.fill,filterQuality: FilterQuality.high,),
               const Spacer(),
                const Text(
                  '4 unfinished tasks',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

  
  }
}
