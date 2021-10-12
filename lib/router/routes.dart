import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app.dart';
import '../features/feature.dart';
import '../bloc/bloc.dart';

var bootStage = 1;

RouteFactory routes(App app) {
  return (RouteSettings settings) {
    var fullScreen = false;
    Widget? screen;

    if (bootStage == 1) {
      bootStage = 2;
      return PageRouteBuilder(
        pageBuilder: (_, __, ___) => SplashScreen(),
      );
    }
    final arguments = settings.arguments as Map<String, dynamic>? ?? {};
    switch (settings.name) {
      case SplashScreen.route:
        screen = SplashScreen();
        break;
      case HomeScreen.route:
        screen = HomeScreen();
        break;
      case SelectImageScreen.route:
        screen = SelectImageScreen();
        break;
      case CameraScreen.route:
        screen = CameraScreen();
        break;
      case EditorScreen.route:
        final model = arguments['model'];
        screen = MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    EditorCubit(repo: app.userRepository, model: model)),
            BlocProvider(create: (context) => TrashCubit()),
          ],
          child: EditorScreen(),
        );
        break;
      default:
        screen = HomeScreen();
    }

    if (bootStage == 2) {
      bootStage = 3;

      return PageRouteBuilder(
        pageBuilder: (BuildContext context, _, __) {
          return screen!;
        },
        transitionDuration: const Duration(milliseconds: 500),
      );
    }

    if (fullScreen) {
      return MaterialPageRoute(
        builder: (_) => screen!,
        fullscreenDialog: true,
      );
    }

    return MaterialPageRoute(
      builder: (BuildContext context) {
        return screen!;
      },
    );
  };
}
