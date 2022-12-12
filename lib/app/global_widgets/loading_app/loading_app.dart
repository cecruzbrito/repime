import 'package:flutter/material.dart';

import 'animation/animation_loading.dart';

class LoadingApp extends StatelessWidget {
  const LoadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Center(
      child: AnimationLoading(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(
                color: Colors.black,
              ),
              SizedBox(
                height: _size.height * .01,
              ),
              Text(
                "Aguarde",
                style: TextStyle(fontSize: _size.height * .01, color: Colors.black38),
              )
            ],
          ),
        ),
      ),
    );
  }
}
