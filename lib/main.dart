import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'features/feature.dart';
import 'router/routes.dart';
import 'theme/theme.dart';
import 'bloc/bloc.dart';
import 'app.dart';
import 'widgets/widget.dart';
import 'locale/locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  final app = App();
  await app.setup();
  runApp(
    MultiProvider(
      providers: [
        Provider.value(value: app),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppCubit>.value(value: app.appCubit),
          BlocProvider<ProjectCubit>.value(value: app.projectCubit),
        ],
        child: MyApp(app: app),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  late final App app;

  MyApp({Key? key, required this.app}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          title: UI.app_name,
          navigatorKey: navigatorKey,
          scaffoldMessengerKey: scaffoldMessengerKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeDataExt.build(state.model?.theme),
          onGenerateRoute: routes(widget.app),
          supportedLocales: AppLocalizations.delegate.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale(state.model?.locale?.split('_').first ?? 'en',
              state.model?.locale?.split('_').last ?? 'US'),
          localeResolutionCallback: AppLocalizations.delegate.resolution(
            fallback: AppLocalizations.delegate.supportedLocales.first,
          ),
        );
      },
    );
  }
}
