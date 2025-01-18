import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:outlook/generated/l10n/l10n.dart';
import 'screens/main/main_screen.dart';
import 'theme.dart';
import 'components/error_page.dart';
import 'models/email_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppTheme()),
        ChangeNotifierProvider(create: (_) => EmailProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint(AppLocalizations.of(navigatorKey.currentContext!)
        .stateChange
        .replaceFirst('{state}', state.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppTheme>(
      builder: (context, appTheme, child) {
        appTheme.setNavigatorKey(navigatorKey);
        return MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'NotoSansSC',
            textTheme: TextTheme(
              bodyLarge: TextStyle(fontFamily: 'NotoSansSC'),
              bodyMedium: TextStyle(fontFamily: 'NotoSansSC'),
              bodySmall: TextStyle(fontFamily: 'NotoSansSC'),
              displayLarge: TextStyle(fontFamily: 'NotoSansSC'),
              displayMedium: TextStyle(fontFamily: 'NotoSansSC'),
              displaySmall: TextStyle(fontFamily: 'NotoSansSC'),
              headlineLarge: TextStyle(fontFamily: 'NotoSansSC'),
              headlineMedium: TextStyle(fontFamily: 'NotoSansSC'),
              headlineSmall: TextStyle(fontFamily: 'NotoSansSC'),
              titleLarge: TextStyle(fontFamily: 'NotoSansSC'),
              titleMedium: TextStyle(fontFamily: 'NotoSansSC'),
              titleSmall: TextStyle(fontFamily: 'NotoSansSC'),
              labelLarge: TextStyle(fontFamily: 'NotoSansSC'),
              labelMedium: TextStyle(fontFamily: 'NotoSansSC'),
              labelSmall: TextStyle(fontFamily: 'NotoSansSC'),
            ),
          ),
          locale: appTheme.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('zh'),
          ],
          home: MainScreen(),
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          builder: (context, widget) {
            ErrorWidget.builder =
                (errorDetails) => ErrorPage(details: errorDetails);
            return widget!;
          },
        );
      },
    );
  }
}
