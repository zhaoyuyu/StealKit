//
//  NSDate+SKAdditions.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/31.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSDate (SKAdditions)

+ (instancetype)sk_dateWithTimeStamp:(NSTimeInterval)secs;

- (NSTimeInterval)sk_timeStamp;

@end
