import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/event.dart';
import 'eventDetailsBackground.dart';
import 'eventDetailsContent.dart';

class EventDetailsPage extends StatelessWidget {

  final Event event;

  const EventDetailsPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: const Stack(
          fit: StackFit.expand,
          children: <Widget>[
            EventDetailsBackground(),
            EventDetailsContent(),
          ],
        ),
      ),
    );
  }
}