import 'package:flutter/material.dart';
import 'package:foto/widgets/widget.dart';

class ToolBar extends StatefulWidget {
  final VoidCallback? onAddSticker;
  final VoidCallback? onAddText;

  const ToolBar({
    Key? key,
    this.onAddSticker,
    this.onAddText,
  }) : super(key: key);

  @override
  _ToolBarState createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black,
      child: SeparatedRow(
        children: [
          TextButton(
            onPressed: () {
              widget.onAddSticker?.call();
            },
            child: Text('Stick'),
          ),
          TextButton(
            onPressed: () {
              widget.onAddText?.call();
            },
            child: Text('Text'),
          ),
        ],
      ),
    );
  }
}
