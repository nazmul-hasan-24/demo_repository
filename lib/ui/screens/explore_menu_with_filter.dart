import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_delivery_app/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/back_button_widget.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class ExploreMenuWithFilterScreen extends StatefulWidget {
  const ExploreMenuWithFilterScreen({super.key});

  @override
  State<ExploreMenuWithFilterScreen> createState() =>
      _ExploreMenuWithFilterScreenState();
}

class _ExploreMenuWithFilterScreenState
    extends State<ExploreMenuWithFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width25)
                .copyWith(
                    top: Dimensions.height20, bottom: Dimensions.height10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.to(() => const MainBottomNavScreen(),);
                  },
                ),
                verticalSpace(Dimensions.height20),
                BigText(
                  largeText: "Find your\nFavorite food",
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(17),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20, // Use orderList.length
                    itemBuilder: (context, int index) {
                      return Container(
                        padding:  EdgeInsets.all(Dimensions.height10),
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(4),
                        margin: const EdgeInsets.only(bottom: 18),
                        constraints: const BoxConstraints(
                            minHeight: 130, minWidth: double.infinity,),
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 0, color: Colors.transparent,),
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.lightBlack,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [


                               Padding(
                                 padding:  EdgeInsets.only(right:Dimensions.height10-5),
                                 child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    fit: BoxFit.cover,
                                    ImagePath.food20,
                                    height: Dimensions.height70+10,
                                    width: Dimensions.width100,
                                  ),
                                                               ),
                               ),

                            horizontal(Dimensions.width10-3),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Spicy fresh crab",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  verticalSpace(2),
                                  const SmallText(smallText: "Hollywood Dine"),
                                  verticalSpace(2),
                                  const Text(
                                    "\$50",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: Size(Dimensions.width61, Dimensions.height40-4),
                                  backgroundColor: AppColor.primaryColor,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      Dimensions.height14,
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: BigText(
                                  largeText: "Process",
                                  fontSize: Dimensions.height14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.backgroundColor2525,
                                ),),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Dimensions.height20)
                      .copyWith(bottom: 0),
                  child: ElevatedButtonWidget(
                    width: double.infinity,
                    height: Dimensions.height60,
                    textColour: AppColor.backgroundColor2525,
                    text: ("Check Out"),
                    onTab: () => Get.to(
                      () => const CartScreen(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
