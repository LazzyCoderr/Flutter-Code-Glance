import 'dart:html' as html;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_image/main.dart';
import 'package:flutter_code_image/utils/colors.dart';
import 'package:flutter_code_image/utils/constants.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ControlPanelWidget extends StatefulWidget {
  ControlPanelWidget({Key? key}) : super(key: key);

  @override
  State<ControlPanelWidget> createState() => _ControlPanelWidgetState();
}

class _ControlPanelWidgetState extends State<ControlPanelWidget> {
  ScrollController _scrollController = ScrollController();
  late TextEditingController _canvasTitleController;

  @override
  void initState() {
    super.initState();
    _canvasTitleController = TextEditingController(text: configStore.canvasTitle);
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
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(codeImage, width: 40, height: 40),
                        const SizedBox(width: 16),
                        const AutoSizeText(
                          appName,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      appVersion,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 16),
                    Expanded(
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
                    Text("Width", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Observer(builder: (context) {
                        return Slider(
                          value: configStore.canvasWidth,
                          min: canvasMinWidth,
                          max: canvasMaxWidth,
                          label: configStore.canvasWidth.toInt().toString(),
                          onChanged: (val) {
                            configStore.setCanvasWidth(val);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Height", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Observer(builder: (context) {
                        return Slider(
                          value: configStore.canvasHeight,
                          min: canvasMinHeight,
                          max: canvasMaxHeight,
                          label: configStore.canvasHeight.toInt().toString(),
                          onChanged: (val) {
                            configStore.setCanvasHeight(val);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Canvas Text", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Size", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Observer(builder: (context) {
                            return Slider(
                              value: configStore.canvasTextSize,
                              min: canvasTextMinSize,
                              max: canvasTextMaxSize,
                              label: configStore.canvasTextSize.toInt().toString(),
                              onChanged: (val) {
                                configStore.setCanvasTextSize(val);
                              },
                            );
                          }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Spacing", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        const SizedBox(width: 8),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Observer(builder: (context) {
                            return Slider(
                              value: configStore.canvasTextLetterSpacing,
                              min: canvasTextLetterMinSize,
                              max: canvasTextLetterMaxSize,
                              label: configStore.canvasTextLetterSpacing.toInt().toString(),
                              onChanged: (val) {
                                configStore.setCanvasLetterSpacing(val);
                              },
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Canvas Color", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Observer(builder: (context) {
                      return Wrap(
                        runSpacing: 4,
                        children: canvasColorList.map((e) {
                          return Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  configStore.setCanvasColor(e);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(4),
                                  width: ((MediaQuery.of(context).size.width * 0.25) / 5) - 15,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: e,
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (configStore.canvasColor == e)
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Icon(
                                    Icons.favorite_rounded,
                                    size: 18,
                                    color: Colors.red,
                                  ),
                                ),
                            ],
                          );
                        }).toList(),
                      );
                    }),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Canvas Background", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Observer(builder: (context) {
                      return Wrap(
                        runSpacing: 4,
                        children: canvasBackgroundColorList.map((e) {
                          return Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  configStore.setCanvasBackgroundColor(e);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(4),
                                  width: ((MediaQuery.of(context).size.width * 0.25) / 5) - 15,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [e.startColor, e.endColor],
                                      stops: [0.0, 1.0],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      tileMode: TileMode.repeated,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (configStore.canvasBackgroundColor == e)
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Icon(
                                    Icons.favorite_rounded,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                ),
                            ],
                          );
                        }).toList(),
                      );
                    }),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Text("Border", style: TextStyle(fontSize: 16)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Observer(builder: (context) {
                        return Slider(
                          value: configStore.canvasBorderRadius,
                          min: startValue,
                          max: endValue,
                          label: configStore.canvasBorderRadius.toInt().toString(),
                          onChanged: (val) {
                            configStore.setCanvasBorderRadius(val);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text("Shadow", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  children: [
                    Text("Offset X", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Observer(builder: (context) {
                        return Slider(
                          value: configStore.canvasXOffset,
                          min: startValue,
                          max: endValue,
                          label: configStore.canvasXOffset.toInt().toString(),
                          onChanged: (val) {
                            configStore.setCanvasXOffset(val);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Offset Y", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Observer(builder: (context) {
                        return Slider(
                          value: configStore.canvasYOffset,
                          min: startValue,
                          max: endValue,
                          label: configStore.canvasYOffset.toInt().toString(),
                          onChanged: (val) {
                            configStore.setCanvasYOffset(val);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Blur", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Observer(builder: (context) {
                        return Slider(
                          value: configStore.canvasBlurRadius,
                          min: startValue,
                          max: endValue,
                          label: configStore.canvasBlurRadius.toInt().toString(),
                          onChanged: (val) {
                            configStore.setCanvasBlurRadius(val);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Spread", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Observer(builder: (context) {
                        return Slider(
                          value: configStore.canvasSpreadRadius,
                          min: startValue,
                          max: endValue,
                          label: configStore.canvasSpreadRadius.toInt().toString(),
                          onChanged: (val) {
                            configStore.setCanvasSpreadRadius(val);
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Divider(),
              const SizedBox(height: 8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(text: "Made with \u{1F499} by"),
                    TextSpan(
                      text: " LazzyCoderr",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        fontStyle: FontStyle.italic,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          html.window.open('https://github.com/LazzyCoderr', 'new tab');
                        },
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
