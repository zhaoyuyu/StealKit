//
//  UIGestureRecognizer+SKBlockSupport.h
//  StealKit
//  Includes code by zwaldowski. https://github.com/zwaldowski/BlocksKit.

@import UIKit;

@interface UIGestureRecognizer (SKBlockSupport)

+ (id)sk_recognizerWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block delay:(NSTimeInterval)delay;

- (id)sk_initWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block delay:(NSTimeInterval)delay NS_REPLACES_RECEIVER;

+ (id)sk_recognizerWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block;

- (id)sk_initWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block NS_REPLACES_RECEIVER;

@property (nonatomic, copy, setter = sk_setHandler:) void (^sk_handler)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location);

@property (nonatomic, setter = sk_setHandlerDelay:) NSTimeInterval sk_handlerDelay;

- (void)sk_cancel;

@end
