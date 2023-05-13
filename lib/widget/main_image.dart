import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vaporesso_web_ui/data/color.dart';
import 'package:vaporesso_web_ui/data/data.dart';
import 'package:vaporesso_web_ui/model/pod.dart';
import 'package:vaporesso_web_ui/widget/pod_card.dart';

class MainImage extends StatefulWidget {
  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  Duration duration=Duration(milliseconds: 3000);

  List<Color>colorList=[Color(0xff153A68),Color(0xffD74041),Color(0xff868686),scaffoldColor,Color(0xff8BDDFF),Color(0xff406149),Color(0xff8D0752)];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
        return Container(
          width: size.width,
          height: size.height,
          color:colorList[currentIndex],
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: size.width * .03,
                top: size.height * .14,
                child: Container(
                  width: size.width * .95,
                  height: size.height * .65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: size.width*.05,
                        height: size.width*.05,
                        child: CarouselSlider.builder(
                            itemCount: podList.length,
                            itemBuilder: (BuildContext context, int index, int realIndex) {
                              Pod pod=podList[index];
                              return Text(
                                pod.index.toString().padLeft(2,"0"),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: size.width * .038),
                              );
                            },
                            options: CarouselOptions(
                                scrollPhysics: NeverScrollableScrollPhysics(),
                                height: size.height,
                                viewportFraction: 1,
                                pauseAutoPlayOnTouch: false,
                                reverse: true,
                                scrollDirection: Axis.vertical,
                                pauseAutoPlayInFiniteScroll: false,
                                pauseAutoPlayOnManualNavigate: false,
                                autoPlay: true,
                                autoPlayInterval:duration,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentIndex = index;
                                  });

                                })),
                      ),
                      Text(
                        "Smoking".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: size.width * .14,
                            letterSpacing: 71.5),
                      ),
                      Container(
                        width: size.width,
                        height: size.height * .17,
                        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container( width: size.width * .15,
                              height: size.height * .16,
                              child: CarouselSlider.builder(
                                  itemCount: podList.length,
                                  itemBuilder: (BuildContext context, int index, int realIndex) {
                                    Pod pod=podList[index];
                                    return Container(
                                      width: size.width * .15,
                                      height: size.height * .17,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            pod.model,
                                            style: TextStyle(  fontFamily: "Recharge",
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: size.width * .015),
                                          ),
                                          Text(
                                            "\$18.50",
                                            style: TextStyle(fontFamily: "Recharge",
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: size.width * .011),
                                          ),
                                          Container(
                                            width: size.width * .14,
                                            height: size.height * .05,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: Colors.white),
                                            child: Center(
                                              child: Text(
                                                "Add to card",
                                                style: TextStyle(  fontFamily: "Recharge",
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  options: CarouselOptions(
                                      scrollPhysics: NeverScrollableScrollPhysics(),
                                      height: size.height,
                                      viewportFraction: 1,
                                      reverse: true,
                                      pauseAutoPlayOnTouch: false,
                                      pauseAutoPlayInFiniteScroll: false,
                                      pauseAutoPlayOnManualNavigate: false,
                                      autoPlay: true,
                                      autoPlayInterval:duration,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          currentIndex = index;
                                        });

                                      })),
                            ),
                            Container(
                              height: size.height * .17,
                              width: size.width * .25,
                              child: CarouselSlider.builder(
                                  itemCount: podList.length,
                                  itemBuilder: (BuildContext context, int index, int realIndex) {
                                    return Text(
                                      podList[index].desc,
                                      style: TextStyle(  fontFamily: "Recharge",
                                          color: Colors.white.withOpacity(.8),
                                          fontWeight: FontWeight.w100,letterSpacing: 1.2,
                                          fontSize: size.width * .01),
                                    );
                                  },
                                  options: CarouselOptions(
                                      scrollPhysics: NeverScrollableScrollPhysics(),
                                      height: size.height,
                                      viewportFraction: 1,
                                      pauseAutoPlayOnTouch: false,
                                      pauseAutoPlayInFiniteScroll: false,
                                      pauseAutoPlayOnManualNavigate: false,
                                      autoPlay: true,
                                      autoPlayInterval: duration,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          currentIndex = index;
                                        });

                                      })),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.height * .4,
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: size.width * .5,
                        height: size.width * .5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white.withOpacity(.1), width: 1)),
                      ),
                      Container(
                        width: size.width * .45,
                        height: size.width * .45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white.withOpacity(.1), width: 1)),
                      ),
                      Container(
                        width: size.width * .4,
                        height: size.width * .4,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white.withOpacity(.1), width: 1)),
                      ),
                      Container(
                        width: size.width * .35,
                        height: size.width * .35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white.withOpacity(.1), width: 1)),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(top: size.height*.16,
                child: Container(
                  width: size.width * .09,
                  height: size.height * .6,
                  child: CarouselSlider.builder(
                      itemCount: podList.length,
                      itemBuilder: (BuildContext context, int index, int realIndex) {
                        Pod pod=podList[index];
                        return PodCard(pod: pod,);
                      },
                      options: CarouselOptions(
                          scrollPhysics: NeverScrollableScrollPhysics(),
                          height: size.height,
                          viewportFraction: 1,
                          scrollDirection: Axis.vertical,
                          pauseAutoPlayOnTouch: false,
                          pauseAutoPlayInFiniteScroll: false,
                          pauseAutoPlayOnManualNavigate: false,
                          autoPlay: true,
                          autoPlayInterval: duration,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });

                          })),
                ),
              ),
              Positioned(
                bottom: size.height * .1,
                child: Container(
                  width: size.width * .095,
                  height: size.height * .03,
                  child:AnimatedSmoothIndicator(
                    activeIndex: currentIndex,
                    count: podList.length,
                    effect: SwapEffect(
                        dotWidth: size.width*.008,
                        dotHeight: size.width*.008,
                        strokeWidth: 1,
                        dotColor: Colors.white,
                        activeDotColor: Colors.white,
                        paintStyle: PaintingStyle.stroke
                    ),
                  ),
                ),
              ),
              Positioned(
                top:size.height*.02,
                child: Container(height: size.height*.05,
                  width: size.width,padding: EdgeInsets.symmetric(horizontal: size.width*.02),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    IconButton(
                      icon: Icon(
                        Iconsax.menu_15,
                        color: Colors.white,
                        size: size.width * .028,
                      ),
                      onPressed: () {},
                    ),
                   Container(width: size.width*.1,
                    height: size.height*.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        IconButton(
                            icon: Icon(
                              Iconsax.search_normal,
                              color: Colors.white,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Icon(
                              FrinoIcons.f_male,
                              color: Colors.white,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Icon(
                              Iconsax.bag,
                              color: Colors.white,
                            ),
                            onPressed: null),
                      ],),
                    )

                  ]),
                ),
              ),
              Positioned(
                  top: size.height*.025,
                  child:  Text("Vaporesso",style: TextStyle( fontFamily: "Recharge",color: Colors.white,fontWeight: FontWeight.w800,fontSize: size.width*.02),))
            ],
          ),
    );
  }
}
