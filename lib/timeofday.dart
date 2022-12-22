import 'package:flutter/material.dart';
import 'package:time_of_day_widget/models/time_of_day_range.dart';
import 'package:time_of_day_widget/time_of_day_widget.dart';

Widget Greetings() {
  return TimeOfDayRangedWidget(
    timeOfDayRanges: [
      TimeOfDayRange(
          from: TimeOfDay(hour: 0, minute: 0),
          to: TimeOfDay(hour: 12, minute: 0),
          builder: (context, timeOfDay, child) {
            return Text("Good Morning",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ));
          }),
      TimeOfDayRange(
          from: TimeOfDay(hour: 12, minute: 1),
          to: TimeOfDay(hour: 16, minute: 30),
          builder: (context, timeOfDay, child) {
            return Text("Good Afternoon",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ));
          }),
      TimeOfDayRange(
          from: TimeOfDay(hour: 16, minute: 32),
          to: TimeOfDay(hour: 20, minute: 1),
          builder: (context, timeOfDay, child) {
            return Text("Good Evening",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ));
          }),
      TimeOfDayRange(
          from: TimeOfDay(hour: 20, minute: 2),
          to: TimeOfDay(hour: 23, minute: 59),
          builder: (context, timeOfDay, child) {
            return Text("Good Night",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ));
          }),
    ],
  );
}
