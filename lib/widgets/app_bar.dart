import 'package:flutter/material.dart';

import 'widget.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  final Widget? backButton;
  final TextStyle? style;
  final double height;
  final VoidCallback? onBack;
  final List<Widget>? actions;

  const CommonAppBar({
    Key? key,
    required this.title,
    this.backButton,
    this.style,
    this.height = 54.0,
    this.onBack,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: height + MediaQuery.of(context).padding.top,
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 54,
            child: Row(
              children: [
                if (canPop())
                  backButton ??
                      IconButton(
                        onPressed: onBack ?? () => pop(),
                        icon: Icon(
                          Icons.chevron_left,
                          size: 24,
                          color: style?.color,
                        ),
                      )
                else
                  SizedBox(width: 32),
                Text(
                  title,
                  style: style ?? theme.textTheme.caption,
                ),
              ],
            ),
          ),
          Row(
            children: actions ?? [],
          ),
        ],
      ),
    );
  }
}
