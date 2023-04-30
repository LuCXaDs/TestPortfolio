import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ParallaxImage extends StatefulWidget {
  final String imageUrl;
  final double maxOffset;

  ParallaxImage({required this.imageUrl, this.maxOffset = 50.0});

  @override
  _ParallaxImageState createState() => _ParallaxImageState();
}

class _ParallaxImageState extends State<ParallaxImage> {
  double _offsetX = 0.0;
  double _offsetY = 0.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _offsetX = (event.position.dx - (MediaQuery.of(context).size.width / 2)) / (MediaQuery.of(context).size.width / 2) * widget.maxOffset;
          _offsetY = (event.position.dy - (MediaQuery.of(context).size.height / 2)) / (MediaQuery.of(context).size.height / 2) * widget.maxOffset;
        });
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.scaleDown,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              alignment: Alignment(_offsetX / widget.maxOffset, _offsetY / widget.maxOffset),
            ),
          ),
        ],
      ),
    );
  }
}

class ParallaxSVGImage extends StatefulWidget {
  final String imageUrl;
  final double maxOffset;

  ParallaxSVGImage({required this.imageUrl, this.maxOffset = 50.0});

  @override
  _ParallaxSVGImageState createState() => _ParallaxSVGImageState();
}

class _ParallaxSVGImageState extends State<ParallaxImage> {
  double _offsetX = 0.0;
  double _offsetY = 0.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _offsetX = (event.position.dx - (MediaQuery.of(context).size.width / 2)) / (MediaQuery.of(context).size.width / 2) * widget.maxOffset;
          _offsetY = (event.position.dy - (MediaQuery.of(context).size.height / 2)) / (MediaQuery.of(context).size.height / 2) * widget.maxOffset;
        });
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              widget.imageUrl,
              fit: BoxFit.scaleDown,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              alignment: Alignment(_offsetX / widget.maxOffset, _offsetY / widget.maxOffset),
            ),
          ),
        ],
      ),
    );
  }
}