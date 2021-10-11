import 'package:flutter/material.dart';
import '../../../widgets/widget.dart';

class CameraTopBar extends StatelessWidget {
  const CameraTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => pop(),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 28,
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
