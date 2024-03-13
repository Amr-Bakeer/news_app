import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/models/category_model.dart';

class CustomCategoryWidget extends StatelessWidget {
  final int index;
  final CategoryModel categoryModel;

  const CustomCategoryWidget({
    super.key,
    required this.index,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: categoryModel.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
          bottomLeft:
              index % 2 == 0 ? Radius.circular(25.0) : Radius.circular(0.0),
          bottomRight:
              index % 2 == 0 ? Radius.circular(0.0) : Radius.circular(25.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              categoryModel.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            categoryModel.title,
            style: Constants.theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
