//
//  NSDate+SKAdditions.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/31.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSDate+SKAdditions.h"

@implementation NSDate (SKAdditions)

+ (instancetype)sk_dateWithTimeStamp:(NSTimeInterval)secs
{
   return [NSDate dateWithTimeIntervalSince1970:secs];
}

- (NSTimeInterval)sk_timeStamp
{
    return self.timeIntervalSince1970;
}

@end
