import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_image/main.dart';

class ControlPanelWidget extends StatefulWidget {
  @override
  State<ControlPanelWidget> createState() => _ControlPanelWidgetState();
}

class _ControlPanelWidgetState extends State<ControlPanelWidget> {
  ScrollController _scrollController = ScrollController();

  late TextEditingController _canvasTitleController;
  late TextEditingController _canvasWidthController;
  late TextEditingController _canvasHeightController;

  late TextEditingController _canvasTopLeftBorderController;
  late TextEditingController _canvasTopRightBorderController;
  late TextEditingController _canvasBottomLeftBorderController;
  late TextEditingController _canvasBottomRightBorderController;

  late TextEditingController _canvasOffsetXController;
  late TextEditingController _canvasOffsetYController;
  late TextEditingController _canvasBlurRadiusController;
  late TextEditingController _canvasSpreadRadiusController;

  @override
  void initState() {
    super.initState();

    _canvasTitleController = TextEditingController(text: configStore.canvasTitle);
    _canvasWidthController = TextEditingController(text: configStore.canvasWidth.toString());
    _canvasHeightController = TextEditingController(text: configStore.canvasHeight.toString());

    _canvasTopLeftBorderController = TextEditingController(text: configStore.topLeftBorderRadius.toString());
    _canvasTopRightBorderController = TextEditingController(text: configStore.topRightBorderRadius.toString());
    _canvasBottomLeftBorderController = TextEditingController(text: configStore.bottomLeftBorderRadius.toString());
    _canvasBottomRightBorderController = TextEditingController(text: configStore.bottomRightBorderRadius.toString());

    _canvasOffsetXController = TextEditingController(text: configStore.shadowOffsetX.toString());
    _canvasOffsetYController = TextEditingController(text: configStore.shadowOffsetY.toString());
    _canvasBlurRadiusController = TextEditingController(text: configStore.canvasBackgroundColorBlurRadius.toString());
    _canvasSpreadRadiusController = TextEditingController(text: configStore.canvasBackgroundSpreadRadius.toString());
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 16),
        controller: _scrollController,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/code_image.png', width: 40, height: 40),
                    const SizedBox(width: 16),
                    const Text("Flutter Code Image", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 16),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasTitleController,
                        decoration: InputDecoration(
                          hintText: "Image name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (title) {
                          configStore.setCanvasTitle(title);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Width", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasWidthController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (width) {
                          configStore.setCanvasWidth(double.parse(width));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Height", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasHeightController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (height) {
                          configStore.setCanvasHeight(double.parse(height));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Border", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Top left", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasTopLeftBorderController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (topLeftRadius) {
                          configStore.setTopLeftBorderRadius(double.parse(topLeftRadius));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Top Right", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasTopRightBorderController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (topRightRadius) {
                          configStore.setTopRightBorderRadius(double.parse(topRightRadius));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Bottom Left", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasBottomLeftBorderController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (bottomLeftRadius) {
                          configStore.setBottomLeftBorderRadius(double.parse(bottomLeftRadius));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Bottom Right", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasBottomRightBorderController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (bottomRightRadius) {
                          configStore.setBottomRightBorderRadius(double.parse(bottomRightRadius));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Shadow", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Offset X", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasOffsetXController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (offsetX) {
                          configStore.setShadowOffsetX(double.parse(offsetX));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Offset Y", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasOffsetYController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (offsetY) {
                          configStore.setShadowOffsetY(double.parse(offsetY));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Blur Radius", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasBlurRadiusController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (blurRadius) {
                          configStore.setCanvasBackgroundColorBlurRadius(double.parse(blurRadius));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Text("Spread Radius", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
                    const SizedBox(width: 32),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        controller: _canvasSpreadRadiusController,
                        decoration: InputDecoration(
                          hintText: "0.0",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                        ),
                        onChanged: (spreadRadius) {
                          configStore.setCanvasBackgroundSpreadRadius(double.parse(spreadRadius));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
