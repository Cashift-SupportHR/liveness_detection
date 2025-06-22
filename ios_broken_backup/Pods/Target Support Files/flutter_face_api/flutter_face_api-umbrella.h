#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FlutterFaceApiPlugin.h"
#import "RFSWConfig.h"
#import "RFSWJSONConstructor.h"
#import "RFSWMain.h"

FOUNDATION_EXPORT double flutter_face_apiVersionNumber;
FOUNDATION_EXPORT const unsigned char flutter_face_apiVersionString[];

