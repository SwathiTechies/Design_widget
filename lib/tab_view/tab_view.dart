import 'package:flutter/material.dart';



class TabSample extends StatefulWidget {
  @override
  _TabSampleState createState() => _TabSampleState();
}

class _TabSampleState extends State<TabSample> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      // Handle tab change logic here
      _tabController = TabController(length: 3, vsync: this);
      print('Tab changed to ${_tabController.index}');
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Change Listener Example'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.amber,
          indicatorWeight: 5.0,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
          labelColor: Colors.amber,
          unselectedLabelColor: Colors.red,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.star), text: 'Favorites'),
            Tab(icon: Icon(Icons.person), text: 'Profile'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Home Page')),
          Center(child: Text('Favorites Page')),
          Center(child: Text('Profile Page')),
        ],
      ),
    );
  }
}
