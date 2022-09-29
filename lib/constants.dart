import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tiktok_getx_demo/view/screens/add_video.dart';

const backgroungColor = Color(0xff000000);
const buttonColor = Color(0xfff44336);
const borderColor = Color(0xff424242);

getRandomColor() => [
  Colors.blueAccent,
  Colors.redAccent,
  Colors.greenAccent,
][Random().nextInt(3)];

  const pageindex = [
    Text('Home'),
    Text('Search'),
    addVideoScreen(),
    Text('Messages'),
    Text('Profile')
  ];