import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class ServiceCard extends StatelessWidget {
  final String name;
  final String image;
  const ServiceCard({Key key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: kPrimaryLightColor.withOpacity(.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Image.asset(image)),
          Text(
            name,
            textAlign: TextAlign.center,
          ),
          Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
