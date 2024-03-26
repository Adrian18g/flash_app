import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../methods/moment.dart';

class MomentDetailsPage extends StatefulWidget {
  final Moment moment;

  const MomentDetailsPage({Key? key, required this.moment}) : super(key: key);

  @override
  _MomentDetailsPageState createState() => _MomentDetailsPageState();
}

class _MomentDetailsPageState extends State<MomentDetailsPage> {
  late VideoPlayerController _controller;
  final Color flashRed = Color.fromRGBO(145, 34, 34, 0.486);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.moment.videoPath)
      ..initialize().then((_) {
        setState(() {});
        _controller
            .play(); // Auto reproducir el video cuando se inicia la página
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moment.title),
        backgroundColor: flashRed,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Descripción:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(widget.moment.description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
