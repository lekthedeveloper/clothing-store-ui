import 'package:description_widgt/business_logic/models/color_model.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  int quantity = 1;
  int currentColorIndex = 0;
  int currentSizeIndex = 0;

  List<String> size = ['S', 'M', 'L', 'XL'];
  List<Color> productColor = [
    ColorModel.orange,
    ColorModel.deepBlue,
    ColorModel.wine,
    ColorModel.green,
  ];
  List<Color> sizeColor = [
    ColorModel.bottonColor,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  List<Color> outLineColor = [
    Colors.black,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent
  ];
  void increaseQuantity() {
    if (quantity >= 5) {
      return;
    } else {
      quantity++;
    }

    notifyListeners();
  }

  decreaseQuantity() {
    if (quantity <= 1) {
      return;
    } else {
      quantity--;
    }

    notifyListeners();
  }

  changeOutLine(int index) {
    if (index == 0) {
      currentColorIndex = 0;
      outLineColor[0] = Colors.black;
      outLineColor[1] = Colors.transparent;
      outLineColor[2] = Colors.transparent;
      outLineColor[3] = Colors.transparent;
    } else if (index == 1) {
      currentColorIndex = 1;
      outLineColor[0] = Colors.transparent;
      outLineColor[1] = Colors.black;
      outLineColor[2] = Colors.transparent;
      outLineColor[3] = Colors.transparent;
    } else if (index == 2) {
      currentColorIndex = 2;
      outLineColor[0] = Colors.transparent;
      outLineColor[1] = Colors.transparent;
      outLineColor[2] = Colors.black;
      outLineColor[3] = Colors.transparent;
    } else if (index == 3) {
      currentColorIndex = 3;
      outLineColor[0] = Colors.transparent;
      outLineColor[1] = Colors.transparent;
      outLineColor[2] = Colors.transparent;
      outLineColor[3] = Colors.black;
    }
    notifyListeners();
  }

  changeSizeColor(int index) {
    if (index == 0) {
      currentSizeIndex = 0;
      sizeColor[0] = ColorModel.bottonColor;
      sizeColor[1] = Colors.white;
      sizeColor[2] = Colors.white;
      sizeColor[3] = Colors.white;
    } else if (index == 1) {
      currentSizeIndex = 1;
      sizeColor[0] = Colors.white;
      sizeColor[1] = ColorModel.bottonColor;
      sizeColor[2] = Colors.white;
      sizeColor[3] = Colors.white;
    } else if (index == 2) {
      currentSizeIndex = 2;
      sizeColor[0] = Colors.white;
      sizeColor[1] = Colors.white;
      sizeColor[2] = ColorModel.bottonColor;
      sizeColor[3] = Colors.white;
    } else if (index == 3) {
      currentSizeIndex = 3;
      sizeColor[0] = Colors.white;
      sizeColor[1] = Colors.white;
      sizeColor[2] = Colors.white;
      sizeColor[3] = ColorModel.bottonColor;
    }
    notifyListeners();
  }
}
