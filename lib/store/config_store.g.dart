// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfigStore on ConfigStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'ConfigStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

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

  late final _$canvasBorderRadiusAtom =
      Atom(name: 'ConfigStoreBase.canvasBorderRadius', context: context);

  @override
  double get canvasBorderRadius {
    _$canvasBorderRadiusAtom.reportRead();
    return super.canvasBorderRadius;
  }

  @override
  set canvasBorderRadius(double value) {
    _$canvasBorderRadiusAtom.reportWrite(value, super.canvasBorderRadius, () {
      super.canvasBorderRadius = value;
    });
  }

  late final _$canvasXOffsetAtom =
      Atom(name: 'ConfigStoreBase.canvasXOffset', context: context);

  @override
  double get canvasXOffset {
    _$canvasXOffsetAtom.reportRead();
    return super.canvasXOffset;
  }

  @override
  set canvasXOffset(double value) {
    _$canvasXOffsetAtom.reportWrite(value, super.canvasXOffset, () {
      super.canvasXOffset = value;
    });
  }

  late final _$canvasYOffsetAtom =
      Atom(name: 'ConfigStoreBase.canvasYOffset', context: context);

  @override
  double get canvasYOffset {
    _$canvasYOffsetAtom.reportRead();
    return super.canvasYOffset;
  }

  @override
  set canvasYOffset(double value) {
    _$canvasYOffsetAtom.reportWrite(value, super.canvasYOffset, () {
      super.canvasYOffset = value;
    });
  }

  late final _$canvasBlurRadiusAtom =
      Atom(name: 'ConfigStoreBase.canvasBlurRadius', context: context);

  @override
  double get canvasBlurRadius {
    _$canvasBlurRadiusAtom.reportRead();
    return super.canvasBlurRadius;
  }

  @override
  set canvasBlurRadius(double value) {
    _$canvasBlurRadiusAtom.reportWrite(value, super.canvasBlurRadius, () {
      super.canvasBlurRadius = value;
    });
  }

  late final _$canvasSpreadRadiusAtom =
      Atom(name: 'ConfigStoreBase.canvasSpreadRadius', context: context);

  @override
  double get canvasSpreadRadius {
    _$canvasSpreadRadiusAtom.reportRead();
    return super.canvasSpreadRadius;
  }

  @override
  set canvasSpreadRadius(double value) {
    _$canvasSpreadRadiusAtom.reportWrite(value, super.canvasSpreadRadius, () {
      super.canvasSpreadRadius = value;
    });
  }

  late final _$canvasColorAtom =
      Atom(name: 'ConfigStoreBase.canvasColor', context: context);

  @override
  Color get canvasColor {
    _$canvasColorAtom.reportRead();
    return super.canvasColor;
  }

  @override
  set canvasColor(Color value) {
    _$canvasColorAtom.reportWrite(value, super.canvasColor, () {
      super.canvasColor = value;
    });
  }

  late final _$canvasBackgroundColorAtom =
      Atom(name: 'ConfigStoreBase.canvasBackgroundColor', context: context);

  @override
  CanvasBackgroundColorModel get canvasBackgroundColor {
    _$canvasBackgroundColorAtom.reportRead();
    return super.canvasBackgroundColor;
  }

  @override
  set canvasBackgroundColor(CanvasBackgroundColorModel value) {
    _$canvasBackgroundColorAtom.reportWrite(value, super.canvasBackgroundColor,
        () {
      super.canvasBackgroundColor = value;
    });
  }

  late final _$canvasTextSizeAtom =
      Atom(name: 'ConfigStoreBase.canvasTextSize', context: context);

  @override
  double get canvasTextSize {
    _$canvasTextSizeAtom.reportRead();
    return super.canvasTextSize;
  }

  @override
  set canvasTextSize(double value) {
    _$canvasTextSizeAtom.reportWrite(value, super.canvasTextSize, () {
      super.canvasTextSize = value;
    });
  }

  late final _$canvasTextLetterSpacingAtom =
      Atom(name: 'ConfigStoreBase.canvasTextLetterSpacing', context: context);

  @override
  double get canvasTextLetterSpacing {
    _$canvasTextLetterSpacingAtom.reportRead();
    return super.canvasTextLetterSpacing;
  }

  @override
  set canvasTextLetterSpacing(double value) {
    _$canvasTextLetterSpacingAtom
        .reportWrite(value, super.canvasTextLetterSpacing, () {
      super.canvasTextLetterSpacing = value;
    });
  }

  late final _$ConfigStoreBaseActionController =
      ActionController(name: 'ConfigStoreBase', context: context);

  @override
  void setLoading(bool val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setLoading');
    try {
      return super.setLoading(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

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
  void setCanvasBorderRadius(double val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasBorderRadius');
    try {
      return super.setCanvasBorderRadius(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasXOffset(double val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasXOffset');
    try {
      return super.setCanvasXOffset(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasYOffset(double val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasYOffset');
    try {
      return super.setCanvasYOffset(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasBlurRadius(double val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasBlurRadius');
    try {
      return super.setCanvasBlurRadius(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasSpreadRadius(double val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasSpreadRadius');
    try {
      return super.setCanvasSpreadRadius(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasColor(Color val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasColor');
    try {
      return super.setCanvasColor(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasBackgroundColor(CanvasBackgroundColorModel val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasBackgroundColor');
    try {
      return super.setCanvasBackgroundColor(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasTextSize(double val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasTextSize');
    try {
      return super.setCanvasTextSize(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanvasLetterSpacing(double val) {
    final _$actionInfo = _$ConfigStoreBaseActionController.startAction(
        name: 'ConfigStoreBase.setCanvasLetterSpacing');
    try {
      return super.setCanvasLetterSpacing(val);
    } finally {
      _$ConfigStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
canvasTitle: ${canvasTitle},
canvasWidth: ${canvasWidth},
canvasHeight: ${canvasHeight},
canvasBorderRadius: ${canvasBorderRadius},
canvasXOffset: ${canvasXOffset},
canvasYOffset: ${canvasYOffset},
canvasBlurRadius: ${canvasBlurRadius},
canvasSpreadRadius: ${canvasSpreadRadius},
canvasColor: ${canvasColor},
canvasBackgroundColor: ${canvasBackgroundColor},
canvasTextSize: ${canvasTextSize},
canvasTextLetterSpacing: ${canvasTextLetterSpacing}
    ''';
  }
}
