import 'package:flutter/material.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/share/share.dart';
import 'package:foto/widgets/widget.dart';

const double kToolBarHeight = 120.0;

class ToolBar extends StatefulWidget {
  final List<double> filter;
  final VoidCallback? onAddSticker;
  final VoidCallback? onAddText;
  final ValueChanged<List<double>>? onSelectFilter;

  const ToolBar({
    Key? key,
    required this.filter,
    this.onAddSticker,
    this.onAddText,
    this.onSelectFilter,
  }) : super(key: key);

  @override
  _ToolBarState createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  bool _showFiler = false;
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
          ],
        ),
      ),
    );
  }

  Widget _buildCommonTools() {
    return SeparatedRow(
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
        TextButton(
          onPressed: () {
            setState(() {
              _showFiler = true;
            });
          },
          child: Text('Filter'),
        ),
      ],
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
              itemCount: Filter.filters.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final filter = Filter.filters[index];
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
    List<double> filter, {
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
              colorFilter: ColorFilter.matrix(filter),
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
