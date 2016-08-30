//
//  NSTimer+SKBlockSupport.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/30.
//  Copyright © 2016年 StealKit. All rights reserved.
//  Includes code by zwaldowski. https://github.com/zwaldowski/BlocksKit.

#import <Foundation/Foundation.h>

@interface NSTimer (SKBlockSupport)

+ (NSTimer *)bk_scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)(NSTimer *timer))inBlock repeats:(BOOL)inRepeats;

+ (NSTimer *)bk_timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)(NSTimer *timer))inBlock repeats:(BOOL)inRepeats;

@end
