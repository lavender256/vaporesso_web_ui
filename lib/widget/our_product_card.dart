import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaporesso_web_ui/model/product.dart';

class OurProductCard extends StatefulWidget {
  final Product product;
  OurProductCard({this.product});

  @override
  State<OurProductCard> createState() => _OurProductCardState();
}

class _OurProductCardState extends State<OurProductCard>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
          ..repeat(reverse: true);
    animation = Tween<double>(begin: 0, end: 0.7).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    ));
  }

  bool isHover = false;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
        onEnter: (value) {
          setState(() {
            isHover = true;
            animationController.forward();
          });
        },
        onExit: (value) {
          setState(() {
            isHover = false;
            animationController.reverse();
          });
        },
        child: Container(
          width: size.width * .3,
          height: size.height * .45,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1.5),
              image: DecorationImage(
                  image: NetworkImage(widget.product.imageUrl),
                  fit: BoxFit.cover)),
          child: isHover
              ? Stack(children: [
            AnimatedBuilder(
              animation: animationController,
              builder: (BuildContext context, Widget child) {
                return Container(
                  padding: EdgeInsets.only(left: size.width * .015),
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    color:
                    Colors.black.withOpacity(animation.value),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.product.title,
                        style: TextStyle(fontFamily: 'Recharge',
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * .02),
                      ),
                      Text(
                        widget.product.desc,
                        style: TextStyle(fontFamily: 'Recharge',
                            color: Colors.white.withOpacity(.8),
                            fontWeight: FontWeight.w400,
                            fontSize: size.width * .01),
                      )
                    ],
                  ),
                );
              },
            )
          ])
              : SizedBox.shrink(),
        ));
  }
}
