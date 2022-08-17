import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'config_store.g.dart';

class ConfigStore = ConfigStoreBase with _$ConfigStore;

abstract class ConfigStoreBase with Store {
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
    canvasWidth = width <= 400 ? 400 : width;
  }

  @observable
  double canvasHeight = 200.0;

  @action
  void setCanvasHeight(double height) {
    canvasHeight = height <= 200 ? 200 : height;
  }

  /// Border Configuration
  @observable
  double topLeftBorderRadius = 8.0;

  @action
  void setTopLeftBorderRadius(double topLeftRadius) {
    topLeftBorderRadius = topLeftRadius;
  }

  @observable
  double topRightBorderRadius = 8.0;

  @action
  void setTopRightBorderRadius(double topRightRadius) {
    topRightBorderRadius = topRightRadius;
  }

  @observable
  double bottomLeftBorderRadius = 8.0;

  @action
  void setBottomLeftBorderRadius(double bottomLeftRadius) {
    bottomLeftBorderRadius = bottomLeftRadius;
  }

  @observable
  double bottomRightBorderRadius = 8.0;

  @action
  void setBottomRightBorderRadius(double bottomRightRadius) {
    bottomRightBorderRadius = bottomRightRadius;
  }

  /// Shadow Configuration
  @observable
  double canvasBackgroundColorBlurRadius = 16.0;

  @action
  void setCanvasBackgroundColorBlurRadius(double blurRadius) {
    canvasBackgroundColorBlurRadius = blurRadius;
  }

  @observable
  double canvasBackgroundSpreadRadius = 16.0;

  @action
  void setCanvasBackgroundSpreadRadius(double spreadRadius) {
    canvasBackgroundSpreadRadius = spreadRadius;
  }

  @observable
  Color canvasBackgroundShadowColor = Color(0xFF000000);

  @action
  void setCanvasBackgroundShadowColor(Color color) {
    canvasBackgroundShadowColor = color;
  }

  @observable
  double shadowOffsetX = 0.0;

  @action
  void setShadowOffsetX(double offsetX) {
    shadowOffsetX = offsetX;
  }

  @observable
  double shadowOffsetY = 0.0;

  @action
  void setShadowOffsetY(double offsetY) {
    shadowOffsetY = offsetY;
  }
}
