import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {

  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white10,
                floating: true,
                pinned: true,
                snap: true,
                expandedHeight: 55,
                bottom: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: 'History',
                    ),
                    Tab(
                      text: 'Favorites',
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 30,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}