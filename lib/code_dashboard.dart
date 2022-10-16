import 'dart:convert';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_code_image/main.dart';
import 'package:flutter_code_image/widgets/code_image_widget.dart';
import 'package:flutter_code_image/widgets/control_panel_widget.dart';

class CodeDashBoard extends StatefulWidget {
  @override
  State<CodeDashBoard> createState() => _CodeDashBoardState();
}

class _CodeDashBoardState extends State<CodeDashBoard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => asyncInitState());
  }

  Future<void> asyncInitState() async {
    configStore.setLoading(true);
    Future.delayed(const Duration(seconds: 5), () {
      configStore.setLoading(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: ControlPanelWidget(),
          ),
          Container(
            width: 0.5,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey.shade500,
          ),
          Expanded(
            child: CodeImageScreen(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async{
          configStore.setLoading(true);
          await imageCaptureController.capture(delay: Duration(seconds: 5)).then((value) {
            String base64String = base64Encode(value!);
            String header = "data:image/png;base64,";
            String url = header + base64String;
            html.AnchorElement anchorElement = html.AnchorElement(href: url);
            anchorElement.download = url;
            anchorElement.click();
            configStore.setLoading(false);
          });
        },
        backgroundColor: Color(0xFF525E75),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.download),
            const SizedBox(width: 6),
            Text(
              "Download",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
