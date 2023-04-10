import 'package:flutter/material.dart';

class Content {
  final String name;
  final String imageUrl;
  final String? titleImageUrl;
  final Color? color;
  final String? categories;
  final int? year;
  final int? seasons;
  final String? description;
  final String? cast;
  final String? created_by;
  final String previewUrl;

  const Content({
    required this.name,
    required this.imageUrl,
    required this.previewUrl,
    this.titleImageUrl,
    this.color,
    this.categories,
    this.year,
    this.seasons,
    this.description,
    this.cast,
    this.created_by,
  });
}