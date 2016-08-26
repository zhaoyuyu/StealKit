//
//  NSString+SKEncryption.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SKEncryption)

- (NSString *)sk_md5Encypt;

- (NSString *)sk_Base64Encode;

- (NSString *)sk_Base64Decode;

@end
