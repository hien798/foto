import 'package:flutter/material.dart';
import 'package:foto/features/feature.dart';
import '../../../widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      style: LayoutStyle.dark,
      child: Column(
        children: [
          CommonAppBar(title: 'Foto'),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: SeparatedColumn(
                mainAxisAlignment: MainAxisAlignment.center,
                separatorBuilder: () => SizedBox(height: 16),
                children: [
                  AppButton(
                    onPressed: () {
                      pushNamed(SelectImageScreen.route);
                    },
                    title: 'New Project',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
