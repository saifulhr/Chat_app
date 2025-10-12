import 'package:chat_app/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? padding;
  final Color backgroundColor;

  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.padding,
    this.backgroundColor = Colors.white,
  });

  @override
  Size get preferredSize => Size.fromHeight(DeviceHelpers.getAppBarHeight());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ,
      color: backgroundColor,
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading ?? const SizedBox(width: 24),
          title ?? const SizedBox(),
          if (actions != null && actions!.isNotEmpty)
            Row(children: actions!)
          else
            const SizedBox(width: 24),
        ],
      ),
    );
  }
}
