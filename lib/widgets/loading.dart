import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child:  const Center(
        child: SpinKitPouringHourGlass(
          color: Colors.white,
          size: 100.0,
          duration: Duration(seconds: 3),

        ),
      ),
    );
  }
}
