import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.78),
        title: const Center(
          child: Text(
            'Flutter Xylophone',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/musics/do.mp3"),
                showNotification: true,
              );
            },
            child: Ink(
              width: MediaQuery.of(context).size.height * 10,
              height: MediaQuery.of(context).size.height * 0.124,
              color: Color(0xffEF443A),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/musics/re.mp3"),
                showNotification: true,
              );
            },
            child: Ink(
              width: MediaQuery.of(context).size.height * 10,
              height: MediaQuery.of(context).size.height * 0.124,
              color: Color(0xffF99700),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/musics/mi.mp3"),
                showNotification: true,
              );
            },
            child: Ink(
              width: MediaQuery.of(context).size.height * 10,
              height: MediaQuery.of(context).size.height * 0.124,
              color: Color(0xffFFE93B),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/musics/fa.mp3"),
                showNotification: true,
              );
            },
            child: Ink(
              width: MediaQuery.of(context).size.height * 10,
              height: MediaQuery.of(context).size.height * 0.124,
              color: Color(0xff4CB050),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/musics/sol.mp3"),
                showNotification: true,
              );
            },
            child: Ink(
              width: MediaQuery.of(context).size.height * 10,
              height: MediaQuery.of(context).size.height * 0.124,
              color: Color(0xff2E968C),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/musics/lya.mp3"),
                showNotification: true,
              );
            },
            child: Ink(
              width: MediaQuery.of(context).size.height * 10,
              height: MediaQuery.of(context).size.height * 0.124,
              color: Color(0xff2996F5),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/musics/si.mp3"),
                showNotification: true,
              );
            },
            child: Ink(
              width: MediaQuery.of(context).size.height * 10,
              height: MediaQuery.of(context).size.height * 0.124,
              color: Color(0xff9B28B1),
            ),
          ),
        ],
      ),
    );
  }
}
