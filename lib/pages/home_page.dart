import 'package:flutter/material.dart';
import 'package:widget_tabbarview/pages/page1.dart';
import 'package:widget_tabbarview/pages/page2.dart';
import 'package:widget_tabbarview/pages/page3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Widget TabBar"),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.red,
            controller: controller,
            labelStyle: TextStyle(fontSize: 16),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 15),
            tabs: [
              Row(
                children: [
                  Text("Post"),
                  SizedBox(width: 5),
                  CircleAvatar(
                    radius: 15,
                    child: Text("1"),
                  ),
                ],
              ),
              Text("TabBar2"),
              Text("TabBar3"),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Pagina1(),
            Pagina2(),
            Pagina3(),
          ],
        ),
      );
}
