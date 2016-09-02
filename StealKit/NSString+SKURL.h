//
//  NSString+SKURL.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import Foundation;

@interface NSString (SKURL)

- (NSDictionary *)sk_URLQueryDictionary;

@end

@interface NSDictionary (SKURL)

- (NSString *)sk_URLQueryString;

@end
