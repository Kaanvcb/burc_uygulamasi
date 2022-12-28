


import 'dart:math';

import 'package:flutter_burclar/burc_item.dart';
import 'package:flutter_burclar/burc_listesi.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcDetaysayfa extends StatelessWidget {
  final Burc tumBurclar;
  const BurcDetaysayfa({required this.tumBurclar,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body:  CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title:Text(tumBurclar.burcAdi),
              centerTitle: true,
              background: Image.asset('lib/images/'+tumBurclar.burcBuyukResim,fit: BoxFit.cover,),),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text('${tumBurclar.burcDetayi}',style: Theme.of(context).textTheme.subtitle1,),
              ),
            ),
        )
        ],
      )
    );
  }
}
