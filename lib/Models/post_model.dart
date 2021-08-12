class PostsModel {
  String post;
  String artistImage;
  String artistName;
  String PostImage;

  PostsModel({
    this.post,
    this.artistImage,
    this.artistName,
    this.PostImage,
  });
}

List<PostsModel> posts = [
  PostsModel(
    post:
        'Featuring @Drake #SummerSixteen Tour Merchandise & Exclusive #Revenge Merchandise.',
    artistImage: 'https://i.redd.it/fm4hlwitwcj51.jpg',
    artistName: 'Drake',
    PostImage: 'https://ionesfly.files.wordpress.com/2016/01/caawiwjwwaeyaa_.jpg?w=580'
  ),


  PostsModel(
    post:
        'Update your playlist #SoundgodFestReloaded https://instagram.com/p/COJDUWgpKUo/?igshid=tanwhbdxygoc',
    artistImage: 'https://upload.wikimedia.org/wikipedia/commons/f/ff/SGfV007.jpg',
    artistName: 'Runtown',
    PostImage: 'https://www.bellanaija.com/wp-content/uploads/2021/04/Runtown-scaled-1.jpeg'
  ),


  PostsModel(
    post:
        '#MadeinLagos Tonight 11.11pm Eagle',
    artistImage: 'https://i2.wp.com/media.ghgossip.com/wp-content/uploads/2021/02/24162204/wizkid-mil.jpg?fit=1200%2C800&ssl=1',
    artistName: 'Wizkid',
    PostImage: 'https://www.clashmusic.com/sites/default/files/styles/article_feature/public/field/image/wizkid.jpg?itok=sh2Os6He'
  ),


  PostsModel(
    post:
        'Billie Eilish - Happier Than Ever Pre-save on @Steam.',
    artistImage: 'https://wps3.dbknews.com/uploads/2020/02/billie.jpg',
    artistName: 'Billie Eilish',
    PostImage: 'https://media.pitchfork.com/photos/608839f84c67840074db8afb/master/pass/Billie-Eilish-Happier-Than-Ever.jpeg'
  ),
];
