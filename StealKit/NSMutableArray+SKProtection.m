//
//  NSMutableArray+SKProtection.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSMutableArray+SKProtection.h"

@implementation NSMutableArray (SKProtection)

- (void)sk_addObject:(id)anObject {
    if (!anObject) {
        return;
    }
    [self addObject:anObject];
}

- (void)sk_insertObject:(id)anObject atIndex:(NSUInteger)index {
    if (index > [self count]) {
        return;
    }
    if (!anObject) {
        return;
    }
    [self insertObject:anObject atIndex:index];
}

- (void)sk_removeObjectAtIndex:(NSUInteger)index {
    if (index >= [self count]) {
        return;
    }
    
    return [self removeObjectAtIndex:index];
}

- (void)sk_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    if (index >= [self count]) {
        return;
    }
    if (!anObject) {
        return;
    }
    [self replaceObjectAtIndex:index withObject:anObject];
}

@end
