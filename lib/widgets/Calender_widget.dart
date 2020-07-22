import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


// Using a precreated and api for the calender

class CalenderWidget extends StatefulWidget {
  @override
  _CalenderWidgetState createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TableCalendar(calendarController: _controller),
    );
  }
}