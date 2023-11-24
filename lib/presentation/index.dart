import 'package:additives/logic/group_additive_provider.dart';
import 'package:additives/logic/search_additive_provider.dart';
import 'package:additives/presentation/screen/main/main.dart';
import 'package:additives/presentation/screen/main/sub_screens/group_additives.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'color/material-theme/color_schemes.g.dart';
import 'common_import.dart';
import 'directory/directory.dart';

class AppStarter extends StatefulWidget {
  const AppStarter({super.key});

  @override
  State<AppStarter> createState() => _AppStarterState();
}

class _AppStarterState extends State<AppStarter> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GroupAdditiveProvider()),
        ChangeNotifierProvider(create: (_) => SearchAdditiveProvider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          return MaterialApp(
            // theme: darkTheme,
            title: "Katki Maddeleri",
            // localizationsDelegates: const [
            //   S.delegate,
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            // supportedLocales: S.delegate.supportedLocales,
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            initialRoute: AppDirs.main,

            theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
            darkTheme:
                ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
            routes: {
              AppDirs.main: (context) => const MainScreen(),
            },
          );
        },
      ),
    );
  }
}
