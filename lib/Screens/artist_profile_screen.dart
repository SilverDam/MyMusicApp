import 'package:flutter/material.dart';
import 'package:music_app/Screens/album_songs_screen.dart';
import '../Models/models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ArtistProfileSCreen extends StatelessWidget {
  static const routeName = '/artistProfile/Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(

            onTap: () {

              Navigator.of(context).pop(ArtistProfileSCreen.routeName);
            },
              child: Icon(Icons.arrow_back, color: Colors.purple)),
          title: Text(
            albumInfo[0]['artistName'],
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: 400,
                child: Stack(children: [
                  Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    dotIncreasedColor: Colors.purple,
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: [
                      NetworkImage(
                        albumInfo[0]['heroImage'],
                      ),
                      NetworkImage(
                          'https://i.guim.co.uk/img/media/216a6d86592a72e2068cf60a8edc9d42256fa13f/0_272_1707_1023/master/1707.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=9e96dfd5989947f91315e89c59bbd7bd'),
                      NetworkImage(
                        'https://cdn.smehost.net/2020sonymusiccouk-ukprod/wp-content/uploads/2020/02/Wizkid-WEB.jpg',
                      ),
                      NetworkImage(
                          'https://media.wonderlandmagazine.com/uploads/2021/03/WizKid_Final_07.jpg')
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          colors: [
                            Colors.purple.withOpacity(0.3),
                            Colors.black87.withOpacity(0.1)
                          ]),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Albums',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(albumInfo[0]['albumImage'].length,
                        (index) {
                      return GestureDetector(
                        onTap: () {

                          Navigator.of(context).pushNamed(AlbumSong.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    albumInfo[0]['albumImage'][index],
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Colors.purple.withOpacity(0.3),
                                    Colors.black87.withOpacity(0.1)
                                  ]),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ));
  }
}
