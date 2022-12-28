

import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_detay.dart';
import 'package:flutter_burclar/burc_listesi.dart';
import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;

  BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextstyle = Theme
        .of(context)
        .textTheme;
    return Card(
      child: ListTile(
        leading: Image.asset("lib/images/" + listelenenBurc.burcKucukResim,),
        title: Text('${listelenenBurc.burcAdi}', style: myTextstyle.headline5,),
        subtitle: Text('${listelenenBurc.burcTarihi}'),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BurcDetaysayfa(tumBurclar: listelenenBurc,),),);
        },
      ),
    );
  }
  }





