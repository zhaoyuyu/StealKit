//
//  SKTimer.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/6.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "SKTimer.h"
#import "SKWeakReferenceProxy.h"

@implementation SKTimer

+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
{
    SKWeakReferenceProxy *weakTarget = [[SKWeakReferenceProxy alloc] initWithTarget:aTarget];
    return [super timerWithTimeInterval:ti target:weakTarget selector:aSelector userInfo:userInfo repeats:yesOrNo];
}

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
{
    SKWeakReferenceProxy *weakTarget = [[SKWeakReferenceProxy alloc] initWithTarget:aTarget];
    return [super scheduledTimerWithTimeInterval:ti target:weakTarget selector:aSelector userInfo:userInfo repeats:yesOrNo];
}

@end
