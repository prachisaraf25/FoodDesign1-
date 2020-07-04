import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'food.dart';


class FoodDesign1 extends StatelessWidget {
  final Food foods;

  FoodDesign1({this.foods});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(foods.image), fit: BoxFit.cover),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  foods.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  foods.des,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SmoothStarRating(
                      starCount: 5,
                      size: 18,
                      rating: foods.rating,
                      color: Colors.deepOrange,
                      borderColor: Colors.deepOrange,
                      isReadOnly: true,
                    ),
                    Text('\u20B9 ${foods.price}',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
