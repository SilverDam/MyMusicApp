import 'package:flutter/material.dart';
import '../Models/models.dart';


class PostWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
   return Column(
     
     
     
     children: 

   posts.map((post) {
     

        return Padding(

          padding: EdgeInsets.symmetric( vertical: 5 ),
          
          child: Container(
             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
   
            height: 400,
            width: 400,
            color: Colors.white,

            child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                   
                   Row(

                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [


                       Row(
                             children: [

                                 Container(

                         height: 50,
                         width: 50,
                         
                         decoration: BoxDecoration(

                           image: DecorationImage(image: NetworkImage(post.artistImage), fit: BoxFit.cover),
                           color: Colors.purple,

                           shape: BoxShape.circle
                         ),

                       ),

                       SizedBox(width:10 ,),

                       Container(
                         child: Text(post.artistName, style: TextStyle(fontWeight: FontWeight.w700),)),
                       Icon(Icons.verified_outlined, color: Colors.purple,),
                         

                               
                             ],
                       ),
                     
                             
                       Icon(Icons.more_horiz)
                     ],
                   ),

                   Divider(color: Colors.purple, ),

                   Text(post.post,  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                    SizedBox(height:14,),


                   Container(
                     height: 200,
                     width:400,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage(post.PostImage), fit: BoxFit.cover),

                       borderRadius: BorderRadius.circular(10),

                       color: Colors.purple
                     ),
                   ),
                   SizedBox(height:10,),

                    Divider(color: Colors.purple, ),

                     SizedBox(height:5,),

                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: [

                      Icon(Icons.comment_outlined, color: Colors.black87, size: 20,),
                        Icon(Icons.favorite_outline, color: Colors.black87, size: 20,),
                         Icon(Icons.share_outlined, color: Colors.black87, size: 20,)
                    ],)

              ],
                
            ),

          ),
        );

   }).toList()

      
      
      
      
      ,);
   
   
  }
}