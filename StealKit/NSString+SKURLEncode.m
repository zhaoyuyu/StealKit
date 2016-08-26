//
//  NSString+SKURLEncode.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKURLEncode.h"

@implementation NSString (SKURLEncode)

- (NSString *)sk_URLEncode
{
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_7_0 || __MAC_OS_X_VERSION_MIN_REQUIRED >= __MAC_10_9
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
#else
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                                 NULL,
                                                                                 (__bridge CFStringRef)str,
                                                                                 NULL,
                                                                                 (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                                 kCFStringEncodingUTF8));
#endif
}

- (NSString *)sk_URLDecode
{
    return [self stringByRemovingPercentEncoding];
}

@end
