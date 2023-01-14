import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    this.isButton = false,
    this.width = 0,
    this.height = 50,
    super.key,
  });

  final bool isButton;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width != 0 ? width : MediaQuery.of(context).size.width,
      height: height,
      child: SpinKitDoubleBounce(color: Theme.of(context).colorScheme.primary),
    );
  }
}
