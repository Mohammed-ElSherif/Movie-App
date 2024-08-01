import 'package:flutter/material.dart';
import 'package:movieapp/core/color.dart';
import 'package:movieapp/features/home/screen/logic/homeScreen_provider.dart';
import 'package:provider/provider.dart';

import 'widgets/custom-itme_bottoms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    Text("Home"),
    Text("searcg"),
    Text("Download"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    int itemConunt = 0;
    return Consumer<HomescreenProvider>(
      builder: (context, homescreenProvider, child) {
        return Scaffold(
          body: Center(
            child: pages[homescreenProvider.pageIndex],
          ),
          bottomNavigationBar: Container(
            height: 80,
            width: double.infinity,
            padding: const EdgeInsets.all(13),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomItemBottoms(
                    iconIrtem: Icon(
                      Icons.home,
                      color: homescreenProvider.pageIndex == 0
                          ? MColor.mainColor
                          : Colors.black,
                    ),
                    textItem: Text(
                      "Home",
                    style: TextStyle(
                          color: homescreenProvider.pageIndex == 0
                              ? MColor.mainColor
                              : Colors.black,
                        ),),
                    onTap: () {
                      homescreenProvider.pageIndex = 0;
                    },
                  ),
                  CustomItemBottoms(
                      iconIrtem: Icon(
                        Icons.search,
                        color: homescreenProvider.pageIndex == 1
                            ? MColor.mainColor
                            : Colors.black,
                      ),
                      textItem: Text(
                        "Search",
                        style: TextStyle(
                          color: homescreenProvider.pageIndex == 1
                              ? MColor.mainColor
                              : Colors.black,
                        ),
                      ),
                      onTap: () {
                        homescreenProvider.pageIndex = 1;
                      }),
                  CustomItemBottoms(
                      iconIrtem: Icon(
                        Icons.file_download_outlined,
                        color: homescreenProvider.pageIndex == 2
                            ? MColor.mainColor
                            : Colors.black,
                      ),
                      textItem: Text(
                        "Download",
                        style: TextStyle(
                          color: homescreenProvider.pageIndex == 2
                              ? MColor.mainColor
                              : Colors.black,
                        ),
                      ),
                      onTap: () {

                        homescreenProvider.pageIndex = 2;
                      }),
                  //
                  CustomItemBottoms(
                      iconIrtem: Icon(
                        
                        Icons.person_2_sharp,
                        color: homescreenProvider.pageIndex == 3
                            ? MColor.mainColor
                            : Colors.black,
                      ),
                      textItem: Text(
                        "Profile",
                        style: TextStyle(
                          color: homescreenProvider.pageIndex == 3
                              ? MColor.mainColor
                              : Colors.black,
                        ),
                      ),
                      onTap: () {
                        homescreenProvider.pageIndex = 3;
                      }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
