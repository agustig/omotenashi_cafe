part of '../onboarding_page.dart';

Widget indicator({bool isActive = false}) {
  return Container(
    height: 9,
    width: isActive ? 90 : 34,
    margin: const EdgeInsets.only(right: 9),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: isActive
          ? const Color.fromRGBO(60, 203, 126, 1)
          : const Color.fromRGBO(72, 224, 135, 0.38),
    ),
  );
}
