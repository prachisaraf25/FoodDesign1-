import 'package:flutter/material.dart';
import 'food.dart';
import 'food_design1.dart';

class HomePage extends StatelessWidget {
  final List<Food> foods = getFoodFromServer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
        leading: Icon(Icons.menu),
        title: Text('Foods Corner',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index){
          return FoodDesign1( foods : foods[index],);
        },
      )
    );
  }
}
