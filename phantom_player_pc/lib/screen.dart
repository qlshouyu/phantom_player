import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Player player = Player(id: 0);
  List<Media> medias = <Media>[];
  @override
  Widget build(BuildContext context) {
    medias.add(Media.file(File("C:\\Users\\lugao2\\Downloads\\oceans.mp4")));
    player.open(Playlist(medias: medias));
    player.play();
    return Center(
      child: Video(
        player: player,
        width: double.infinity,
        height: double.infinity,
        volumeThumbColor: Colors.blue,
        volumeActiveColor: Colors.blue,
        showControls: true,
      ),
    );
  }
}
