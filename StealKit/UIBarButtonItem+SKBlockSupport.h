//
//  UIBarButtonItem+SKBlockSupport.h
//  StealKit
//  Includes code by zwaldowski. https://github.com/zwaldowski/BlocksKit.

@import UIKit;

@interface UIBarButtonItem (SKBlockSupport)

- (id)sk_initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem handler:(void (^)(id sender))action NS_REPLACES_RECEIVER;

- (id)sk_initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style handler:(void (^)(id sender))action NS_REPLACES_RECEIVER;

- (id)sk_initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style handler:(void (^)(id sender))action NS_REPLACES_RECEIVER NS_AVAILABLE_IOS(5_0);

- (id)sk_initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style handler:(void (^)(id sender))action NS_REPLACES_RECEIVER;

@end
