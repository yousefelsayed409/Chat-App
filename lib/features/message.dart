// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MessageTest extends StatelessWidget {
  const MessageTest({
    Key? key,
    required this.id,
  }) : super(key: key);
 
 final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("moveed to message"),),
    );
  }
}
