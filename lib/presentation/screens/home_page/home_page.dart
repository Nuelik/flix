import 'package:flix/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flix/core/utils/color_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<String> movieImages = [
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //carousel slider
          CarouselSlider.builder(
            options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              height: 298,
              initialPage: 0,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlayInterval: const Duration(seconds: 6),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              viewportFraction:
                  MediaQuery.of(context).size.width >= 400 ? 0.6 : 1.0,
              onPageChanged: (index, realIndex) => setState(() {
                selectedIndex = index;
              }),
            ),
            itemCount: movieImages.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: ((context) => const BookPages()),
                  //   ),
                  // );
                },
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(movieImages[index]),
                ),
              );
            },
          ),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: selectedIndex,
              count: movieImages.length,
              effect: ExpandingDotsEffect(
                offset: 10,
                dotHeight: 10,
                dotWidth: 10,
                dotColor:  ColorConstant.gray900,
                  activeDotColor: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(height: 20),

          //categories
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )

          //top picks
        ],
      ),
    );
  }
}
