//
//  NSMutableDictionary+SKProtection.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (SKProtection)

- (void)sk_removeObjectForKey:(id)aKey;

- (void)sk_setObject:(id)anObject forKey:(id <NSCopying>)aKey;

@end
