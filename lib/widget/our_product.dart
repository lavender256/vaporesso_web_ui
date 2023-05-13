import 'package:flutter/material.dart';
import 'package:vaporesso_web_ui/data/color.dart';
import 'package:vaporesso_web_ui/data/data.dart';
import 'package:vaporesso_web_ui/widget/our_product_card.dart';


class OurProduct extends StatefulWidget {

  @override
  State<OurProduct> createState() => _OurProductState();
}

class _OurProductState extends State<OurProduct> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.height*.1),
      color: scaffoldColor,
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
            children: [
           OurProductCard(product: productList[0],),OurProductCard(product: productList[1],),
          ],),
          Row(children: [
           OurProductCard(product: productList[2],),OurProductCard(product: productList[3],),
          ],)


        ],
      ),
    );
  }
}
