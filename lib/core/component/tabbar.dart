import 'package:flutter/material.dart';

class AppTabbar extends StatefulWidget {
  const AppTabbar({super.key});

  @override
  State<AppTabbar> createState() => _AppTabbarState();
}

class _AppTabbarState extends State<AppTabbar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: double.infinity), 
              child: TabBar(
                controller: _tabController,
                indicatorColor: const Color.fromARGB(255, 16, 17, 76),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: const Color.fromARGB(255, 16, 17, 76),
                unselectedLabelColor: const Color.fromARGB(255, 141, 150, 153), 
                tabs: const [
                  Tab(
                    text: "All Type",
                  ),
                  Tab(text: "Full Body"),
                  Tab(text: "Upper"),
                  Tab(text: "Lower"),
                ],
              ),
            ),
            // Expanded(
            //   child: Container(
            //     height: MediaQuery.of(context).size.height - 50,
            //     child: TabBarView(
            //       controller: _tabController, 
            //       children: [
            //         Container(height: MediaQuery.of(context).size.height, child: const Text("All Type")),
            //         Container(height: MediaQuery.of(context).size.height, child: Text("Full Body")),
            //         Container(height: MediaQuery.of(context).size.height, child: Text("Upper")),
            //         Container(height: MediaQuery.of(context).size.height, child: Text("Lower")),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
