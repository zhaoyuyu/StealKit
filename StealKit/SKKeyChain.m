//
//  SKKeyChain.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/30.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "SKKeyChain.h"

@implementation SKKeyChain

+ (NSMutableDictionary *)getKeychainQuery:(NSString *)key forAccessGroup:(NSString *)group
{
    NSMutableDictionary *keychainQuery = [NSMutableDictionary dictionaryWithDictionary:
                                          @{(__bridge id)kSecClass            : (__bridge id)kSecClassGenericPassword,
                                            (__bridge id)kSecAttrService      : key,
                                            (__bridge id)kSecAttrAccount      : key,
                                            (__bridge id)kSecAttrAccessible   : (__bridge id)kSecAttrAccessibleAfterFirstUnlock
                                            }];
    if (group) {
        [keychainQuery setObject:group forKey:(__bridge id)kSecAttrAccessGroup];
    }
    return keychainQuery;
}

+ (void)setValue:(id)value forKey:(NSString*)key forAccessGroup:(NSString *)group
{
    NSMutableDictionary *keychainQuery = [self getKeychainQuery:key forAccessGroup:group];
    [self removeValueForKey:key forAccessGroup:group];
    [keychainQuery setObject:[NSKeyedArchiver archivedDataWithRootObject:value] forKey:(__bridge id)kSecValueData];
    SecItemAdd((__bridge CFDictionaryRef)keychainQuery, NULL);
}

+ (void)setValue:(id)value forKey:(NSString*)key
{
    return [self setValue:value forKey:key forAccessGroup:nil];
}

+ (void)removeValueForKey:(NSString *)key forAccessGroup:(NSString *)group
{
    NSMutableDictionary *keychainQuery = [self getKeychainQuery:key forAccessGroup:group];
    SecItemDelete((__bridge CFDictionaryRef)keychainQuery);
}

+ (void)removeValueForKey:(NSString *)key
{
    return [self removeValueForKey:key forAccessGroup:nil];
}

+ (id)valueForKey:(NSString*)key forAccessGroup:(NSString *)group
{
    id value = nil;
    NSMutableDictionary *keychainQuery = [self getKeychainQuery:key forAccessGroup:group];
    CFDataRef keyData = NULL;
    [keychainQuery setObject:(__bridge id)kCFBooleanTrue forKey:(__bridge id)kSecReturnData];
    [keychainQuery setObject:(__bridge id)kSecMatchLimitOne forKey:(__bridge id)kSecMatchLimit];
    if (SecItemCopyMatching((__bridge CFDictionaryRef)keychainQuery, (CFTypeRef *)&keyData) == noErr) {
        @try {
            value = [NSKeyedUnarchiver unarchiveObjectWithData:(__bridge NSData *)keyData];
        }
        @catch (NSException *e) {
            NSLog(@"Failed for key: %@ exception: %@", key, e);
            value = nil;
        }
        @finally {}
    }
    if (keyData) {
        CFRelease(keyData);
    }
    
    return value;
}

+ (id)valueForKey:(NSString *)key
{
    return [self valueForKey:key forAccessGroup:nil];
}

@end
