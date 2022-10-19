import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_image/code_dashboard.dart';
import 'package:flutter_code_image/store/config_store.dart';
import 'package:flutter_code_image/widgets/loader_widget.dart';
import 'package:flutter_code_image/widgets/not_available_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screenshot/screenshot.dart';

ConfigStore configStore = ConfigStore();
ScreenshotController imageCaptureController = ScreenshotController();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Image",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        sliderTheme: SliderThemeData(
          showValueIndicator: ShowValueIndicator.always,
        ),
      ),
      themeMode: ThemeMode.light,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      home: Stack(
        children: [
          LayoutBuilder(
            builder: (layoutContext, layoutConstraint) {
              return layoutConstraint.maxWidth > 1300 && layoutConstraint.maxHeight > 650 ? CodeDashBoard() : NotAvailableWidget();
            },
          ),
          Observer(
            builder: (context) {
              return configStore.isLoading ? Center(child: LoaderWidget()) : Offstage();
            },
          ),
        ],
      ),
    );
  }
}
