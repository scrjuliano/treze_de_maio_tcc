import 'package:flutter/material.dart';

@immutable
class Avatar extends StatelessWidget {
  late final String backgroundImage;

  Avatar({required this.backgroundImage});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,

          child: CircleAvatar(backgroundImage: NetworkImage(backgroundImage),),
        ),
        Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: Icon(Icons.camera_alt, color: Colors.white,size: 20,),
          ),
          ),
    ],
        );

  }
}
