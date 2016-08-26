//
//  NSString+SKEncryption.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKEncryption.h"
#import "NSString+SKTransformatter.h"
#include <CommonCrypto/CommonCrypto.h>
#include <zlib.h>

@implementation NSString (SKEncryption)

- (NSString *)sk_md5Encypt
{
    NSData *data =  [self dataUsingEncoding:NSUTF8StringEncoding];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    return [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],result[12], result[13], result[14], result[15]
            ];
}

- (NSString *)sk_Base64Encode
{
    return [self.sk_data base64EncodedStringWithOptions:0];
}

- (NSString *)sk_Base64Decode
{
    return [[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters].sk_string;
}

@end
