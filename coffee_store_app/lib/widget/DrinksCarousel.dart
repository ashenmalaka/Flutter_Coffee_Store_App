import 'package:coffee_store_app/widget/DrinksCard.dart';
import 'package:flutter/material.dart';

class DrinksCarousel extends StatefulWidget {
  @override
  _DrinksCarouselState createState() => _DrinksCarouselState();
}

class _DrinksCarouselState extends State<DrinksCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 4.0, 
            )
          ),
        child: DrinksCard(
          drinkType: mainTypes[0],
        ),
      ),
    );
  }
}