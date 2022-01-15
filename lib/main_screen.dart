import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soft_delights/items/cocktail.dart';
import 'package:soft_delights/items/ice_cream.dart';
import 'package:soft_delights/items/random.dart';

import 'items/juices.dart';
import 'items/shakes.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  searchTextField() {
    return TextFormField(
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: Colors.grey.withOpacity(0.20),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0.0, style: BorderStyle.none),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0.0, style: BorderStyle.none),
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            FontAwesomeIcons.search,
            size: 20,
            color: Colors.blueGrey,
          ),
        ),
        errorStyle: const TextStyle(color: Colors.red),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme:const IconThemeData(color: Color(0xff223843)),
          leading: Builder(
            builder: (context) => IconButton(
                icon:const Icon(FontAwesomeIcons.hamburger),
                onPressed: () => Scaffold.of(context).openDrawer()),
          ),
          actions: [
            IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.cartPlus))
          ],
        ),
        resizeToAvoidBottomInset: false,
        drawer: Drawer(),
        body: Container(
          padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:SlideInDown(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('Scoop Her',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff223843))),
                Text('We serve over 200 varities of Desert Delights',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Sora',
                        color: Colors.grey.shade700)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                searchTextField(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                SizedBox(
                  height:MediaQuery.of(context).size.height *0.07,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    bottom: TabBar(
                      isScrollable: true,
                      physics: BouncingScrollPhysics(),
                      labelPadding:const EdgeInsets.symmetric(horizontal: 20),
                      unselectedLabelColor:const Color(0xff223843),
                      indicator:BoxDecoration(
                        color:const Color(0xff223843),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      unselectedLabelStyle:const TextStyle(fontFamily: 'Sora',fontSize: 14),
                      labelStyle:const TextStyle(fontFamily:'Sora',fontSize: 18),
                      tabs:const [
                        Tab(text: 'All'),
                        Tab(text: 'Juices'),
                        Tab(text: 'Ice-Cream'),
                        Tab(text: 'Cocktail'),
                        Tab(text: 'Shakes'),
                      ],
                    ),
                  ),
                ),
                  Expanded(child: TabBarView(
                   physics: NeverScrollableScrollPhysics(),
                  children: [
                    FlipInX(child: Random(),),
                    FlipInX(child: Juices()),
                    FlipInX(child: IceCreams()),
                    FlipInX(child: Cocktail()),
                    FlipInX(child: Shakes()),
                  ],
                ))
              ],
            ),
            duration: Duration(milliseconds: 1000),
          ),
        ),
      ),
    );
  }
}

