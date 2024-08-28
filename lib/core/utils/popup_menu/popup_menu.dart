import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';

class CustomPopupMenu extends StatefulWidget {
  final List<String> items;
  final ValueChanged<int> onChange;
  final String text;
  final int selectedIndex;

  const CustomPopupMenu({
    super.key,
    required this.items,
    required this.onChange,
    required this.text,
    this.selectedIndex = 0,
  });

  @override
  State<CustomPopupMenu> createState() => _CustomPopupMenuState();
}

class _CustomPopupMenuState extends State<CustomPopupMenu>
    with SingleTickerProviderStateMixin {
  late GlobalKey _key;

  bool isMenuOpen = false;

  late Offset buttonPosition;

  late Size buttonSize;

  late OverlayEntry _overlayEntry;

  late OverlayEntry _overlayEntry1;

  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));

    _key = LabeledGlobalKey('popup');

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void findButton() {
    RenderBox? renderBox =
        _key.currentContext!.findRenderObject() as RenderBox?;

    buttonSize = renderBox!.size;

    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  void closeMenu() {
    LoggerUtils.d('close');
    _overlayEntry.remove();

    _overlayEntry1.remove();

    _animationController.reverse();

    isMenuOpen = !isMenuOpen;
  }

  void openMenu() {
    LoggerUtils.d('shơư');

    findButton();

    _animationController.forward();

    _overlayEntry = _overlayEntryBuilder();

    _overlayEntry1 = _overlayEntryBuilder1();

    Overlay.of(context).insert(_overlayEntry1);

    Overlay.of(context).insert(_overlayEntry);

    isMenuOpen = !isMenuOpen;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: TextButton(
        onPressed: () {
          if (isMenuOpen) {
            closeMenu();
          } else {
            openMenu();
          }
        },
        child: Text(widget.text),
      ),
    );
  }

  OverlayEntry _overlayEntryBuilder() {
    return OverlayEntry(
      builder: (context) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 350),
          top: buttonPosition.dy + buttonSize.height,
          left: buttonPosition.dx,
          child: AnimatedSize(
            duration: const Duration(milliseconds: 350),
            child: Material(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(widget.items.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      widget.onChange(index);
                      closeMenu();
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      color: index == widget.selectedIndex
                          ? Colors.white.withOpacity(0.3)
                          : null,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(widget.items[index],
                              style: TextStyle(
                                color: index == widget.selectedIndex
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.3),
                                fontSize: 16,
                              ))),
                    ),
                  );
                }),
              ),
            ),
          ),
        );
      },
    );
  }

  OverlayEntry _overlayEntryBuilder1() {
    return OverlayEntry(
      builder: (context) {
        return GestureDetector(
          onTap: () => {closeMenu()},
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
          ),
        );
      },
    );
  }
}
