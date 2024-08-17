import 'package:flutter/material.dart';

import 'Daily_spends_container.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late bool _loading;
  List<Color> ContainerColors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.brown,
    Colors.cyan
  ];

  List<IconData> ContainerIcons = [
    Icons.ac_unit_outlined,
    Icons.accessibility,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    Icons.call_end_sharp,
    Icons.equalizer_rounded,
    Icons.wifi_lock,
    Icons.mail
  ];

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dashboard', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              //height: 250,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('January', style: TextStyle(fontSize: 18, color: Colors.white),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$500', style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white),),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.greenAccent
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.0),
                       height: 5,
                        width: 200,
                        color: Colors.white,
                      ),
                      Text('70%', style: TextStyle(fontSize: 18, color: Colors.white),),
                    ],
                  ),
                  Text('Daily Spent Target: \$16.67', style: TextStyle(fontSize: 18, color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DAILY SPENDS', style: TextStyle(fontSize: 14, color: Colors.grey,fontWeight: FontWeight.w700),),
                Text('See All', style: TextStyle(fontSize: 14, color: Colors.blue,fontWeight: FontWeight.w700),),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration
                (
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: Offset(1.0, 1.0,), // shadow direction: bottom right
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  DailyContainer(bankText: 'Net Banking', amtText: '\$138.09', dateText: 'Today',),
                  DailyContainer(bankText: 'Food and Drinks', amtText: '\$790', dateText: '26, Jan 2024'),
                  DailyContainer(bankText: 'Clothes', amtText: '\$67.09', dateText: '01, dec, 2023')
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('WISHLIST', style: TextStyle(fontSize: 14, color: Colors.grey,fontWeight: FontWeight.w700),),
                Text('See All', style: TextStyle(fontSize: 14, color: Colors.blue,fontWeight: FontWeight.w800),),
              ],
            ),
            // Row(
            //   children: [
            //     Container(
            //       padding: EdgeInsets.all(40),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Colors.blue
            //       ),
            //       child: Icon(
            //         Icons.ac_unit_outlined,color: Colors.white,
            //       ),
            //     )
            //   ],
            // ),
        Container(
          height: 150,
          width: 500,
          //padding: EdgeInsets.all(20),
          //color: Colors.red,
          child: ListView.builder(
              itemCount: ContainerIcons.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(bottom: 20, top: 20, left: 10, right: 10),
                  // padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ContainerColors.length > index ? ContainerColors[index]: Colors.blue
                  ),
                  child: Icon(
                    ContainerIcons[index],color: Colors.white,
                  ),
                );
              }),
        ),
          ],
        ),
      ),
    );
  }
}
