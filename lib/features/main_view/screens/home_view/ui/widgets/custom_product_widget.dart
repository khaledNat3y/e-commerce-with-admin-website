import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_theme.dart';
import '../../../../../../core/widgets/app_text_button.dart';
import '../../../../../../core/widgets/custom_progress_indicator.dart';

class CustomProductWidget extends StatelessWidget {
  final String productName;
  final double price;
  final double priceAfterDiscount;
  const CustomProductWidget({super.key, required this.productName, required this.price, required this.priceAfterDiscount});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                child: CachedNetworkImage(
                  imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi_Dr8MdrJoLIR58w_YO733f3MyyymW--LuA&s",
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.maxFinite,
                  placeholder: (context, url) => const CustomCircleProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Text("10% OFF", style: AppTheme.font12WhiteBold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productName, style: AppTheme.font16BlackBold),
                    verticalSpace(10),
                    Column(
                      children: [
                        Text("$priceAfterDiscount LE", style: AppTheme.font14BlackBold),
                        verticalSpace(10),
                        Text(
                          "$price LE",
                          style: AppTheme.font12BlackBold.copyWith(
                            color: AppColors.kGreyColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: AppColors.kGreyColor,
                        size: 32,
                      ),
                    ),
                    AppTextButton(
                      buttonHeight: 50,
                      buttonWidth: 100,
                      buttonText: "Buy Now",
                      textStyle: AppTheme.font12WhiteBold,
                      onPressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}