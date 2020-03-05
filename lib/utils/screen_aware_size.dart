import 'package:flutter/material.dart';

double screenAwareSize(double pixel, BuildContext context) {
  double factor;
  double width;
  const double originDesignWidth = 375;
  factor = pixel / originDesignWidth;
  width = MediaQuery.of(context).size.width * factor;
  return width;
}