import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  final String title;
  final String? subTitle;
  final TextStyle? style;
  final TextStyle? subStyle;
  final double height;
  final List<Widget>? actions;

  const HeaderAppBar({
    Key? key,
    required this.title,
    this.subTitle,
    this.style,
    this.subStyle,
    this.height = 58.0,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitle(context),
          Row(
            children: actions ?? [],
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    final theme = Theme.of(context);
    return Text.rich(
      TextSpan(
        children: [
          if (subTitle != null)
            TextSpan(
              text: subTitle!,
              style: subStyle ??
                  theme.textTheme.bodyText2?.copyWith(color: Colors.white),
            ),
          TextSpan(
            text: ' $title',
            style: style ??
                theme.textTheme.caption?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
