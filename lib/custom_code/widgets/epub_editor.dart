// Automatic FlutterFlow imports
import '/backend/backend.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class EpubEditor extends StatefulWidget {
  const EpubEditor({
    super.key,
    this.width,
    this.height,
    this.epubPath,
  });

  final double? width;
  final double? height;
  final String? epubPath;

  @override
  State<EpubEditor> createState() => _EpubEditorState();
}

class _EpubEditorState extends State<EpubEditor> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Hello World'));
  }
}
