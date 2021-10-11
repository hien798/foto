import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final String? iconImage;
  final VoidCallback? onPressed;

  const SettingItem(
      {Key? key, required this.title, this.iconImage, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 54,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (iconImage != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: ImageIcon(
                      AssetImage(iconImage!),
                      color: theme.primaryColor,
                    ),
                  ),
                Text(title,
                    style: TextStyle(
                      fontSize: 14,
                      color: theme.accentColor,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            Icon(Icons.chevron_right, color: theme.accentColor),
          ],
        ),
      ),
    );
  }
}
