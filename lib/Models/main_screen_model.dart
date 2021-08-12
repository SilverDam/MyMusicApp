import 'package:flutter/material.dart';

class MainModel {
  final String name;
  final String image;
   final bool islive;


  MainModel({
    this.name,
    this.image,
    this.islive

  });
}

List <MainModel> popularData = [

   MainModel(
     name: 'Billie Eilish',
     image: 'https://wps3.dbknews.com/uploads/2020/02/billie.jpg',
     islive: true
      
  ),

   
   MainModel(
     name: 'Post Malone',
     image: 'https://yt3.ggpht.com/ytc/AAUvwngEccasZINOruGNJrrWPijiYyEs7oNppT9StVJQ4Q=s900-c-k-c0x00ffffff-no-rj',
     islive: false
   ),

    
   MainModel(
    name: 'Wizkid',
     image: 'https://i2.wp.com/media.ghgossip.com/wp-content/uploads/2021/02/24162204/wizkid-mil.jpg?fit=1200%2C800&ssl=1',
     islive: true
  ),


   MainModel(
     name: 'Drake',
     image: 'https://i.redd.it/fm4hlwitwcj51.jpg',
     islive: false
  ),

   
   MainModel(
     name: 'Burna Boy',
     image: 'https://crackmagazine.net/wp-content/uploads/2020/02/Burna-Boy-Parallax.jpg',
     islive: true
 ),

  
   MainModel(
     name: 'Davido',
     image: 'https://notjustok.com/wp-content/uploads/2020/07/Davido-ft-Popcaan-Risky.jpg',
     islive: false
  )
,

   MainModel(
     name: 'Beyonce',
     image: 'https://ichef.bbci.co.uk/news/976/cpsprodpb/791C/production/_114240013_gettyimages-1253172998.jpg',
     islive: true
  ),




   MainModel(
     name: 'Justin Bebier',
     image: 'https://i.pinimg.com/originals/7c/d2/d8/7cd2d8181203ec9aff8a7e183f79c433.jpg',
     islive: false
 ),


   
  
   MainModel(
     name: 'Runtown',
     image: 'https://upload.wikimedia.org/wikipedia/commons/f/ff/SGfV007.jpg',
     islive: true
     
),





];