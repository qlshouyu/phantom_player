import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class TopMenus extends StatefulWidget {
  TopMenus({super.key, this.isShow = true});
  bool isShow;

  @override
  State<TopMenus> createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return widget.isShow
        ? Container(
            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
            width: double.infinity,
            child: DragToMoveArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "幻娱影音",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            child: const Icon(
                              Icons.minimize,
                              size: 18,
                            ),
                            onTap: () {
                              windowManager.minimize();
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: const Icon(
                              Icons.fullscreen,
                              size: 18,
                            ),
                            onTap: () {
                              windowManager.maximize();
                              setState(() {
                                widget.isShow = false;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: const Icon(
                              Icons.close,
                              size: 18,
                            ),
                            onTap: () {
                              windowManager.close();
                            },
                          ),
                        ],
                      ))
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text("打开媒体", style: TextStyle(fontSize: 14))],
                  )
                ],
              ),
            ))
        : const SizedBox(
            height: 0,
          );
  }
}
