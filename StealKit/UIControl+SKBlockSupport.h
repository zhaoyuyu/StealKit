//
//  UIControl+SKBlockSupport.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/30.
//  Copyright © 2016年 StealKit. All rights reserved.
//  Includes code by zwaldowski. https://github.com/zwaldowski/BlocksKit.

@import UIKit;

@interface UIControl (SKBlockSupport)

- (void)sk_addEventHandler:(void (^)(id sender))handler forControlEvents:(UIControlEvents)controlEvents;

- (void)sk_removeEventHandlersForControlEvents:(UIControlEvents)controlEvents;

- (BOOL)sk_hasEventHandlersForControlEvents:(UIControlEvents)controlEvents;

@end
