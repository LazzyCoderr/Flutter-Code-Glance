import 'package:flutter/material.dart';
import 'package:flutter_code_image/model/canvas_color.dart';
import 'package:flutter_code_image/utils/colors.dart';
import 'package:mobx/mobx.dart';

part 'config_store.g.dart';

class ConfigStore = ConfigStoreBase with _$ConfigStore;

abstract class ConfigStoreBase with Store {
  @observable
  bool isLoading = false;

  @action
  void setLoading(bool val) {
    isLoading = val;
  }

  /// Canvas Configuration
  @observable
  String canvasTitle = "";

  @action
  void setCanvasTitle(String title) {
    canvasTitle = title;
  }

  @observable
  double canvasWidth = 400.0;

  @action
  void setCanvasWidth(double width) {
    canvasWidth = width;
  }

  @observable
  double canvasHeight = 200.0;

  @action
  void setCanvasHeight(double height) {
    canvasHeight = height;
  }

  /// Border Configuration

  @observable
  double canvasBorderRadius = 8.0;

  @action
  void setCanvasBorderRadius(double val) {
    canvasBorderRadius = val;
  }

  /// Shadow Configuration

  @observable
  double canvasXOffset = 0.0;

  @action
  void setCanvasXOffset(double val) {
    canvasXOffset = val;
  }

  @observable
  double canvasYOffset = 0.0;

  @action
  void setCanvasYOffset(double val) {
    canvasYOffset = val;
  }

  @observable
  double canvasBlurRadius = 8.0;

  @action
  void setCanvasBlurRadius(double val) {
    canvasBlurRadius = val;
  }

  @observable
  double canvasSpreadRadius = 8.0;

  @action
  void setCanvasSpreadRadius(double val) {
    canvasSpreadRadius = val;
  }

  /// Canvas colors
  @observable
  Color canvasColor = canvasColorList.first;

  @action
  void setCanvasColor(Color val) {
    canvasColor = val;
  }

  @observable
  CanvasBackgroundColorModel canvasBackgroundColor = canvasBackgroundColorList.first;

  @action
  void setCanvasBackgroundColor(CanvasBackgroundColorModel val) {
    canvasBackgroundColor = val;
  }

  /// Canvas Text size
  @observable
  double canvasTextSize = 16.0;

  @action
  void setCanvasTextSize(double val) {
    canvasTextSize = val;
  }

  @observable
  double canvasTextLetterSpacing = 1.0;

  @action
  void setCanvasLetterSpacing(double val) {
    canvasTextLetterSpacing = val;
  }
}
