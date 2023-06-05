import 'package:flutter/material.dart';

class FbNotification extends StatefulWidget {
  const FbNotification({super.key});

  @override
  State<FbNotification> createState() => _FbNotificationState();
}

class _FbNotificationState extends State<FbNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Notification"),
    );
  }
}
