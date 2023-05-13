import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaporesso_web_ui/data/color.dart';
import 'package:vaporesso_web_ui/data/data.dart';
import 'package:vaporesso_web_ui/data/strings.dart';
import 'package:vaporesso_web_ui/model/slide.dart';

class NewGeneration extends StatefulWidget {
  @override
  State<NewGeneration> createState() => _NewGenerationState();
}

class _NewGenerationState extends State<NewGeneration> {
  Duration duration = Duration(milliseconds: 3000);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        color: scaffoldColor,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: size.width * .3,
                  height: size.height * .78,
                  child: CarouselSlider.builder(
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        Slide slide = slideList[index];
                        return Container(
                          padding: EdgeInsets.only(
                              left: size.width * .11, top: size.height * .05),
                          width: size.width * .3,
                          height: size.height * .78,
                          child: Text(
                            slide.title,
                            style: TextStyle(fontFamily: 'Recharge',
                                color: Colors.white.withOpacity(.9),
                                fontSize: size.width * .03,
                                fontWeight: FontWeight.w600),
                          ),
                        );
                      },
                      itemCount: slideList.length,
                      options: CarouselOptions(
                        height: size.height,
                        autoPlay: true,   reverse: true,
                        viewportFraction: 1,
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        pauseAutoPlayOnTouch: false,
                        pauseAutoPlayInFiniteScroll: false,
                        pauseAutoPlayOnManualNavigate: false,
                        autoPlayInterval: duration,
                      )),
                ),
                Container(
                  width: size.width * .4,
                  height: size.height * .78,
                  child: CarouselSlider.builder(
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        Slide slide = slideList[index];
                        return Container(
                          width: size.width * .4,
                          height: size.height * .78,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(slide.imageUrl))),
                        );
                      },
                      itemCount: slideList.length,
                      options: CarouselOptions(
                        height: size.height,
                        autoPlay: true,
                        viewportFraction: 1,
                        scrollDirection: Axis.vertical,
                        reverse: true,
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        pauseAutoPlayOnTouch: false,
                        pauseAutoPlayInFiniteScroll: false,
                        pauseAutoPlayOnManualNavigate: false,
                        autoPlayInterval: duration,
                      )),
                ),
                Container(
                  width: size.width * .3,
                  height: size.height * .78,
                  child: CarouselSlider.builder(
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        Slide slide = slideList[index];
                        return Container(
                            padding: EdgeInsets.only(
                                left: size.width * .03, top: size.height * .05),
                            width: size.width * .3,
                            height: size.height * .78,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  slide.model,
                                  style: TextStyle(fontFamily: 'Recharge',
                                      color: Colors.white.withOpacity(.9),
                                      fontSize: size.width * .03,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: size.height * .04),
                                Text(
                                  slide.desc,
                                  style: TextStyle(fontFamily: 'Recharge',
                                      color: Colors.white.withOpacity(.9),
                                      fontSize: size.width * .01,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ));
                      },
                      itemCount: slideList.length,
                      options: CarouselOptions(
                        height: size.height,
                        autoPlay: true,
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        viewportFraction: 1,
                        pauseAutoPlayOnTouch: false,
                        pauseAutoPlayInFiniteScroll: false,
                        pauseAutoPlayOnManualNavigate: false,
                        autoPlayInterval: duration,
                      )),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .1, vertical: size.height * .05),
              width: size.width,
              height: size.height * .22,
              child: Text(
                weOffer,
                style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * .011),
              ),
            )
          ],
        ));
  }
}
