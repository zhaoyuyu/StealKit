//
//  NSString+SKJSONAdditions.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKJSONAdditions.h"

@implementation NSString (SKJSONAdditions)

- (id)sk_JSONObject
{
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    id jsonObj =[NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:&error];
    if (error) {
#if DEBUG
        NSLog(@"%@",[error description]);
#endif
        return nil;
    }
    
    return jsonObj;
}

@end

@implementation NSObject (SKJSONAdditions)

- (NSString *)sk_JSONString
{
    NSString *jsonString = nil;
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
        if (error) {
#if DEBUG
            NSLog(@"%@",[error description]);
#endif
            return nil;
        }
        jsonString =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
    return jsonString;
}

@end

