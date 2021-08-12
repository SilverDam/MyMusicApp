import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';




class Category {

 String iconTitle;
 IconData icons;


Category({
  this.iconTitle,
  this.icons,
});

}







List <Category> categories = [

  Category(iconTitle:  'My Playlist', icons:  Icons.playlist_play_outlined, ),
  
  Category(iconTitle:  'Songs', icons:  Icons.music_note, ),

  Category(iconTitle:  'Albums', icons:      Icons.album_outlined, ),

  Category(iconTitle:  'Videos', icons:  Icons.video_collection_outlined, ),

  Category(iconTitle:  'New Release', icons:   Icons.new_releases_outlined, ),



];