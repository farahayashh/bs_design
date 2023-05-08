import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../meal.dart';

class Details extends StatelessWidget {
   Details({Key? key,
  }): super(key: key);

  static const routename = "/mealdetails";

  @override
  Widget build(BuildContext context) {
    Meal? meal = ModalRoute.of(context)!.settings.arguments as Meal?;
    return Scaffold(
        body: CustomScrollView(
          physics: const ScrollPhysics(),
          slivers: [
            SliverAppBar(
              stretch: true,
              forceElevated: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Container(
                  child:  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text( meal!.name, style: const TextStyle(fontSize: 25 , fontWeight: FontWeight.bold), ),
                    ),
                  ),
                  width: double.maxFinite,
                  padding:  const EdgeInsets.only(top: 5 , bottom: 10),
                  decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),),
                    color: Colors.white,
                      gradient:  LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blueGrey,
                          Colors.deepOrangeAccent,
                        ],
                      ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                )
              ),
              backgroundColor: Colors.blueGrey,
              pinned: true,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Image.asset( meal.img!,
                width: double.maxFinite,
                fit: BoxFit.cover,
                ),
              ),
            ),
             SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                     padding: const EdgeInsets.all(10),
                    child: const Text('Ingredients' , style: TextStyle(color: Colors.deepOrangeAccent , fontSize: 20)),

                  ),
                   Text(meal.ingredients,
                    style: const TextStyle(
                      fontSize: 25,),),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text('Recipe' , style: TextStyle(color: Colors.deepOrangeAccent , fontSize: 20)),

                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(meal.recipe,
                      style: const TextStyle(
                        fontSize: 25,),
                  ),
                   ),
                ],
              ),
            )
          ],
        ),
    );
  }
}
