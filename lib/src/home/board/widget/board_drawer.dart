import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:white_board/src/home/board/widget/page.dart';

class BoardDrawer extends StatelessWidget {
  const BoardDrawer({
    super.key,
    required this.page,
    required this.currentPage,
    required this.onPageTap,
    required this.onAddPage,
    required this.onDeletePage,
  });
  final List<PaintingPage> page;
  final int currentPage;
  final Function(int) onPageTap;
  final Function() onAddPage;
  final VoidCallback? onDeletePage;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(color: Colors.blue),
          //   child: Text('Pages'),
          // ),
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Board",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
            shrinkWrap: true,
            itemCount: page.length + 1,
            itemBuilder: (context, index) {
              if (index < page.length) {
                return InkWell(
                  onTap: () => onPageTap(index),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: currentPage == index
                            ? Colors.teal
                            : Colors.black26,
                        width: 2,
                      ),
                    ),
                    height: 80,
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Page ${index + 1}"),
                                Icon(Icons.pages),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: index == currentPage
                                ? onDeletePage
                                : () {
                                    Get.snackbar(
                                      "Error",
                                      "You have to switch page to delete it",
                                    );
                                  },
                            icon: Icon(
                              Icons.delete_outline,
                              color: currentPage == index ? Colors.red : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: onAddPage,
                  child: SizedBox(
                    height: 80,

                    child: DottedBorder(
                      options: RectDottedBorderOptions(
                        borderPadding: EdgeInsets.symmetric(horizontal: 4),
                        dashPattern: const [6, 6],
                        color: Colors.grey.shade400,
                        // padding: EdgeInsets.symmetric(horizontal: ),
                        strokeWidth: 2,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Add Page"), Icon(Icons.add)],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
