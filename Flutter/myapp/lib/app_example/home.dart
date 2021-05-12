import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get width => null;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'สวัสดี ยินดีต้อนรับ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'โปรเลือกเมนูของท่าน',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/ 
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.how_to_vote, 'รับยา'),
          _buildButtonColumn(color, Icons.assignment_ind, 'พบเเพทย์'),
          _buildButtonColumn(color, Icons.add_location, 'แผนที่ไปรับยา'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      //child: Text(
        
        //softWrap: true,
      //),
    );

    return MaterialApp(
      title: 'รับยาออนไลน์',
      home: Scaffold(
        appBar: AppBar(
          title: Text('รับยาออนไลน์'),
        ),
        body: ListView(
          children: [
            Image.network(
              'https://mdk-shop.com/wp-content/uploads/2020/10/dFQROr7oWzulq5FZYSpKe9PF5dADygnn0tyApeg98HhsQ0dCDOT0dTXDTNxpAu7WqTH.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}