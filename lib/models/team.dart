import 'package:flutter/material.dart';

enum LogoType { png, svg }

class Team {
  final String name;
  final String logoPath;
  final LogoType logoType;
  final Color primaryColor;

  const Team({
    required this.name,
    required this.logoPath,
    required this.logoType,
    required this.primaryColor,
  });
}