import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/alerts/alerts_controller.dart';
import 'package:getx_app/pages/alerts/themechanger.dart';

class AlertsPage extends GetView<AlertsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            changetheme(),
            Center(
            child: Text(
              "Alerts Page",
              style: TextStyle(fontSize: 20),
            ),
          ),],
        ),
      ),
    );
  }
}
