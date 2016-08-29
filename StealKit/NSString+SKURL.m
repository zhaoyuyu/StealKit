//
//  NSString+SKURL.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKURL.h"
#import "NSString+SKURLEncode.h"

@implementation NSString (SKURL)

- (NSDictionary *)sk_URLQueryParameters
{
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    NSArray *parameters = [self componentsSeparatedByString:@"&"];
    for (NSString *parameter in parameters) {
        NSArray *contents = [parameter componentsSeparatedByString:@"="];
        if([contents count] == 2) {
            NSString *key = [contents objectAtIndex:0];
            NSString *value = [contents objectAtIndex:1];
            value = [value sk_URLDecode];
            if (key && value) {
                [result setObject:value forKey:key];
            }
        }
    }
    
    return result;
}

@end

@implementation NSDictionary (SKURL)

- (NSString *)sk_URLQueryString
{
    NSMutableString *result = [NSMutableString string];
    for (NSString *key in [self allKeys]) {
        if ([result length]) {
            [result appendString:@"&"];
        }
        NSString *value = [[self objectForKey:key] description];
        [result appendFormat:@"%@=%@", key, [value sk_URLEncode]];
    }
    
    return result;
}

@end