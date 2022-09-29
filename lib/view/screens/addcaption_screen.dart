import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_getx_demo/view/widgets/text_input.dart';
import 'package:video_player/video_player.dart';
import 'dart:io';

class addCaption_Screen extends StatefulWidget {
  File videoFile;
  String videopath;

  addCaption_Screen(
      {Key? key, required this.videoFile, required this.videopath})
      : super(key: key);

  @override
  State<addCaption_Screen> createState() => _addCaption_ScreenState();
}

class _addCaption_ScreenState extends State<addCaption_Screen> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      videoPlayerController = VideoPlayerController.file(widget.videoFile);
    });
    videoPlayerController.initialize();
    videoPlayerController.play();
    videoPlayerController.setLooping(true);
    videoPlayerController.setVolume(0.7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.5,
            child: VideoPlayer(videoPlayerController),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [TextInputField(controller: controller, myIcon: Icons.music_note, myLabelText: "Song Name")],),
          )
        ],
      ),
    );
  }
}
