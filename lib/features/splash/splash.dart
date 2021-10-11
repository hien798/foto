import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import '../../resources/resource.dart';
import '../../widgets/widget.dart';
import '../../features/feature.dart';
import '../../share/share.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      pushReplacementNamed(HomeScreen.route);
    });
  }

  String _version = '';

  void _getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    print('$appName - $packageName - $version - $buildNumber');
    setState(() {
      _version = '$appName v$version+$buildNumber';
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      style: LayoutStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      width: 250.0.w,
                      child: Image.asset(Images.icon, fit: BoxFit.fitWidth),
                    ),
                  ),
                  _buildVersion(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVersion() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          _version,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
