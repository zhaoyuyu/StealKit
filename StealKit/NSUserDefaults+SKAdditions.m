//
//  NSUserDefaults+SKAdditions.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSUserDefaults+SKAdditions.h"

@implementation NSUserDefaults (SKAdditions)

+ (id)sk_objectForKey:(NSString *)defaultName
{
    if (!defaultName) return nil;
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+ (void)sk_setObject:(id)value forKey:(NSString *)defaultName
{
    if (!defaultName || !value) return;
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)sk_removeObjectForKey:(NSString *)defaultName
{
    if (!defaultName) return;
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
