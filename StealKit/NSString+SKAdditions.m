//
//  NSString+SKAdditions.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/1.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKAdditions.h"

@implementation NSString (SKAdditions)

- (BOOL)sk_containsString:(NSString *)aString
{
    if (!aString) return NO;
    return [self rangeOfString:aString].location != NSNotFound;
}

- (NSString *)sk_strim
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)sk_contactString:(NSString *)aString
{
    if (!aString) return self;
    return [self stringByAppendingString:aString];
}

- (NSInteger)sk_indexOfString:(NSString *)aString
{
    if (!aString) return NSNotFound;

    return [self rangeOfString:aString].location;
}

- (NSString *)sk_subStringFromIndex:(NSUInteger)from toIndex:(NSUInteger)to
{
    if (from > to) return nil;
    return [self substringWithRange:NSMakeRange(from, to - from + 1)];
}

- (NSString *)sk_replaceString:(NSString *)replaced withString:(NSString *)replacement;
{
    return [self stringByReplacingOccurrencesOfString:replaced withString:replacement];
}

@end
