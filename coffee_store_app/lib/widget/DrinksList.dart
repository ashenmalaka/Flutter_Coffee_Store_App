import 'package:coffee_store_app/widget/DrinksCard.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class DrinksList extends StatelessWidget {
  @override
  Widget build(BuildContext scaffoldContext) {
    return ScopedModelDescendant(
      builder: (context, _, model){
       return Expanded(
        child: GridView.count(
         crossAxisCount: 2,
         padding: EdgeInsets.all(6.0),
         children: model.drinkType.map((drinkType){
          return GestureDetector(
            onTap: () {
              showDialog(
                context: scaffoldContext,
                builder: (BuildContext dialogContext){
                  return AlertDialog(
                    title: Text(
                      'Order',
                    ),
                    content: Row(
                      children: <Widget>[
                        Image.asset(
                          drinkType.image,
                          height: 100.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  );
                }
              );
            },
            child: DrinksCard(
              drinkType: drinkType,
             ),
          );
         }).toList(),
       ),
      );
     }
   );
  }
}