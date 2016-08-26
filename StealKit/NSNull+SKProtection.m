//
//  NSNull+SKProtection.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSNull+SKProtection.h"
#import <objc/runtime.h>
#import <Foundation/Foundation.h>

#ifndef SK_PROTECTION_ENABLED
#define SK_PROTECTION_ENABLED 1
#endif

@implementation NSNull (SKProtection)

#if SK_PROTECTION_ENABLED

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    NSMethodSignature *signature = [super methodSignatureForSelector:sel];
    if (!signature) {
        signature = [NSMethodSignature signatureWithObjCTypes:@encode(void)];
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
}

#endif

@end