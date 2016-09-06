//
//  NSNotificationCenter+SKAdditions.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSNotificationCenter+SKAdditions.h"

@implementation NSNotificationCenter (SKAdditions)

+ (void)sk_addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:aName object:anObject];
}

+ (void)sk_postNotificationName:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject];
}

+ (void)sk_postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo
{
    [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject userInfo:aUserInfo];
}

+ (void)sk_postNotificationNameOnMainThread:(NSString *)aName object:(id)anObject
{
    if ([NSThread isMainThread]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject];
    } else {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject];
        });
    }
}

+ (void)sk_postNotificationNameOnMainThread:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo
{
    if ([NSThread isMainThread]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject userInfo:aUserInfo];
    } else {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject userInfo:aUserInfo];
        });
    }
}

+ (void)sk_removeObserver:(id)observer
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer];
}

+ (void)sk_removeObserver:(id)observer name:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:aName object:anObject];
}

+ (id <NSObject>)sk_addObserverForName:(NSString *)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void (^)(NSNotification *note))block
{
    return [[NSNotificationCenter defaultCenter] addObserverForName:name object:obj queue:queue usingBlock:block];
}

@end
