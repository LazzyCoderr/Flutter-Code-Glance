// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfigStore on ConfigStoreBase, Store {
  late final _$canvasTitleAtom =
      Atom(name: 'ConfigStoreBase.canvasTitle', context: context);

  @override
  String get canvasTitle {
    _$canvasTitleAtom.reportRead();
    return super.canvasTitle;
  }

  @override
  set canvasTitle(String value) {
    _$canvasTitleAtom.reportWrite(value, super.canvasTitle, () {
      super.canvasTitle = value;
    });
  }

  late final _$canvasWidthAtom =
      Atom(name: 'ConfigStoreBase.canvasWidth', context: context);

  @override
  double get canvasWidth {
    _$canvasWidthAtom.reportRead();
    return super.canvasWidth;
  }

  @override
  set canvasWidth(double value) {
    _$canvasWidthAtom.reportWrite(value, super.canvasWidth, () {
      super.canvasWidth = value;
    });
  }

  late final _$canvasHeightAtom =
      Atom(name: 'ConfigStoreBase.canvasHeight', context: context);

  @override
  double get canvasHeight {
    _$canvasHeightAtom.reportRead();
    return super.canvasHeight;
  }

  @override
  set canvasHeight(double value) {
    _$canvasHeightAtom.reportWrite(value, super.canvasHeight, () {
      super.canvasHeight = value;
    });
  }

  late final _$topLeftBorderRadiusAtom =
      Atom(name: 'ConfigStoreBase.topLeftBorderRadius', context: context);

  @override
  double get topLeftBorderRadius {
    _$topLeftBorderRadiusAtom.reportRead();
    return super.topLeftBorderRadius;
  }

  @override
  set topLeftBorderRadius(double value) {
    _$topLeftBorderRadiusAtom.reportWrite(value, super.topLeftBorderRadius, () {
      super.topLeftBorderRadius = value;
    });
  }

  late final _$topRightBorderRadiusAtom =
      Atom(name: 'ConfigStoreBase.topRightBorderRadius', context: context);

  @override
  double get topRightBorderRadius {
    _$topRightBorderRadiusAtom.reportRead();
    return super.topRightBorderRadius;
  }

  @override
  set topRightBorderRadius(double value) {
    _$topRightBorderRadiusAtom.reportWrite(value, super.topRightBorderRadius,
        () {
      super.topRightBorderRadius = value;
    });
  }

  late final _$bottomLeftBorderRadiusAtom =
      Atom(name: 'ConfigStoreBase.bottomLeftBorderRadius', context: context);

  @override
  double get bottomLeftBorderRadius {
    _$bottomLeftBorderRadiusAtom.reportRead();
    return super.bottomLeftBorderRadius;
  }

  @override
  set bottomLeftBorderRadius(double value) {
    _$bottomLeftBorderRadiusAtom
        .reportWrite(value, super.bottomLeftBorderRadius, () {
      super.bottomLeftBorderRadius = value;
    });
  }

  late final _$bottomRightBorderRadiusAtom =
      Atom(name: 'ConfigStoreBase.bottomRightBorderRadius', context: context);

  @override
  double get bottomRightBorderRadius {
    _$bottomRightBorderRadiusAtom.reportRead();
    return super.bottomRightBorderRadius;
  }

  @override
  set bottomRightBorderRadius(double value) {
    _$bottomRightBorderRadiusAtom
        .reportWrite(value, super.bottomRightBorderRadius, () {
      super.bottomRightBorderRadius = value;
    });
  }

  late final _$canvasBackgroundColorBlurRadiusAtom = Atom(
      name: 'ConfigStoreBase.canvasBackgroundColorBlurRadius',
      context: context);

  @override
  double get canvasBackgroundColorBlurRadius {
    _$canvasBackgroundColorBlurRadiusAtom.reportRead();
    return super.canvasBackgroundColorBlurRadius;
  }

  @override
  set canvasBackgroundColorBlurRadius(double value) {
    _$canvasBackgroundColorBlurRadiusAtom
        .reportWrite(value, super.canvasBackgroundColorBlurRadius, () {
      super.canvasBackgroundColorBlurRadius = value;
    });
  }

  late final _$canvasBackgroundSpreadRadiusAtom = Atom(
      name: 'ConfigStoreBase.canvasBackgroundSpreadRadius', context: context);

  @override
  double get canvasBackgroundSpreadRadius {
    _$canvasBackgroundSpreadRadiusAtom.reportRead();
    return super.canvasBackgroundSpreadRadius;
  }

  @override
  set canvasBackgroundSpreadRadius(double value) {
    _$canvasBackgroundSpreadRadiusAtom
        .reportWrite(value, super.canvasBackgroundSpreadRadius, () {
      super.canvasBackgroundSpreadRadius = value;
    });
  }

  late final _$canvasBackgroundShadowColorAtom = Atom(
      name: 'ConfigStoreBase.canvasBackgroundShadowColor', context: context);

  @override
  Color get canvasBackgroundShadowColor {
    _$canvasBackgroundShadowColorAtom.reportRead();
    return super.canvasBackgroundShadowColor;
  }

  @override
  set canvasBackgroundShadowColor(Color value) {
    _$canvasBackgroundShadowColorAtom
        .reportWrite(value, super.canvasBackgroundShadowColor, () {
      super.canvasBackgroundShadowColor = value;
    });
  }

  late final _$shadowOffsetXAtom =
      Atom(name: 'ConfigStoreBase.shadowOffsetX', context: context);

  @override
  double get shadowOffsetX {
    _$shadowOffsetXAtom.reportRead();
    return super.shadowOffsetX;
  }

  @override
  set shadowOffsetX(double value) {
    _$shadowOffsetXAtom.reportWrite(value, super.shadowOffsetX, () {
      super.shadowOffsetX = value;
    });
  }

  late final _$shadowOffsetYAtom =
      Atom(name: 'ConfigStoreBase.shadowOffsetY', context: context);

  @override
  double get shadowOffsetY {
    _$shadowOffsetYAtom.reportRead();
    return super.shadowOffsetY;
  }

  @override
  set shadowOffsetY(double value) {
    _$shadowOffsetYAtom.reportWrite(value, super.shadowOffsetY, () {
      super.shadowOffsetY = value;
    });
  }

  late final _$ConfigStoreBaseActionController =
      ActionController(name: 'ConfigStoreBase', context: context);

  @override
  void setCanvasTitle(String title) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasTitle');
    try {
      return super.setCanvasTitle(title);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasWidth(double width) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasWidth');
    try {
      return super.setCanvasWidth(width);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasHeight(double height) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasHeight');
    try {
      return super.setCanvasHeight(height);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTopLeftBorderRadius(double topLeftRadius) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setTopLeftBorderRadius');
    try {
      return super.setTopLeftBorderRadius(topLeftRadius);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTopRightBorderRadius(double topRightRadius) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setTopRightBorderRadius');
    try {
      return super.setTopRightBorderRadius(topRightRadius);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBottomLeftBorderRadius(double bottomLeftRadius) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setBottomLeftBorderRadius');
    try {
      return super.setBottomLeftBorderRadius(bottomLeftRadius);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBottomRightBorderRadius(double bottomRightRadius) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setBottomRightBorderRadius');
    try {
      return super.setBottomRightBorderRadius(bottomRightRadius);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasBackgroundColorBlurRadius(double blurRadius) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasBackgroundColorBlurRadius');
    try {
      return super.setCanvasBackgroundColorBlurRadius(blurRadius);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasBackgroundSpreadRadius(double spreadRadius) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasBackgroundSpreadRadius');
    try {
      return super.setCanvasBackgroundSpreadRadius(spreadRadius);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasBackgroundShadowColor(Color color) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasBackgroundShadowColor');
    try {
      return super.setCanvasBackgroundShadowColor(color);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShadowOffsetX(double offsetX) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setShadowOffsetX');
    try {
      return super.setShadowOffsetX(offsetX);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShadowOffsetY(double offsetY) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setShadowOffsetY');
    try {
      return super.setShadowOffsetY(offsetY);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
canvasTitle: ${canvasTitle},
canvasWidth: ${canvasWidth},
canvasHeight: ${canvasHeight},
topLeftBorderRadius: ${topLeftBorderRadius},
topRightBorderRadius: ${topRightBorderRadius},
bottomLeftBorderRadius: ${bottomLeftBorderRadius},
bottomRightBorderRadius: ${bottomRightBorderRadius},
canvasBackgroundColorBlurRadius: ${canvasBackgroundColorBlurRadius},
canvasBackgroundSpreadRadius: ${canvasBackgroundSpreadRadius},
canvasBackgroundShadowColor: ${canvasBackgroundShadowColor},
shadowOffsetX: ${shadowOffsetX},
shadowOffsetY: ${shadowOffsetY}
    ''';
  }
}
