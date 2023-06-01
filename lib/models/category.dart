import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    //  Since, we want the id of "Category"
    //  must be provided so therefore, we use
    //  "@required" provided to us by "Material.dart"
    //  file.
    //  This means we would get an error if we
    //  try to create an "Category" without an
    //  "id" and "title".
    required this.id,
    required this.title,
    //  Below is the case through which we
    //  provide value to named argument in
    //  case if value isn't provided to for
    //  this named argument.
    this.color = Colors.orange,
  });
}
