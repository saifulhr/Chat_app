import 'package:chat_app/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final EdgeInsetsGeometry ?padding;
  final Color backgroundColor;

  const CustomAppBar({
    super.key,
    required this.child,
    this.padding,
    this.backgroundColor = Colors.white,
  });

  @override
  Size get preferredSize => Size.fromHeight(DeviceHelpers.getAppBarHeight());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: padding,
      child: child,
    );
  }
}
