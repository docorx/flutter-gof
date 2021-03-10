/*
 * @Author: xiaojia.dxj
 * @Date: 2018-12-17 15:37:32 
 * @Last Modified by: 一凨
 * @Last Modified time: 2019-01-11 15:17:26
 */
import 'dart:async';

import 'package:flutter/material.dart';

class YearPickerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _showDialog();
}

class _showDialog extends State<YearPickerDemo> {
  DateTime _date = new DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != _date)
      print("data selectied :${_date.toString()}");
    setState(() {
      _date = picked;
    });

    if (picked == null) _date = new DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text('日期选择'),
        new RaisedButton(
          child: new Text('date selected:${_date.toString()}'),
          onPressed: () {
            _selectDate(context);
          },
        ),
      ],
    );
  }
}
