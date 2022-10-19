import 'package:flutter/material.dart';

const appVersion = "alpha-1.0.0";
const appName = "Flutter Code Glance";
const appDescription =
    "Flutter Code Glance is hustle free code snippet tool which helps developer to make code snippets with hand pick colour and customized layout. No Figma or photoshop needed to make code snippets. Currently this project is in alpha version and under development also this is free and open source you can download from github link is given below. Share this project with your developer friends. This project is purely written in Dart and Flutter.";

/// Canvas Border, Blur, Spread, etc. start and end value
const startValue = 0.0;
const endValue = 24.0;

/// Canvas Min and Max Height
const canvasMinHeight = 200.0;
const canvasMaxHeight = 500.0;

/// Canvas Min and Max Width
const canvasMinWidth = 400.0;
const canvasMaxWidth = 800.0;

/// Canvas Text Size
const canvasTextMinSize = 10.0;
const canvasTextMaxSize = 20.0;

/// Canvas Text letter Spacing
const canvasTextLetterMinSize = 1.0;
const canvasTextLetterMaxSize = 5.0;

Map<RegExp, TextStyle> textWithStyleList = {
  RegExp(r"\babstract\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\belse\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bimport\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bshow\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bas\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\benum\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bin\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bstatic\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bassert\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bexport\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\binterface\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bsuper\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\basync\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bextends\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bis\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bswitch\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bawait\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bextension\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\blate\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bsync\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bbreak\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bexternal\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\blibrary\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bthis\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bcase\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bfactory\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bmixin\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bthrow\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bcatch\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bfalse\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bnew\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\btrue\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bclass\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bfinal\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bnull\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\btry\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bconst\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bfinally\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bon\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\btypedef\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bcontinue\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bfor\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\boperator\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bvar\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bcovariant\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bFunction\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bpart\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bvoid\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bdefault\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bget\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\brequired\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bwhile\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bdeferred\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bhide\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\brethrow\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bwith\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bdo\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bif\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\breturn\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\byield\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bdynamic\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bimplements\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"\bset\b"): TextStyle(color: Colors.deepOrange),
  RegExp(r"[']"): TextStyle(color: Colors.deepOrange),
  RegExp(r'["]'): TextStyle(color: Colors.deepOrange),
  RegExp(r"[(){}<>\[\]]"): TextStyle(color: Colors.green),
};

/// Lottie animation constant path
const notAvailable = "assets/not_available.json";

/// Image constant path
const codeImage = "assets/code_image.png";
