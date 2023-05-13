import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vaporesso_web_ui/data/color.dart';
import 'package:vaporesso_web_ui/data/strings.dart';

class OnlineShopping extends StatefulWidget {
  @override
  State<OnlineShopping> createState() => _OnlineShoppingState();
}

class _OnlineShoppingState extends State<OnlineShopping> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.05),
      width: size.width,
      height: size.height,
      color: scaffoldColor,
      child: Stack(alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: size.height*.07,
            child: Container(
              width: size.width*.5,
              height: size.height*.32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Online Shopping",style: TextStyle(
                      color: Colors.white.withOpacity(.8),fontWeight: FontWeight.w400,
                      fontSize:size.width*.011
                  ),),
                  Text("Technology from Switzerland.Finally!",style: TextStyle(fontFamily: 'Recharge',
                      color: Colors.white.withOpacity(.9),fontWeight: FontWeight.w800,
                      fontSize:size.width*.017
                  ),),
                  Text(techFromSwitzerland,style: TextStyle(
                      color: Colors.white.withOpacity(.8),fontWeight: FontWeight.w400,
                      fontSize:size.width*.012
                  ),),
                  Row(
                    children: [
                      Text("Read More",style: TextStyle(
                          color: Colors.white.withOpacity(.8),fontWeight: FontWeight.w500,
                          fontSize:size.width*.011
                      ),),
                      SizedBox(width: size.width*.005,),
                      IconButton(icon: Icon(Iconsax.arrow_circle_right,color: Colors.white,size: size.width*.02,), onPressed: null)
                    ],
                  )

                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Container(width: size.width*.35,
          height: size.height*.6,
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height*.08,
                      right: 0,
                      child: Container(width: size.width*.22,
                      height: size.height*.51,
                        decoration: BoxDecoration(
                         border: Border.all(color: Colors.white,width: 1.5)
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height*.05,
                      right: size.width*.02,
                      child: Container(width: size.width*.22,
                        height: size.height*.47,
                        decoration: BoxDecoration(
                           image: DecorationImage(fit: BoxFit.cover,
                             image: NetworkImage("https://s8.uupload.ir/files/2_97xh.jpg")
                           )
                        ),
                      ),
                    )
                  ],
                ),
          )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(width: size.width*.3,
                height: size.height*.6,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: size.height*.03,
                      right: 0,
                      child: Container(width: size.width*.27,
                        height: size.height*.51,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white.withOpacity(.5),width: 1)
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: size.height*.08,
                      right: size.width*.02,
                      child: Container(width: size.width*.27,
                        height: size.height*.49,
                        decoration: BoxDecoration(
                            image: DecorationImage(fit: BoxFit.cover,
                                image: NetworkImage("https://s8.uupload.ir/files/1_kxbq.jpg")
                            )
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: size.height*.1,
              left: size.width*.32,
              child: Container(width: size.width*.25,
          height: size.height*.21,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pods from The EU",style: TextStyle(fontFamily: 'Recharge',color: Colors.white,fontWeight: FontWeight.w800,fontSize: size.width*.017),),
                    Text(podFromEU,style: TextStyle(
                        color: Colors.white.withOpacity(.8),fontWeight: FontWeight.w400,
                        fontSize:size.width*.012
                    ),),
                  ],
                ),
          )),
          Positioned(
              bottom: size.height*.05,
              right: size.width*.05,
              child: Container(width: size.width*.23,
                height: size.height*.14,
                child: Text(podFromEU2,style: TextStyle(
                    color: Colors.white.withOpacity(.8),fontWeight: FontWeight.w400,
                    fontSize:size.width*.012
                ),),
              )),
          Container(width: size.width*.08,
          height: size.width*.08,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: CircularText(
              children: [
                TextItem(text: Text("New Product",style: TextStyle(
                  color: Colors.white.withOpacity(.9),
                    fontWeight: FontWeight.w600,fontSize: size.width*.014
                ),),
                  startAngle: 160,
                  space: size.width*.01,
                ),
                TextItem(text: Text("New Product",style: TextStyle(
                    color: Colors.white.withOpacity(.9),
                    fontWeight: FontWeight.w600,fontSize: size.width*.014
                ),),
                    space: size.width*.01,
                    startAngle: -20
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
