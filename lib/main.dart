// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget titleSection = Container(
    //   padding: const EdgeInsets.all(32.0),
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Container(
    //               padding: const EdgeInsets.only(bottom: 8.0),
    //               child: Text(
    //                 'ພຣະທາດຫຼວງວຽງຈັນ',
    //                 style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //             ),
    //             Text(
    //               'Vientiane, Lao PDR',
    //               style: TextStyle(
    //                 color: Colors.grey[500],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Icon(
    //         Icons.star,
    //         color: Colors.red[500],
    //       ),
    //       Text('99'),
    //     ],
    //   ),
    // );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0), //Set padding to 32 pixel for each edge
      child: Row(
        children:[
          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text(
                    'ພຣະທາດຫຼວງວຽງຈັນ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Vientiane Capital, Lao PDR',
                  style: TextStyle(
                    color: Colors.green[500],
                  ),
                ),
              ],
            )
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text(
            '99',
          ),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'ຕິດຕໍ່'),
          buildButtonColumn(Icons.near_me, 'ເສັ້ນທາງ'),
          buildButtonColumn(Icons.share, 'ແຊ'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
ພຣະທາດຫຼວງວຽງຈັນປະກາຍສີທອງອັນເຮືອງຮຸ່ງ ຕັ້ງຢູ່ຢ່າງໂດດເດັ່ນທີ່ເຂດບ້ານທາດຫຼວງ ເມືອງໄຊເຊດຖາ ເຊິ່ງເປັນປູຊະນີຍະສະຖານບູຮານອັນເປັນສັນຍາລັກຂອງປະເທດລາວ ພຣະທາດໂລກະຈຸນລະມະນີ ທີ່ບັນຈຸພະສາລິຣິກະທາດຂອງພຣະພຸດທະເຈົ້າ ແລະ ເປັນສູນລວມແຫ່ງຈິດວິນຍານຂອງປວງຊົນລາວທັງຊາດ.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(fontFamily:'phetsarath_ot'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ພຣະທາດຫຼວງວຽງຈັນ'),
        ),
        body: ListView(
          children: [
            //ຮູບທາດຫລວງ
            Image.asset(
              'images/thatluang.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection, //ແຖວທີ່1
            buttonSection, //ແຖວທີ່2
            textSection, //ບ໋ອກໂຕໜັງສື
          ],
        ),
      ),
    );
  }
}
