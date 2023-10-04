import 'package:biding_app/views/screens/Accountant/AccountantView.dart';
import 'package:biding_app/views/screens/Admin/ViewBids.dart';
import 'package:biding_app/views/screens/Home/HomePageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../authentication_repository/login.dart';




class CustomDrawer extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer( child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
              color: Colors.amberAccent

          ),
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new CircleAvatar(
                radius: 40.0,
                backgroundColor: const Color(0xFF778899),
                child: new Image.asset(
                  'lib/utils/images/construction-min.png',
                ), //For Image Asset

              ), Padding(
                padding: const EdgeInsets.only(left:0,top:10),
                child: Text("Ibad Karimi",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:0,top:5),
                child: Text("ibadkarimi.10@gmail.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey),),
              )
            ],
          ),

        ),
        ListTile(
          leading: Icon(Icons.home),
          title: const Text('Home',style: TextStyle(color: Colors.black),),
          onTap: () {
            Get.to(()=>HomePageView());
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: Icon(Icons.car_rental),
          title: const Text('Vehicle',style: TextStyle(color: Colors.black),),
          onTap: () {
            // Update the state of the app.
            // ...

          },
        ),
        ListTile(
          leading: Icon(Icons.real_estate_agent),
          title: const Text('Real State',style: TextStyle(color: Colors.black),),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: Icon(Icons.agriculture),
          title: const Text('Aggriculture',style: TextStyle(color: Colors.black),),

          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: GestureDetector(onTap:(){
            Get.offAll(()=>LoginFormWidget());
          },
            child:Icon(Icons.table_restaurant_sharp),),
          title: const Text('Furniture',style: TextStyle(color: Colors.black),),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: GestureDetector(onTap:(){
            Get.to(()=>AccountantView());
          },
            child:Icon(Icons.table_restaurant_sharp),),
          title: const Text('Payments',style: TextStyle(color: Colors.black),),
          onTap: () {
           Get.to(()=>AccountantView());
          },
        ),
        ListTile(
          leading: Icon(Icons.login_rounded),
          title: GestureDetector(onTap:(){
            Get.to(()=>ViewBids());
          },
              child: const Text('View Bids',style: TextStyle(color: Colors.black),)),
          onTap: () {
          Get.to(()=>ViewBids());
          },
        ),
        ListTile(
          leading: Icon(Icons.login_rounded),
          title: GestureDetector(onTap:(){
            Get.offAll(()=>LoginFormWidget());
          },
              child: const Text('LogOut',style: TextStyle(color: Colors.black),)),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    ),);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}