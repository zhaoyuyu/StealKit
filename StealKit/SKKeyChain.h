//
//  SKKeyChain.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/30.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface SKKeyChain : NSObject

+ (void)setValue:(id)value forKey:(NSString *)key;

+ (void)removeValueForKey:(NSString *)key;

+ (id)valueForKey:(NSString *)key;

+ (void)setValue:(id)value forKey:(NSString *)key forAccessGroup:(NSString *)group;

+ (void)removeValueForKey:(NSString *)key forAccessGroup:(NSString *)group;

+ (id)valueForKey:(NSString *)key forAccessGroup:(NSString *)group;

@end
