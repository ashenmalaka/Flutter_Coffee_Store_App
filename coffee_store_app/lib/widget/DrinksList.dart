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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          drinkType.image,
                          height: 100.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                drinkType.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Price: \$${drinkType.price}',
                              )
                            ],
                          ),
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