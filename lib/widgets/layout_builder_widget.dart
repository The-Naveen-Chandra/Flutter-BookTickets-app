import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget({super.key, this.isColor, required this.sections, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return 
    LayoutBuilder(              
      builder: (BuildContext context, BoxConstraints constraints, ) { 
        print("the width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
            width: width,
            height: 1,
            child: DecoratedBox(decoration: BoxDecoration(
              color: isColor == null? Colors.white: Colors.grey.shade300,
            )),
            )
          ),
        );
      },
    );
  }
}