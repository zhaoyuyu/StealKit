//
//  NSArray+SKProtection.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSArray+SKProtection.h"

@implementation NSArray (SKProtection)

- (id)sk_objectAtIndex:(NSUInteger)index
{
    if (index < self.count ) {
        return [self objectAtIndex:index];
    } else {
        return nil;
    }
}

- (NSArray *)sk_arrayByAddingObject:(id)anObject
{
    if (!anObject) {
        return self;
    }
    return [self arrayByAddingObject:anObject];
}

@end
