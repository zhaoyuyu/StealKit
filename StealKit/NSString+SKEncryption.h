//
//  NSString+SKEncryption.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSString (SKEncryption)

- (NSString *)sk_MD5Encypt;

- (NSString *)sk_BASE64Encode;

- (NSString *)sk_BASE64Decode;

@end
