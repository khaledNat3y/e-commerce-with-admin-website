import 'package:e_commerce_with_admin_website/core/helpers/spacing.dart';
import 'package:e_commerce_with_admin_website/core/theming/app_colors.dart';
import 'package:e_commerce_with_admin_website/core/theming/app_theme.dart';
import 'package:e_commerce_with_admin_website/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const double  padding = 16;

    return CustomScrollView(
      slivers: [
        /// Search Bar
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(padding),
            child: AppTextFormField(
              hintText: "Search in Market",
              validator: (value) {},
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.search,
                    size: 32,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/buy.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                verticalSpace(15),
              ],
            ),
          ),
        ),
        /// Categories Title
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Popular Categories", style: AppTheme.font20BlackBold),
                verticalSpace(10),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: padding),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.kPrimaryColor,
                        child: Icon(
                          categories[index].icon,
                          size: 30,
                          color: AppColors.white,
                        ),
                      ),
                      verticalSpace(8),
                      Text(
                        categories[index].title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

List<Category> categories = [
  Category(icon: Icons.sports, title: "Sports"),
  Category(icon: Icons.tv, title: "Electronics"),
  Category(icon: Icons.collections, title: "Collections"),
  Category(icon: Icons.book, title: "Books"),
  Category(icon: Icons.games, title: "Games"),
];

class Category {
  final IconData icon;
  final String title;

  Category({required this.icon, required this.title});
}
