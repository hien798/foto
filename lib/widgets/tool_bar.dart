import 'package:flutter/material.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/share/share.dart';
import 'package:foto/widgets/widget.dart';

const double kToolBarHeight = 120.0;

class EditorToolBar extends StatefulWidget {
  final Filter filter;
  final ValueChanged<ItemViewType>? onAddItem;
  final ValueChanged<Filter>? onSelectFilter;

  const EditorToolBar({
    Key? key,
    required this.filter,
    this.onAddItem,
    this.onSelectFilter,
  }) : super(key: key);

  @override
  _EditorToolBarState createState() => _EditorToolBarState();
}

class _EditorToolBarState extends State<EditorToolBar> {
  bool _showFiler = false;
  bool _showInsert = false;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolBarHeight,
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        top: false,
        child: Stack(
          children: [
            _buildCommonTools(),
            if (_showFiler) _buildFilter(),
            if (_showInsert) _buildInsert(),
          ],
        ),
      ),
    );
  }

  Widget _buildCommonTools() {
    return SeparatedRow(
      flexEqual: true,
      children: [
        Container(
          height: double.infinity,
          child: TextButton(
            onPressed: () {
              setState(() {
                _showInsert = true;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_circle_outline),
                SizedBox(height: 8),
                Text('Insert'),
              ],
            ),
          ),
        ),
        Container(
          height: double.infinity,
          child: TextButton(
            onPressed: () {
              setState(() {
                _showFiler = true;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.filter),
                SizedBox(height: 8),
                Text('Filter'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInsert() {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 44,
            color: Theme.of(context).backgroundColor,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _showInsert = false;
                });
              },
              child: Icon(Icons.chevron_left),
            ),
          ),
          Expanded(
            child: SeparatedRow(
              flexEqual: true,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildInsertItem(
                  title: 'Sticker',
                  icon: Icons.insert_emoticon,
                  onPressed: () {
                    widget.onAddItem?.call(ItemViewType.sticker);
                  },
                ),
                _buildInsertItem(
                  title: 'Text',
                  icon: Icons.text_fields,
                  onPressed: () {
                    widget.onAddItem?.call(ItemViewType.text);
                  },
                ),
                _buildInsertItem(
                  title: 'Image',
                  icon: Icons.image,
                  onPressed: () {
                    widget.onAddItem?.call(ItemViewType.image);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInsertItem({
    String? title,
    IconData? icon,
    VoidCallback? onPressed,
  }) {
    return Container(
      height: double.infinity,
      child: TextButton(
        onPressed: () => onPressed?.call(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(height: 8),
            Text(title ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _buildFilter() {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 44,
            color: Theme.of(context).backgroundColor,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _showFiler = false;
                });
              },
              child: Icon(Icons.chevron_left),
            ),
          ),
          Expanded(
            child: ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.all(8),
              itemCount: Filter.values.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final filter = Filter.values[index];
                return _buildImage(
                  filter,
                  isSelected: widget.filter == filter,
                  onPressed: () {
                    widget.onSelectFilter?.call(filter);
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 8);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(
    Filter filter, {
    VoidCallback? onPressed,
    bool? isSelected = false,
  }) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: OutlinedButton(
        onPressed: () {
          onPressed?.call();
        },
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          side: BorderSide(color: Colors.amber),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          primary: Colors.white,
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.matrix(filter.matrix),
              child: AppImage.asset(Images.image_demo),
            ),
            if (isSelected == true)
              Align(
                alignment: Alignment.bottomCenter,
                child: Icon(Icons.check),
              ),
          ],
        ),
      ),
    );
  }
}
