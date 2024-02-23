part of '../onboarding_page.dart';

Widget slider({
  required String image,
  required double xPrimaryBubblePos,
  required double yPrimaryBubblePos,
  double? xSecondaryBubblePos,
  double? ySecondaryBubblePos,
}) {
  return Stack(
    children: [
      Positioned(
        top: yPrimaryBubblePos,
        left: xPrimaryBubblePos,
        child: Container(
          height: 340,
          width: 340,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(72, 224, 136, 0.22),
          ),
        ),
      ),
      if (xSecondaryBubblePos != null && ySecondaryBubblePos != null)
        Positioned(
          top: ySecondaryBubblePos,
          left: xSecondaryBubblePos,
          child: Container(
            height: 340,
            width: 340,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(72, 224, 136, 0.22),
            ),
          ),
        ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(image)],
        ),
      )
    ],
  );
}
