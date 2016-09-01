//
//  NSString+SKData.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKTransformatter.h"

@implementation NSString (SKTransformatter)

- (NSData *)sk_dataValue
{
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

@end

@implementation NSData (SKTransformatter)

- (NSString *)sk_stringValue
{
    return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

@end
