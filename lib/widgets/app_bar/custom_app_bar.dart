// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final double height;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;
  const CustomAppBar({
    Key? key,
    required this.height,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(widget.height),
      child: AppBar(
        elevation: 0,
        //toolbarHeight: height,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: widget.leadingWidth ?? 0,
        leading: widget.leading,
        title: widget.title,
        titleSpacing: 0,
        centerTitle: widget.centerTitle ?? false,
        actions: widget.actions,
      ),
    );
  }
}
