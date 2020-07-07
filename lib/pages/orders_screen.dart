import 'package:flutter/material.dart';
import 'package:shop/components/app_drawer.dart';

class OrdersScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus pedidos"),
      ),
      drawer: AppDrawer(),
    );
  }
}
