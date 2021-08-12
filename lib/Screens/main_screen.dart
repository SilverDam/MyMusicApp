import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_app/Models/main_screen_model.dart';
import 'package:music_app/Screens/artist_profile_screen.dart';
import 'package:music_app/widgets/category.dart';
import '../widgets/widgets.dart';

class MainScreen extends StatelessWidget {

  static const routeName = '/mainScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
      
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.only(top: 20, left:0),
           // height: MediaQuery.of(context).size.height ,
       
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 350,
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,

                        children: [
                          Text(
                            'Following',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Text(
                            'More',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: popularData.length,
                            itemBuilder: (BuildContext, int index) {
                              if (popularData[index].islive == false) {
                                return GestureDetector(

                                  onTap: () {
                                        
                                      


                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: NetworkImage(
                                            popularData[index].image,
                                          ),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                );
                              } else {
                                return GestureDetector(
                                        onTap: () {
                                            Navigator.of(context).pushNamed(ArtistProfileSCreen.routeName);
                                        },
                                  
                                  child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Stack(
                                          children: [
                                            Image(
                                              height: 200,
                                              width: 100,
                                              image: NetworkImage(
                                                popularData[index].image,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 10,
                                              child: Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Colors.purple[700],
                                              width: 2))),
                                );
                              }
                            }),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Text(
                            'More',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CategoryWidget(),

                      Divider(color: Colors.white,),
                     
                     PostWidgets()
                    ],
                  ),
                ),

                 
                 
                   
                   //
      
              
     
      
            ),
          
          );
        
     
   
  }
}
