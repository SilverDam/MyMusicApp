import 'package:flutter/material.dart';
import '../Models/category.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  
                  children: [
                    Icon(
                      categories[index].icons,
                      color: Colors.purple,
                      size: 50,
                    ),

                    SizedBox(height: 10,),
                  
                    Text(categories[index].iconTitle, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white,))

                  ],
                ),
              );
            }));
  }
}
