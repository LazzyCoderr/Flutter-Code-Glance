import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_image/code_dashboard.dart';
import 'package:flutter_code_image/store/config_store.dart';
import 'package:flutter_code_image/widgets/loader_widget.dart';
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
      home: Observer(builder: (context) {
        return Stack(
          children: [
            LayoutBuilder(builder: (layoutContext, layoutConstraint) {
              return layoutConstraint.minWidth < 1200 || layoutConstraint.minWidth > 992 ? CodeDashBoard() : Container();
            }),
            if (configStore.isLoading) Center(child: LoaderWidget()),
          ],
        );
      }),
    );
  }
}
