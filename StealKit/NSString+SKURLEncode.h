//
//  NSString+SKURLEncode.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSString (SKURLEncode)

- (NSString *)sk_URLEncode;
- (NSString *)sk_URLDecode;

@end
