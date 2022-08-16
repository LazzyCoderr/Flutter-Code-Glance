import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_image/code_image_screen.dart';
import 'package:flutter_code_image/control_panel.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Image",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      themeMode: ThemeMode.light,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: ControlPanelWidget(),
          ),
          Container(
            width: 0.5,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey.shade500,
          ),
          Expanded(
            flex: 6,
            child: CodeImageScreen(),
          ),
        ],
      ),
    );
  }
}
