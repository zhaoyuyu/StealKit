//
//  SKJSON.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "SKJSONTransformatter.h"

@implementation NSString (SKJSONTransformatter)

- (id)sk_JSONValue
{
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *processError;
    id jsonObj =[NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:&processError];
    if (processError) {
        NSLog(@"%@",[processError description]);
        return nil;
    }
    return jsonObj;
}

@end

@implementation NSObject (SKJSONTransformatter)

- (NSString *)sk_JSONRepresentation
{
    NSString *jsonString = nil;
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *processError;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&processError];
        if (processError) {
            NSLog(@"%@",[processError description]);
            return nil;
        }
        jsonString =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
}

@end

