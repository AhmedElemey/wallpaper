import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  final String title;
  final Widget? leading, action;
  final GestureTapCallback? onTapAction;
  final IconData? actionIcon;

  const AppBarWidget(
      {Key? key,
      required this.title,
      this.leading,
      this.action,
      this.onTapAction,
      this.actionIcon})
      : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.background,
      centerTitle: true,
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Theme.of(context).colorScheme.primary),
      ),
      leading: widget.leading ??
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(8.0)),
            child: IconButton(
              padding: EdgeInsets.zero,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: Theme.of(context).colorScheme.primary,
                size: 22,
              ),
            ),
          ),
      actions: [
        widget.action ??
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: widget.onTapAction ?? () {},
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Icon(
                  widget.actionIcon ?? Icons.search_outlined,
                  color: Theme.of(context).colorScheme.primary,
                  size: 22,
                ),
              ),
            ),
      ],
    );
  }
}
