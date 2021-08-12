import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Screens/play_screen.dart';
import '../Models/models.dart';

class AlbumSong extends StatelessWidget {

  static const routeName = '/albumSongs';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(child: Text('MADE IN LAGOS',  style: TextStyle(fontWeight:  FontWeight.w700),), ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Container(

        height:MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image(
              height: double.infinity,
              image: AssetImage(
                'assets/images/image1.jpg',
              ),
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
            Column(
              children: [
                
                Container(

                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/Wizkid-made-in-lagos.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                  ),
                  child: Container(
                    decoration:  BoxDecoration(
                       borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                       gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          colors: [
                            Colors.purple.withOpacity(0.4),
                            Colors.black87.withOpacity(0.3)
                          ]),
                    ),
                  )
                ),
                Container(
                  child: Expanded(
                    child: ListView.builder(
                        itemCount: albumSongs.length,
                        itemBuilder: (BuildContext, int index) {
                          return Column(
                            children: [
                              ListTile(
                                title: GestureDetector(

                                  onTap: () {
                                    Navigator.of(context).pushNamed(PlayScreen.routName);
                                  },
                                  child: Text(
                                    albumSongs[index].title,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 1.2),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Divider(color: Colors.grey, thickness: 0.7,),
                              )
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
