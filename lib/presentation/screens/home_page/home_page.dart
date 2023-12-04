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
  int btnIndex = 0;

  List<String> btnCategories = [
    "Trending",
    "TVShow",
    "Movie",
    "Music",
    "Education",
  ];

  List<String> movieImages = [
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
    ImageConstant.imgImage6297x3751,
  ];

  List<String> movieCover = [
    "assets/images/img_image1_154x108.png",
    "assets/images/img_image1_178x124_1.png",
    "assets/images/img_image1_178x124_2.png",
    "assets/images/img_image3_154x116.png",
    "assets/images/img_image4_178x124_1.png",
    "assets/images/img_image4_178x124_2.png",
  ];
  List<String> movieTitles = [
    "Beauty and the beast",
    "Spiderman 3",
    "Iron Man 3",
    "Limp Life",
    "Joker",
    "Wonder Woman",
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
                  dotColor: Colors.white.withOpacity(0.5),
                  activeDotColor: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(height: 20),

          //categories

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
          const SizedBox(height: 15),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(width: 18),
              ...List.generate(
                  btnCategories.length,
                  (index) => InkWell(
                        onTap: () {
                          setState(() {
                            btnIndex = index;
                          });
                        },
                        child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: btnIndex != index
                                  ? Colors.white.withOpacity(0.3)
                                  : Theme.of(context).primaryColor,
                            ),
                            child: Text(btnCategories[index],
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.8)))),
                      )),
            ]),
          ),

          //top picks
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  btnCategories[btnIndex],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: MediaQuery.of(context).size.width >= 450
                        ? MediaQuery.of(context).size.width * 0.065
                        : 19,
                    runSpacing: 15,
                    children: List.generate(
                        movieCover.length,
                        (index) => InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: ((context) => const BookPages()),
                                //   ),
                                // );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      movieCover[index],
                                      fit: BoxFit.cover,
                                      width: 80,
                                      height:
                                          MediaQuery.of(context).size.width >=
                                                  450
                                              ? 110
                                              : 150,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    width: 80,
                                    child: Text(
                                      movieTitles[index],
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  450
                                              ? 12
                                              : 10,
                                          fontWeight: FontWeight.w600),
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
