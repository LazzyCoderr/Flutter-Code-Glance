import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_image/code_image_screen.dart';
import 'package:flutter_code_image/control_panel.dart';
import 'package:flutter_code_image/store/config_store.dart';
import 'package:google_fonts/google_fonts.dart';

ConfigStore configStore = ConfigStore();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Image",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      themeMode: ThemeMode.light,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Color(0xFF525E75),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(Icons.download), const SizedBox(width: 6), Text("Download", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))],
        ),
      ),
    );
  }
}
