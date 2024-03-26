import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FlashOpinionPage extends StatefulWidget {
  @override
  _FlashOpinionPageState createState() => _FlashOpinionPageState();
}

class _FlashOpinionPageState extends State<FlashOpinionPage> {
  late VideoPlayerController _controller;
  final videoPath = 'videos/Opinion.mp4';
  final Color flashRed = Color.fromRGBO(145, 34, 34, 0.486);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoPath)
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
          title: Text('Como impacto en mi vida'),
          backgroundColor: flashRed,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          ],
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
