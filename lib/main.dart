import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/data_class/day.dart';
import 'package:provider_state/data_class/month.dart';
import 'package:provider_state/home/home_screen.dart';

/// This is the entry point of our provider state management flutter app
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Day>(
          create: (BuildContext context) {
            return Day();
          },
        ),
        ChangeNotifierProvider<Month>(
          create: (BuildContext context) {
            return Month();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
