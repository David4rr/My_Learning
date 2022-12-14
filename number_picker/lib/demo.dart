// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late FixedExtentScrollController scrollController;

  int index = 0;
  final items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  void initState() {
    super.initState();

    scrollController = FixedExtentScrollController(initialItem: index);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Items ${items[index]}',
              style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoButton.filled(
                child: const Text('Open Picker'),
                onPressed: () {
                  scrollController.dispose();
                  scrollController =
                      FixedExtentScrollController(initialItem: index);

                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) => CupertinoActionSheet(
                      title: const Text(
                        'Usia',
                        style: TextStyle(fontSize: 32),
                      ),
                      actions: [buildPicker()],
                      cancelButton: CupertinoActionSheetAction(
                        child: const Text('Ok'),
                        onPressed: () {
                          setState(() {
                            final item = items[index];
                            print('Selected Item: $item');
                          });
                          return Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPicker() => SizedBox(
        height: 350,
        child: StatefulBuilder(
          builder: (context, setState) => CupertinoPicker(
            scrollController: scrollController,
            selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
              background: CupertinoColors.activeGreen.withOpacity(0.2),
            ),
            looping: true,
            itemExtent: 64,
            children: List.generate(items.length, (index) {
              final isSelected = this.index == index;
              final item = items[index];
              final color = isSelected
                  ? CupertinoColors.activeGreen
                  : CupertinoColors.black;

              return Center(
                child: Text(item,
                    style: TextStyle(
                      color: color,
                      fontSize: 32,
                    )),
              );
            }),
            onSelectedItemChanged: (index) {
              setState(() => this.index = index);
            },
          ),
        ),
      );
}
