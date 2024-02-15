import 'package:flutter/material.dart';

Container Background(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(color: Color(0XFF1C1C1A)
        // image: DecorationImage(
        //     image: AssetImage(
        //         "assets/image/Silhouette of dark city buildings_.jpg"),
        //     fit: BoxFit.cover)
        ),
  );
}
