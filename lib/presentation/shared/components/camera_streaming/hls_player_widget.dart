import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiftapp/extensions/extensions.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/shared/components/app_widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

// class HLSPlayerWidget extends StatefulWidget {
//   final String url;
//   const HLSPlayerWidget({required this.url, super.key});
//
//   @override
//   State<HLSPlayerWidget> createState() => _HLSPlayerWidgetState();
// }
//
// class _HLSPlayerWidgetState extends State<HLSPlayerWidget> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
//       ..initialize().then((_) {
//         setState(() {});
//         _controller.play();
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//           aspectRatio: _controller.value.aspectRatio,
//           child: VideoPlayer(_controller),
//         )
//             : const CircularProgressIndicator(),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }





class HLSPlayerWidget extends StatefulWidget {
  final String url;
  const HLSPlayerWidget({Key? key, required this.url}) : super(key: key);

  @override
  State<HLSPlayerWidget> createState() => _HLSPlayerWidgetState();
}

class _HLSPlayerWidgetState extends State<HLSPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  double _bufferedPercent = 0.0;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..addListener(_updateBufferingInfo);

    _videoPlayerController.initialize().then((_) {
      setState(() {
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          autoPlay: true,
          looping: false,
          allowMuting: true,
          allowFullScreen: true,
          placeholder: const SizedBox.shrink(),
          allowPlaybackSpeedChanging: true,
        );
      });
    }).catchError((error) {
      print("Error initializing video: $error");
    });
  }

  void _updateBufferingInfo() {
    final video = _videoPlayerController.value;
    final buffered = video.buffered;

    if (buffered.isNotEmpty && video.duration.inMilliseconds > 0) {
      final lastBuffered = buffered.last.end.inMilliseconds;
      final total = video.duration.inMilliseconds;

      setState(() {
        _bufferedPercent = (lastBuffered / total).clamp(0.0, 1.0);
      });
    }
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _videoPlayerController.removeListener(_updateBufferingInfo);
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _chewieController != null &&
          _chewieController!.videoPlayerController.value.isInitialized
          ? Stack(
        alignment: Alignment.center,
        children: [
          Chewie(controller: _chewieController!,),
          if (_bufferedPercent < 1.0 ||
              _videoPlayerController.value.isBuffering)
             Center(
               child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      value: _bufferedPercent,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      valueColor: const AlwaysStoppedAnimation<Color>(kPrimary),
                      strokeWidth: 6,
                    ),
                  ),
                  Text(
                    '${(_bufferedPercent * 100).toStringAsFixed(0)}%',
                    style: const TextStyle(
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],

                         ),
             ),
        ],
      )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
