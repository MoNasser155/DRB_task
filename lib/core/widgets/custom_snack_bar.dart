import 'package:drb_task/core/extentions/extensions.dart';
import 'package:drb_task/core/utiles/navigator_helper.dart';
import 'package:flutter/material.dart';



class CustomSnackBar {
  static bottom({required String msg, Color? color}) {
    ScaffoldMessenger.of(AppNavigator.navigatorKey.currentState!.context)
        .showSnackBar(SnackBar(
      backgroundColor: color ?? Colors.red,
      content: Text(
        msg,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          height: 1.5,
        ),
      ),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ));
  }

  static top({required String msg, Color? color}) {
    final overlayState = AppNavigator.navigatorKey.currentState?.overlay;
    if (overlayState == null) return;

    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).viewPadding.top + 30,
        left: 0,
        right: 0,
        child: _AnimatedTopSnackBar(
          msg: msg,
          color: color ?? Colors.red,
          onDismiss: () => entry.remove(),
        ),
      ),
    );

    overlayState.insert(entry);
  }
}

class _AnimatedTopSnackBar extends StatefulWidget {
  final String msg;
  final Color color;
  final VoidCallback onDismiss;

  const _AnimatedTopSnackBar({
    required this.msg,
    required this.color,
    required this.onDismiss,
  });

  @override
  State<_AnimatedTopSnackBar> createState() => _AnimatedTopSnackBarState();
}

class _AnimatedTopSnackBarState extends State<_AnimatedTopSnackBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();

    Future.delayed(Duration(seconds: 3)).then((_) {
      _controller.reverse().then((_) {
        widget.onDismiss();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Text(widget.msg,
              style: context.theme.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                decoration: TextDecoration.none,
              )),
        ),
      ),
    );
  }
}
