import 'package:flutter/material.dart';
import 'package:music_app/Screens/album_songs_screen.dart';
import 'package:music_app/Screens/main_screen.dart';
import 'package:music_app/Screens/play_screen.dart';
import './Screens/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'CaviarDreams',
        primarySwatch: Colors.blue,
      ),
      home:MainScreen(),

      routes: {
              
            AlbumSong.routeName: (context) => AlbumSong(),
            ArtistProfileSCreen.routeName: (context) => ArtistProfileSCreen(),
            MainScreen.routeName: (context) => MainScreen(),
            PlayScreen.routName: (context) => PlayScreen(),
         

      },
    );
  }
}

