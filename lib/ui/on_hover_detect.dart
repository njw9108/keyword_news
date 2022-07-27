import 'package:flutter/material.dart';

class OnHoverDetect extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const OnHoverDetect({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  State<OnHoverDetect> createState() => _OnHoverDetectState();
}

class _OnHoverDetectState extends State<OnHoverDetect> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity();
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      //cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
    this.isHovered = isHovered;
  });
}