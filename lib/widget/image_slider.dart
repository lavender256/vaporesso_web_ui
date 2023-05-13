import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaporesso_web_ui/model/pod.dart';
import 'package:vaporesso_web_ui/widget/main_image.dart';
import 'package:vaporesso_web_ui/data/data.dart';
import 'package:vaporesso_web_ui/widget/pod_card.dart';
class ImageSlider extends StatefulWidget {
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [

        ],
      ),
    );
  }
}
