import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_code_image/main.dart';
import 'package:flutter_code_image/utils/constants.dart';
import 'package:flutter_code_image/utils/key_actions.dart';
import 'package:flutter_code_image/utils/rich_text_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:screenshot/screenshot.dart';

class CodeImageScreen extends StatefulWidget {
  @override
  State<CodeImageScreen> createState() => _CodeImageScreenState();
}

class _CodeImageScreenState extends State<CodeImageScreen> {
  late RichTextController _controller;

  @override
  void initState() {
    _controller = RichTextController(
      patternMatchMap: textWithStyleList,
      onMatch: (List<String> matches) {},
      deleteOnBack: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Observer(
          builder: (ctx) {
            return Screenshot(
              controller: imageCaptureController,
              child: Container(
                height: canvasMaxHeight + 100,
                width: canvasMaxWidth + 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      configStore.canvasBackgroundColor.startColor,
                      configStore.canvasBackgroundColor.endColor,
                    ],
                    stops: [0.0, 1.0],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    tileMode: TileMode.repeated,
                  ),
                ),
                child: Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10, tileMode: TileMode.repeated),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
                      width: configStore.canvasWidth,
                      height: configStore.canvasHeight,
                      decoration: BoxDecoration(
                        color: configStore.canvasColor,
                        borderRadius: BorderRadius.circular(configStore.canvasBorderRadius),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: configStore.canvasBlurRadius,
                            spreadRadius: configStore.canvasSpreadRadius,
                            offset: Offset(configStore.canvasXOffset, configStore.canvasYOffset),
                            color: Color(0xFF000000).withOpacity(0.5),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.amber,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                              Text(configStore.canvasTitle, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF))),
                              SizedBox(),
                            ],
                          ),
                          Expanded(
                            child: Actions(
                              actions: {InsertTabIntent: InsertTabAction()},
                              child: Shortcuts(
                                shortcuts: {LogicalKeySet(LogicalKeyboardKey.tab): InsertTabIntent(2, _controller)},
                                child: TextField(
                                  autofocus: true,
                                  controller: _controller,
                                  maxLines: null,
                                  keyboardType: TextInputType.multiline,
                                  expands: true,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: configStore.canvasTextSize,
                                    letterSpacing: configStore.canvasTextLetterSpacing,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (val) {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
