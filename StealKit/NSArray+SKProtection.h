//
//  NSArray+SKProtection.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SKProtection)

- (id)sk_objectAtIndex:(NSUInteger)index;

- (NSArray *)sk_arrayByAddingObject:(id)anObject;

@end
