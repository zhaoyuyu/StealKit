//
//  UIDevice+SKUUID.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIDevice+SKUUID.h"
#import "NSString+SKUUID.h"
#import "SKKeyChain.h"

NSString * const SKUUIDStringInKeyChainKey = @"SKUUIDStringInKeyChainKey";

@implementation UIDevice (SKUUID)

+ (NSString *)sk_UUIDString
{
    NSString *UUIDString = [SKKeyChain valueForKey:SKUUIDStringInKeyChainKey];
    
    if (!UUIDString.length) {
        UUIDString = [NSString sk_UUIDString];
        [SKKeyChain setValue:UUIDString forKey:SKUUIDStringInKeyChainKey];
    }
    
    return UUIDString;
}

@end
