import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/widgets/app_pattern.dart';
import 'package:news_app/pages/home/widgets/custom_category_item.dart';
import 'package:news_app/pages/home/widgets/custom_drawer.dart';
import '../../../models/category_model.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> categoriesList = [
    CategoryModel(
      id: "sports",
      title: "Sports",
      image: "assets/images/sports.png",
      backgroundColor: const Color(0xffC91C22),
    ),
    CategoryModel(
      id: "general",
      title: "Politics",
      image: "assets/images/Politics.png",
      backgroundColor: const Color(0xff003E90),
    ),
    CategoryModel(
      id: "health",
      title: "Health",
      image: "assets/images/health.png",
      backgroundColor: const Color(0xffED1E79),
    ),
    CategoryModel(
      id: "business",
      title: "Business",
      image: "assets/images/bussines.png",
      backgroundColor: const Color(0xffCF7E48),
    ),
    CategoryModel(
      id: "environment",
      title: "Environment",
      image: "assets/images/environment.png",
      backgroundColor: const Color(0xff4882CF),
    ),
    CategoryModel(
      id: "science",
      title: "Science",
      image: "assets/images/science.png",
      backgroundColor: const Color(0xffF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppPattern(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          toolbarHeight: 70,
          title: Text(
            "News App",
            style: Constants.theme.textTheme.titleLarge?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        drawer: CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Pick your category\nof interest",
                textAlign: TextAlign.start,
                style: Constants.theme.textTheme.bodyLarge?.copyWith(
                  color: Color(0xff4f5a69),
                  fontWeight: FontWeight.w900,
                  height: 1.2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 5 / 6),
                  itemBuilder: (context, index) => CustomCategoryWidget(
                    index: index,
                    categoryModel: categoriesList[index],
                  ),
                  itemCount: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
