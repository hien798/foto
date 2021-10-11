import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../locale/locale.dart';
import '../widget.dart';

class NotifyDialog extends StatelessWidget {
  static Future<T?> show<T>({
    Widget? title,
    Widget? content,
    List<Widget>? actions,
    bool? keepVisible,
  }) =>
      showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => NotifyDialog(
          title: title,
          content: content,
          actions: actions,
          keepVisible: keepVisible,
        ),
      );

  static Future<T?> showMessage<T>({
    String? title,
    String? content,
    bool? keepVisible,
  }) {
    final _locale = AppLocalizations.of(navigatorKey.currentContext!);
    return showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => NotifyDialog(
        title: Text(
          title ?? '',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        content: Text(
          content ?? '',
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        actions: [
          DialogButton(
            title: _locale?.text(UI.text_ok) ?? '',
            onPressed: () => pop(context),
          ),
        ],
        keepVisible: keepVisible,
      ),
    );
  }

  static Future<T?> showErrors<T>(
    {
    String? title,
    String? error,
    List<String>? errors,
    bool? keepVisible,
  }) {
    assert(!(error != null && errors != null));
    final theme = Theme.of(navigatorKey.currentContext!);
    final _locale = AppLocalizations.of(navigatorKey.currentContext!);
    String _error = error ?? '';
    if (errors != null) {
      _error = errors.fold<String>(
          '',
          (previousValue, element) =>
              previousValue +
              (previousValue.isEmpty ? '' : '\n') +
              (element.contains('ui.')
                  ? _locale?.text(element) ?? ''
                  : element));
    }
    return showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => NotifyDialog(
        title: Text(
          title ?? _locale?.text(UI.text_error) ?? '',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: theme.errorColor,
          ),
          textAlign: TextAlign.center,
        ),
        content: Text(
          _error,
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
        actions: [
          DialogButton(
            title: _locale?.text(UI.text_ok) ?? '',
            onPressed: () => pop(context),
          ),
        ],
        keepVisible: keepVisible,
      ),
    );
  }

  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;
  final bool? keepVisible;

  NotifyDialog({
    Key? key,
    this.title,
    this.content,
    this.actions,
    this.keepVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: keepVisible != false ? Colors.transparent : null,
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(child: Container()),
            Container(
              width: 300,
              margin: const EdgeInsets.all(32),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xfff8f8f8),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        if (title != null) title!,
                        if (title != null && content != null)
                          SizedBox(height: 8),
                        if (content != null) content!,
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Divider(
                        thickness: 1,
                        height: 1,
                      ),
                      if (actions != null && actions!.isNotEmpty)
                        SeparatedRow(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: actions!,
                          flexEqual: true,
                          separatorBuilder: () => Container(
                            height: 44,
                            child: VerticalDivider(
                              thickness: 1,
                              width: 1,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  final String? title;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  const DialogButton({
    Key? key,
    this.title,
    this.textStyle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 44,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title ?? '',
          style: textStyle != null
              ? textStyle!.merge(TextStyle(
                  color: theme.accentColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ))
              : TextStyle(
                  color: theme.accentColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
        ),
      ),
    );
  }
}
