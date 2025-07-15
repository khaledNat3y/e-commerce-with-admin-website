import 'package:flutter/material.dart';

import 'custom_product_widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return const CustomProductWidget(
            productName: "Product Name",
            price: 229,
            priceAfterDiscount: 129,
          );
        },
        childCount: 5,
      ),
    );
  }
}
