//
//  NSUserDefaults+SKAdditions.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSUserDefaults (SKAdditions)

+ (id)sk_objectForKey:(NSString *)defaultName;

+ (void)sk_setObject:(id)value forKey:(NSString *)defaultName;

+ (void)sk_removeObjectForKey:(NSString *)defaultName;

@end
