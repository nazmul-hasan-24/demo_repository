import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/auth/set_location.dart';
import 'package:food_delivery_app/ui/screens/eiit_payment_screen.dart';
import 'package:food_delivery_app/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/back_button_widget.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/place_order_widget.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.back();
                  },
                ),
                verticalSpace(20),
                BigText(
                  largeText: "Confirm Order",
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(14),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  constraints: BoxConstraints.tight(const Size.fromHeight(115)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 37, 35, 35),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SmallText(smallText: "Deliver To"),
                          GestureDetector(
                            onTap: () => Get.to(
                              () => const SetLocationScreen(),
                            ),
                            child: const SmallText(
                              smallText: "Edit",
                              textColor: AppColor.primaryColor,
                            ),
                          )
                        ],
                      ),
                      verticalSpace(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5).copyWith(right: 12),
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                                color: Color(0xFFFFF14D),
                                shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                ImagePath.location, //location icon
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                          const Flexible(
                            child: SmallText(
                                textColor: AppColor.whiteColorFFF,
                                smallText:
                                    "55/B, Mohammadpur, Dhaka- 1202, Bnagladesh, "),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpace(14),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  constraints: BoxConstraints.tight(const Size.fromHeight(115)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 37, 35, 35),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SmallText(smallText: "Payment Method"),
                          GestureDetector(
                            onTap: () => Get.to(
                              () => const EditPaymentScreen(),
                            ),
                            child: const SmallText(
                              smallText: "Edit",
                              textColor: AppColor.primaryColor,
                            ),
                          )
                        ],
                      ),
                      verticalSpace(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            // spacing: 2,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.all(5).copyWith(right: 12),
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                    // color: AppColor.primaryColor,
                                    shape: BoxShape.circle),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    color: AppColor.whiteColorFFF,
                                    ImagePath.paypal,
                                    height: 21,
                                    width: 85,
                                  ),
                                ),
                              ),
                              // const LargeText(largeText: "PayPal")
                            ],
                          ),
                          const Flexible(
                            child: SmallText(
                                textColor: AppColor.whiteColorFFF,
                                smallText: "78963521450888 "),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                PlaceOdredWidget(
                  onTab: () => Get.to(() => const MainBottomNavScreen()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
