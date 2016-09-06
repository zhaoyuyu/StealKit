//
//  NSTimer+SKBlockSupport.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/30.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSTimer+SKBlockSupport.h"
#import "SKWeakReferenceProxy.h"

@implementation NSTimer (SKBlockSupport)

+ (id)bk_scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)(NSTimer *timer))block repeats:(BOOL)inRepeats
{
    NSParameterAssert(block != nil);
    SKWeakReferenceProxy *weakSelf = [[SKWeakReferenceProxy alloc] initWithTarget:self];
    return [self scheduledTimerWithTimeInterval:inTimeInterval target:weakSelf selector:@selector(bk_executeBlockFromTimer:) userInfo:[block copy] repeats:inRepeats];
}

+ (id)bk_timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)(NSTimer *timer))block repeats:(BOOL)inRepeats
{
    NSParameterAssert(block != nil);
    SKWeakReferenceProxy *weakSelf = [[SKWeakReferenceProxy alloc] initWithTarget:self];
    return [self timerWithTimeInterval:inTimeInterval target:weakSelf selector:@selector(bk_executeBlockFromTimer:) userInfo:[block copy] repeats:inRepeats];
}

+ (void)bk_executeBlockFromTimer:(NSTimer *)aTimer
{
    void (^block)(NSTimer *) = [aTimer userInfo];
    if (block) block(aTimer);
}

@end
