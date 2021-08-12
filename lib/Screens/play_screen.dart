import 'dart:math';
import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Models/models.dart';

class PlayScreen extends StatefulWidget {
  static const routName = '/playScreen';
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  
 IconData playBtn = FontAwesomeIcons.play;
  bool isPlaying = false;

  

  AudioPlayer _audioPlayer;

  AudioCache _audioCache;

  Duration _totalDuration = Duration();

  Duration _position = Duration();

  String _audioState;

  _playAudio() {
    _audioCache
        .play('audios/wizkid_piece_of_me_audio_ft._ella_mai_mp3_69663.mp3');
  }

  _pauseAudio() {
    _audioPlayer.pause();
  }

  @override
  void initState() {
    super.initState();

    _audioPlayer = AudioPlayer();
    _audioCache = AudioCache(fixedPlayer: _audioPlayer);

    _audioPlayer.onDurationChanged.listen((updatedDuration) {
      setState(() {
        _totalDuration = updatedDuration;
      });
    });

    _audioPlayer.onAudioPositionChanged.listen((updatedPosition) {
      setState(() {
        _position = updatedPosition;
      });
    });

    _audioPlayer.onPlayerStateChanged.listen((playerSate) {
      if (playerSate == AudioPlayerState.STOPPED) _audioState = 'stopped';

      if (playerSate == AudioPlayerState.PLAYING) _audioState = 'playing';

      if (playerSate == AudioPlayerState.PAUSED) _audioState = 'paused';

      setState(() {});
    });
  }

  void _seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _audioPlayer.seek(newPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text(
            'Now playing',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.more_horiz_outlined, color: Colors.white))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
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
                Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 100),
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigo[50],
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                spreadRadius: -5,
                                offset: Offset(-5, -5),
                                blurRadius: 30),
                            BoxShadow(
                                color: Colors.blue[900].withOpacity(.2),
                                spreadRadius: 2,
                                offset: Offset(7, 7),
                                blurRadius: 20)
                          ],
                        ),
                        child: Stack(overflow: Overflow.visible, children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/Wizkid-made-in-lagos.jpg',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'ESSENCE',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      letterSpacing: -1.5),
                ),
                Text(
                  'Wizkid featuring tems',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: -1.0),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${_position.inMinutes}: ${_position.inSeconds.remainder(60)}',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Expanded(
                        child: Slider.adaptive(
                          value: _position.inSeconds.toDouble(),
                          onChanged: (value) {
                            _seekToSec(value.toInt());
                          },
                          activeColor: Colors.white,
                          inactiveColor: Colors.grey,
                          max: _totalDuration.inSeconds.toDouble(),
                        ),
                      ),
                      Text(
                          '${_totalDuration.inMinutes}: ${_totalDuration.inSeconds.remainder(60)}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.stepBackward,
                          color: Colors.white,
                          size: 30,
                        ),
                       IconButton(icon: Icon(playBtn,  color: Colors.white,
                          size: 30,), onPressed: () {



                            if (!isPlaying) {

                              _pauseAudio();

                              setState(() {

                                playBtn = FontAwesomeIcons.play;
                                                              
                             });


                            }

                            _playAudio();

                            setState(() {
                                 playBtn = FontAwesomeIcons.pause;
                                                          
                             });


                       }),
                        FaIcon(
                          FontAwesomeIcons.stepForward,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
