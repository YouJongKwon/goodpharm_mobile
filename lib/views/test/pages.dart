import 'package:flutter/widgets.dart';

class Pages extends StatelessWidget {

  final text;

  const Pages({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(text,textAlign: TextAlign.center,style: const TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
          ]
      ),
    );
  }
}