import 'package:flutter/material.dart';

class TickatScreen extends StatelessWidget {
  const TickatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return SizedBox(
       width:double.infinity ,
        height: 200,
        
      child: Container(
        color: Colors.red,
        
        child: Text('Tickats SCREEN'),
      ),
    );
  }
}
