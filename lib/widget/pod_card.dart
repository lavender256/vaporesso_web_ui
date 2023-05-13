import 'package:flutter/material.dart';
import 'package:vaporesso_web_ui/model/pod.dart';

class PodCard extends StatelessWidget {
  final Pod pod;

  PodCard({this.pod});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
        width: size.width * .1,
        height: size.height * .6,
        decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: NetworkImage(pod.imageUrl))));
  }
}
