//
//  NSMutableArray+SKProtection.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSMutableArray (SKProtection)

- (void)sk_addObject:(id)anObject;

- (void)sk_insertObject:(id)anObject atIndex:(NSUInteger)index;

- (void)sk_removeObjectAtIndex:(NSUInteger)index;

- (void)sk_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

@end
