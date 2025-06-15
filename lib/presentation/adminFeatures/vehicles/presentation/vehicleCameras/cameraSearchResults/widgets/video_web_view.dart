import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebVideoViewWidget extends StatefulWidget {
  /// The full camera‐UI page (not the raw stream URL)
  final String pageUrl;
  const WebVideoViewWidget({super.key, required this.pageUrl});

  @override
  State<WebVideoViewWidget> createState() => _WebVideoViewWidgetState();
}

class _WebVideoViewWidgetState extends State<WebVideoViewWidget> {
  late InAppWebViewController _webViewController;
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InAppWebView(
          initialUrlRequest:
          URLRequest(url: WebUri.uri(Uri.parse(widget.pageUrl))),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              javaScriptEnabled: true,
              mediaPlaybackRequiresUserGesture: false,
              supportZoom: true,                  // allow pinch/zoom
              verticalScrollBarEnabled: true,     // show scrollbars
              horizontalScrollBarEnabled: true,
            ),
            android: AndroidInAppWebViewOptions(
              useHybridComposition: true,
              mixedContentMode:
              AndroidMixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
              builtInZoomControls: true,          // show built-in ± controls
              displayZoomControls: false,
            ),
            ios: IOSInAppWebViewOptions(
              allowsInlineMediaPlayback: true,
              allowsBackForwardNavigationGestures: true,
            ),
          ),
          onWebViewCreated: (ctrl) => _webViewController = ctrl,
          onLoadStop: (ctrl, url) async {
            await ctrl.evaluateJavascript(source: """
              // 0) Allow scrolling & pinch-zoom
              document.documentElement.style.overflow = 'auto';
              document.body.style.overflow = 'auto';
              // Override viewport to re-enable user scaling
              let m = document.querySelector('meta[name=viewport]');
              if (m) m.setAttribute('content',
                'width=device-width,initial-scale=1,maximum-scale=5,user-scalable=1');

              // 1) Hide nav/header/sidebar elements
              document.querySelectorAll('header, footer, .sidebar, .nav, .controls')
                .forEach(el => el.style.display='none');

              // 2) Pin the <video> full-screen
              const v = document.querySelector('video');
              if (v) {
                v.style.position = 'fixed';
                v.style.top = '0';
                v.style.left = '0';
                v.style.width = '100vw';
                v.style.height = '100vh';
                v.style.objectFit = 'contain';
              }

              // 3) Remove everything else from the DOM
              document.body.childNodes.forEach(node => {
                if (node !== v) node.remove();
              });
            """);
            setState(() => _loading = false);
          },
          onReceivedError: (_, __, ___) {
            Future.delayed(const Duration(seconds: 3),
                    () => _webViewController.reload());
          },
        ),
        if (_loading) const Center(child: CircularProgressIndicator()),
      ],
    );
  }
}
