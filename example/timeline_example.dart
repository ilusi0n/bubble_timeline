import 'package:bubble_timeline/timeline_item.dart';
import 'package:flutter/material.dart';
import 'package:bubble_timeline/bubble_timeline.dart';

class TestScreen extends StatelessWidget {
  final List<TimelineItem> _items = [
    TimelineItem(
      title: 'Boat',
      subtitle: 'Travel through Oceans',
      icon: Icon(Icons.directions_boat),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'Bike',
      subtitle: 'Road Trips are best',
      icon: Icon(Icons.directions_bike),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'Bus',
      subtitle: 'I like to go with friends',
      icon: Icon(Icons.directions_bus),
      bubbleColor: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bubble Timeline'),
      ),
      body: Center(
        child: Container(
          child: BubbleTimeline(
            bubbleDiameter: 50,
            items: _items,
            stripColor: Colors.teal,
            scaffoldColor: Colors.white,
          ),
        ),
      ),
    );
  }
}