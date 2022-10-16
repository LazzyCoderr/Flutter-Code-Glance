import 'package:flutter/cupertino.dart';
import 'package:flutter_code_image/utils/constants.dart';
import 'package:lottie/lottie.dart';

class NoSupportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            not_available,
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 8),
          Text("Currently, ")
        ],
      ),
    );
  }
}
