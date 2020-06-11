import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview.dart';
import 'package:shop/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.indigoAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (context) => ProductsOverviewPage(),
        AppRoutes.PRODUCT_DETAIL: (context) => ProductDetailPage(),
      },
    );
  }
}