//
//  NSNotificationCenter+SKAdditions.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSNotificationCenter (SKAdditions)

+ (void)sk_addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject;

+ (void)sk_postNotificationName:(NSString *)aName object:(id)anObject;
+ (void)sk_postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;

+ (void)sk_postNotificationNameOnMainThread:(NSString *)aName object:(id)anObject;
+ (void)sk_postNotificationNameOnMainThread:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;

+ (void)sk_removeObserver:(id)observer;
+ (void)sk_removeObserver:(id)observer name:(NSString *)aName object:(id)anObject;

+ (id <NSObject>)sk_addObserverForName:(NSString *)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void (^)(NSNotification *note))block;

@end
