
import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/back_button_widget.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width25,
                    vertical: Dimensions.height44)
                .copyWith(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.back();
                  },
                ),
                verticalSpace(11),
                Text(
                  "Notification",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                verticalSpace(Dimensions.font12),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 10,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(5)
                            .copyWith(bottom: Dimensions.height14),
                        constraints:
                            BoxConstraints.expand(height: Dimensions.height110),
                        decoration: BoxDecoration(
                            color: AppColor.lightBlack,
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        // height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                                child: Image.asset(
                              ImagePath.done,
                              width: Dimensions.width47,
                              height: Dimensions.height50,
                            )),
                            horizontal(Dimensions.width15),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(
                                      fontSize: Dimensions.height16,
                                      largeText:
                                          "Your order has taken by driver"),
                                  verticalSpace(7),
                                  const SmallText(smallText: "Recently")
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
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
