import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:image_picker_saver/image_picker_saver.dart';

Future<Uint8List> capturePng(GlobalKey captureKey) async {
  try {
    RenderRepaintBoundary boundary = captureKey.currentContext.findRenderObject();
    var image = await boundary.toImage(pixelRatio: 3.0);
    ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();
    return pngBytes;
  } catch (e) {
    print(e);
  }
  return null;
}

Future<void> saveFile(Uint8List pngBytes) async {
  ImagePickerSaver.saveFile(fileData: pngBytes);
}