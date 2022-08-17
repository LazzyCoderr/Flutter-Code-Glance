import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_code_image/main.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CodeImageScreen extends StatefulWidget {
  @override
  State<CodeImageScreen> createState() => _CodeImageScreenState();
}

class _CodeImageScreenState extends State<CodeImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (ctx) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF020024),
              Color(0xFF090979),
              Color(0xFF00d4ff),
            ],
            stops: [0.0, 0.35, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.mirror,
          ),
        ),
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(16.0),
            width: configStore.canvasWidth,
            height: configStore.canvasHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(configStore.topLeftBorderRadius),
                topRight: Radius.circular(configStore.topRightBorderRadius),
                bottomLeft: Radius.circular(configStore.bottomLeftBorderRadius),
                bottomRight: Radius.circular(configStore.bottomRightBorderRadius),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: configStore.canvasBackgroundColorBlurRadius,
                  spreadRadius: configStore.canvasBackgroundSpreadRadius,
                  offset: Offset(configStore.shadowOffsetX, configStore.shadowOffsetY),
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
                    Text(configStore.canvasTitle, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF000000))),
                    SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
