import 'package:description_widgt/business_logic/providers/cart_provider.dart';
import 'package:description_widgt/presentation/screens/description_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CartProvider()),
          // ChangeNotifierProvider(create: (context) => DropDownProvider())
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Description(),
          // initialRoute: RouteManager.dashboard,
          // onGenerateRoute: RouteManager.generateRoute,
        ),
      ),
    );
  }
}
