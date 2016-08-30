//
//  UIControl+SKBlockSupport.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/30.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIControl+SKBlockSupport.h"
#import <objc/runtime.h>

static const void *SKControlHandlersKey = &SKControlHandlersKey;

#pragma mark Private

@interface SKControlWrapper : NSObject <NSCopying>

- (id)initWithHandler:(void (^)(id sender))handler forControlEvents:(UIControlEvents)controlEvents;

@property (nonatomic) UIControlEvents controlEvents;
@property (nonatomic, copy) void (^handler)(id sender);

@end

@implementation SKControlWrapper

- (id)initWithHandler:(void (^)(id sender))handler forControlEvents:(UIControlEvents)controlEvents
{
    self = [super init];
    if (!self) return nil;
    
    self.handler = handler;
    self.controlEvents = controlEvents;
    
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    return [[SKControlWrapper alloc] initWithHandler:self.handler forControlEvents:self.controlEvents];
}

- (void)invoke:(id)sender
{
    self.handler(sender);
}

@end

@implementation UIControl (SKBlockSupport)

- (void)sk_addEventHandler:(void (^)(id sender))handler forControlEvents:(UIControlEvents)controlEvents
{
    NSParameterAssert(handler);
    
    NSMutableDictionary *events = objc_getAssociatedObject(self, SKControlHandlersKey);
    if (!events) {
        events = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, SKControlHandlersKey, events, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    NSNumber *key = @(controlEvents);
    NSMutableSet *handlers = events[key];
    if (!handlers) {
        handlers = [NSMutableSet set];
        events[key] = handlers;
    }
    
    SKControlWrapper *target = [[SKControlWrapper alloc] initWithHandler:handler forControlEvents:controlEvents];
    [handlers addObject:target];
    [self addTarget:target action:@selector(invoke:) forControlEvents:controlEvents];
}

- (void)sk_removeEventHandlersForControlEvents:(UIControlEvents)controlEvents
{
    NSMutableDictionary *events = objc_getAssociatedObject(self, SKControlHandlersKey);
    if (!events) {
        events = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, SKControlHandlersKey, events, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    NSNumber *key = @(controlEvents);
    NSSet *handlers = events[key];
    
    if (!handlers)
        return;
    
    [handlers enumerateObjectsUsingBlock:^(id sender, BOOL *stop) {
        [self removeTarget:sender action:NULL forControlEvents:controlEvents];
    }];
    
    [events removeObjectForKey:key];
}

- (BOOL)sk_hasEventHandlersForControlEvents:(UIControlEvents)controlEvents
{
    NSMutableDictionary *events = objc_getAssociatedObject(self, SKControlHandlersKey);
    if (!events) {
        events = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, SKControlHandlersKey, events, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    NSNumber *key = @(controlEvents);
    NSSet *handlers = events[key];
    
    if (!handlers)
        return NO;
    
    return !!handlers.count;
}

@end
