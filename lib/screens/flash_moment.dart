import 'package:flutter/material.dart';
import '../methods/moment.dart';
import 'flash_moment_details.dart';

class FlashMomentsPage extends StatefulWidget {
  @override
  _FlashMomentsPageState createState() => _FlashMomentsPageState();
}

class _FlashMomentsPageState extends State<FlashMomentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Moment.moments.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Moment.moments[index].title),
            subtitle: Image.asset(Moment.moments[index].imagePath),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MomentDetailsPage(moment: Moment.moments[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
