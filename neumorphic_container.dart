import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NeumorphicContainer extends StatefulWidget {
  Widget child;
  double radius;
  double height;
  double width;
  Alignment? alignment;
  bool? enableTapAnimation = false;

  NeumorphicContainer(
      {super.key,
      required this.child,
      required this.radius,
      required this.height,
      required this.width,
      this.alignment,
       this.enableTapAnimation});

  @override
  State<NeumorphicContainer> createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation colorAnimation2;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 70));
    colorAnimation =
        ColorTween(begin: Colors.grey.shade400, end: Colors.grey[300])
            .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    colorAnimation2 = ColorTween(begin: Colors.white, end: Colors.grey[300])
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));

    // Rebuilding the screen when animation goes ahead
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.forward().whenComplete(() => controller.reverse());
      },
      child: Container(
          alignment: widget.alignment,
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(widget.radius),
            boxShadow: [
              BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(-5, -5),
                  color: widget.enableTapAnimation!
                      ? colorAnimation2.value
                      : Colors.white),
              BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(5, 5),
                  color: widget.enableTapAnimation!
                      ? colorAnimation.value
                      : Colors.grey[400]),
            ],
          ),
          child: widget.child),
    );
  }
}
