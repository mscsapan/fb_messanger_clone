import 'package:flutter/material.dart';

customAppBar({required Widget child}) {
  return AppBar(
    title: child,
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    toolbarHeight: 65.0,
  );
}
