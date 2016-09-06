//
//  SKWeakReferenceProxy.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/6.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "SKWeakReferenceProxy.h"

@implementation SKWeakReferenceProxy

- (instancetype)initWithTarget:(id)target
{
    _target = target;
    return self;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
    return _target;
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    void *null = NULL;
    [invocation setReturnValue:&null];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector
{
    return [NSObject instanceMethodSignatureForSelector:@selector(init)];
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
    return [_target respondsToSelector:aSelector];
}

@end
