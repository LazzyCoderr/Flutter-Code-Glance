import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlPanelWidget extends StatefulWidget {
  @override
  State<ControlPanelWidget> createState() => _ControlPanelWidgetState();
}

class _ControlPanelWidgetState extends State<ControlPanelWidget> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
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
