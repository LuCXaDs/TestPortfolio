import 'package:flutter/material.dart';

var index = 1;

const kPrimaryColor = Color(0xFF27536D);
const kPrimaryLightColor = Color(0xFF3B6176);
const kPrimaryLightMoreColor = Color(0xFF4C7C88);
const kSecondaryColor = Color(0xFF7ED957);
const kSecondaryLightColor = Color(0xFF6FBA75);
const kSecondaryLightMoreColor = Color(0xFF7FCABE);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF7FCABE), Color(0xFF27536D)],
);
const kPrimaryReverseGradientColor = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [Color(0xFF27536D), Color(0xFF7FCABE)],
);