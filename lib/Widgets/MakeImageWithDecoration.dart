import 'package:flutter/cupertino.dart';

class MakeImageWithDecoration extends StatefulWidget {
  final String imageName;

  MakeImageWithDecoration(this.imageName);

  _MakeImageWithDecorationState createState() => _MakeImageWithDecorationState();
}

class _MakeImageWithDecorationState extends State<MakeImageWithDecoration> {
  double imageSize;

  @override
  Widget build(BuildContext context) {
    imageSize = MediaQuery.of(context).size.height * 0.025;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.imageName),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
