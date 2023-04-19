import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget showNetworkError(String message, void Function() retry, BuildContext context, {bool showBack=true}){
  return Stack(
    children: [
      if(showBack)
        Positioned(
          left: 8,
          top: 12,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: ()=>Get.back(),
          ),
        ),
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
        child: Center(
          child: SizedBox(
            height: 130,
            width: 100,
            child: Column(
              children: [
                const Icon(Icons.error_outline, size: 60,),
                const SizedBox(height: 5,),
                Text(message),
                const SizedBox(height: 5,),
                FilledButton(onPressed: retry, child: const Text('重试'))
              ],
            ),
          ),
        ),
      )
    ],
  );
}