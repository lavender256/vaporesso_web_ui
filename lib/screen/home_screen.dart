import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vaporesso_web_ui/data/color.dart';
import 'package:vaporesso_web_ui/widget/main_image.dart';
import 'package:vaporesso_web_ui/widget/new_generation.dart';
import 'package:vaporesso_web_ui/widget/online_shopping.dart';
import 'package:vaporesso_web_ui/widget/our_product.dart';
import 'package:vaporesso_web_ui/widget/image_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> colorList = [
    Color(0xff153A68),
    Color(0xffD74041),
    Color(0xff868686),
    scaffoldColor,
    Color(0xff8BDDFF),
    Color(0xff406149),
    Color(0xff8D0752)
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: scaffoldColor,
        width: size.width,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: MainImage()),
            SliverPadding(
              sliver: SliverToBoxAdapter(child: OnlineShopping()),
              padding: EdgeInsets.only(
                top: size.height * .2,
              ),
            ),
            SliverPadding(
              sliver: SliverToBoxAdapter(child: NewGeneration()),
              padding: EdgeInsets.only(
                top: size.height * .2,
              ),
            ),
            SliverPadding(
              sliver: SliverToBoxAdapter(child: OurProduct()),
              padding: EdgeInsets.only(
                top: size.height * .1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
